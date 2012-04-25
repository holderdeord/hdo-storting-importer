module Hdo
  module StortingImporter

    class Importer
      attr_accessor :only_print, :ignore, :app_root

      FILES = {
        :parties         => File.join(StortingImporter.root, "folketingparser/rawdata/data.stortinget.no/eksport/partier/index.html?sesjonid=2011-2012"),
        :committees      => File.join(StortingImporter.root, "folketingparser/rawdata/data.stortinget.no/eksport/komiteer/index.html?SesjonId=2011-2012"),
        :districts       => File.join(StortingImporter.root, "folketingparser/rawdata/data.stortinget.no/eksport/fylker/index.html"),
        :topics          => File.join(StortingImporter.root, "folketingparser/rawdata/data.stortinget.no/eksport/emner/index.html"),
        :issues          => File.join(StortingImporter.root, "folketingparser/rawdata/data.stortinget.no/eksport/saker/index.html?sesjonid=2011-2012"),
        :representatives => [
          File.join(StortingImporter.root, "folketingparser/rawdata/data.stortinget.no/eksport/representanter/index.html?StortingsPeriodeId=2009-2013"),
          File.join(StortingImporter.root, "folketingparser/rawdata/data.stortinget.no/eksport/dagensrepresentanter/index.html")
        ]
      }

      CUSTOM_COMMANDS = %w[votes dld promises]

      def initialize
        @ignore = []
      end

      def import(what)
        case what
        when :votes
          import_votes
        when :dld
          import_dld
        when :promises
          import_promises
        else
          import_files FILES.fetch(what)
        end
      end

      def import_all
        import_files FILES.fetch(:parties) unless @ignore.include?(:parties)
        import_files FILES.fetch(:committees) unless @ignore.include?(:committees)
        import_files FILES.fetch(:districts) unless @ignore.include?(:districts)
        import_files FILES.fetch(:representatives) unless @ignore.include?(:representatives)
        import_files FILES.fetch(:topics) unless @ignore.include?(:topics)
        import_files FILES.fetch(:issues) unless @ignore.include?(:issues)

        # for votes, the output XML is not mapped 1:1 with the types in the input data,
        # so we handle them as a special case
        import_votes unless @ignore.include?(:votes)
        import_dld unless @ignore.include?(:dld)
        import_promises unless @ignore.include?(:promises)
      end

      def with_tmp_file(str)
        Tempfile.open("storting2hdo") do |f|
          f << str

          yield f
        end
      end

      def import_dld
        run_import File.join(StortingImporter.root, 'data/dld-issues.xml')
        run_import File.join(StortingImporter.root, 'folketingparser/data/votering-2011-04-04-dld-hdo.xml')
      end

      def import_promises
        csvs = Dir[File.join(StortingImporter.root, 'data/promises-*.csv')].sort_by { |e| File.basename(e) }
        csvs.each do |path|
          with_tmp_file(PromiseConverter.new(path).to_xml) { |f| print_or_import f }
        end
      end

      def import_files(paths)
        Array(paths).each do |path|
          with_tmp_file(Converter.from_file(path).to_xml) { |f| print_or_import f }
        end
      end

      def print_or_import(f)
        if only_print
          f.rewind
          puts f.read
        else
          f.close
          run_import f.path
        end
      end

      def run_import(path)
        Dir.chdir(app_root) { system "script/import", path }
      end

      def app_root
        @app_root or raise "must point --app at clone of git://github.com/holderdeord/hdo-site.git"
      end

      def import_votes
        issue_paths = Dir[File.join(StortingImporter.root, "folketingparser/rawdata/data.stortinget.no/eksport/voteringer/index.html*")].sort

        if ENV['VOTE_COUNT'] # temporarily for testing
          issue_paths = issue_paths.first(ENV['VOTE_COUNT'].to_i)
        end

        issue_paths.each_slice(5) do |paths|
          xml, vote_count = build_votes_xml(paths)

          if vote_count > 0 # no need to invoke this if we're passing empty XML
            with_tmp_file(xml) { |f| print_or_import(f) }
          end
        end
      end

      def build_votes_xml(files)
        vote_count = 0

        xml = Converter.builder
        xml.votes do |votes|
          files.each do |path|
            doc = Nokogiri::XML.parse(open(path).read)
            doc.remove_namespaces!

            next unless doc.css("sak_votering").any? # ignore issues with no votes

            issue_id = doc.css("sak_id").first.text
            vote_nodes = doc.css("sak_votering")

            vote_nodes.each do |vote_node|
              vote_id = vote_node.css("votering_id").text

              propositions_path = File.join(StortingImporter.root, "folketingparser/rawdata/data.stortinget.no/eksport/voteringsforslag/index.html?voteringid=#{vote_id}")
              unless File.exist?(propositions_path)
                raise "propositions not found at #{propositions_path}"
              end

              propositions_doc = Nokogiri::XML.parse(open(propositions_path).read)
              propositions_doc.remove_namespaces!

              propositions_node = propositions_doc.css("voteringsforslag_liste").first
              propositions_node or raise "no propositions in #{propositions_path}"

              if vote_node.css("personlig_votering").text == "true"
                vote_result_path = File.join(StortingImporter.root, "folketingparser/rawdata/data.stortinget.no/eksport/voteringsresultat/index.html?voteringid=#{vote_id}")
                unless File.exist?(vote_result_path)
                  STDERR.puts "vote result file not found for issue #{issue_id} at #{vote_result_path.inspect}"
                  next
                end

                result_doc = Nokogiri::XML.parse(open(vote_result_path).read)
                result_doc.remove_namespaces!

                result_node = result_doc.css("voteringsresultat_liste").first
                result_node or raise "no vote result in #{vote_result_path.inspect}"
              else
                result_node = nil
              end

              vote_count += 1
              build_vote votes, issue_id, vote_id, vote_node, result_node, propositions_node
            end
          end
        end

        [xml.target!, vote_count]
      end

      def build_vote(builder, issue_id, vote_id, vote_node, result_node, propositions_node)
        builder.vote do |vote|
          vote.externalId vote_id
          vote.externalIssueId issue_id

          forc     = Integer(vote_node.css("antall_for").text)
          againstc = Integer(vote_node.css("antall_mot").text)
          absentc = Integer(vote_node.css("antall_ikke_tilstede").text)

          # settes til -1 ved personlig_votering=false
          forc = 0 if forc < 0
          againstc = 0 if againstc < 0
          absentc = 0 if absentc < 0

          vote.counts do |counts|
            counts.for forc
            counts.against againstc
            counts.absent absentc
          end

          vote.enacted vote_node.css("vedtatt").text == "true"
          vote.subject vote_node.css("votering_tema").text
          vote.method vote_node.css("votering_metode").text
          vote.resultType vote_node.css("votering_resultat_type").text
          vote.time vote_node.css("votering_tid").text

          if result_node # personlig votering
            add_representative_votes(vote, result_node)
          end

          vote.propositions do |propositions|
            propositions_node.css("voteringsforslag").each do |xprop|
              propositions.proposition do |proposition|
                proposition.externalId xprop.css("forslag_id").first.text
                proposition.description xprop.css("forslag_betegnelse").first.text

                rep_node = xprop.css("forslag_levert_av_representant").first

                if rep_node && rep_node['nil'] != 'true'
                  proposition.deliveredBy { |delivered_by| RepresentativeBuilder.new(delivered_by, rep_node).build }
                end

                proposition.onBehalfOf xprop.css("forslag_paa_vegne_av_tekst").first.text
                proposition.body xprop.css("forslag_tekst").first.text.gsub("<\\p>", "")
              end
            end
          end
        end
      end

      def add_representative_votes(vote, result_node)
        vote.representatives { |reps|
          result_node.css("representant_voteringsresultat").each do |xrep|
            RepresentativeBuilder.new(reps, xrep.css("representant").first).build do |rep|

              vote_result = xrep.css("votering").text
              case vote_result
              when 'for'
                rep.voteResult 'for'
              when 'mot'
                rep.voteResult 'against'
              when 'ikke_tilstede'
                rep.voteResult 'absent'
              else
                raise "unexpected vote: #{vote_result.inspect}"
              end
            end
          end
        }
      end
    end

  end
end