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
        vote_data = []

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

            vote_data << [issue_id, vote_id, vote_node, result_node, propositions_node]
          end
        end

        [VoteConverter.new(vote_data).target!, vote_data.size]
      end

    end
  end
end
