module Hdo
  module StortingImporter

    class Importer
      attr_accessor :only_print, :ignore, :app_root

      def initialize(data_source)
        @data_source = data_source
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
          import_docs @data_source.__send__(what)
        end
      end

      def import_all
        import_docs @data_source.parties unless @ignore.include?(:parties)
        import_docs @data_source.committees unless @ignore.include?(:committees)
        import_docs @data_source.districts unless @ignore.include?(:districts)
        import_docs @data_source.representatives unless @ignore.include?(:representatives)
        import_docs @data_source.topics unless @ignore.include?(:topics)
        import_docs @data_source.issues unless @ignore.include?(:issues)

        # for votes, the output XML is not mapped 1:1 with the types in the input data,
        # so we handle them as a special case
        import_votes unless @ignore.include?(:votes)
        import_dld unless @ignore.include?(:dld)
        import_promises unless @ignore.include?(:promises)
      end

      def import_dld
        run_import File.join(StortingImporter.root, 'data/dld-issues.xml')
        run_import File.join(StortingImporter.root, 'folketingparser/data/votering-2011-04-04-dld-hdo.xml')
      end

      def import_promises
        csvs = Dir[File.join(StortingImporter.root, 'data/promises-*.csv')].sort_by { |e| File.basename(e) }
        csvs.each do |path|
          print_or_import PromiseConverter.new(path).to_xml
        end
      end

      def import_docs(docs)
        docs = [docs] unless docs.kind_of?(Array)

        docs.each do |doc|
          print_or_import convert(doc)
        end
      end

      def convert(doc)
        case doc.name
        when 'partier_oversikt'
          PartyConverter.new(doc).xml
        when 'dagensrepresentanter_oversikt', 'representanter_oversikt'
          RepresentativeConverter.new(doc).xml
        when 'komiteer_oversikt'
          CommitteeConverter.new(doc).xml
        when 'emne_oversikt'
          TopicConverter.new(doc).xml
        when 'fylker_oversikt'
          DistrictConverter.new(doc).xml
        when 'saker_oversikt'
          IssueConverter.new(doc).xml
        else
          raise NotImplementedError, doc.name
        end
      end

      def print_or_import(xml)
        if only_print
          puts xml
        else
          Tempfile.open("storting2hdo") do |f|
            f << xml
            f.close

            run_import f.path
          end
        end
      end

      def run_import(path)
        Dir.chdir(app_root) { system "script/import", path }
      end

      def app_root
        @app_root or raise "must point --app at clone of git://github.com/holderdeord/hdo-site.git"
      end

      def import_votes
        vote_docs = @data_source.votes

        if ENV['VOTE_COUNT'] # temporarily for testing
          vote_docs = vote_docs.first(ENV['VOTE_COUNT'].to_i)
        end

        vote_docs.each_slice(5) do |docs|
          xml, vote_count = build_votes_xml(docs)

          if vote_count > 0 # no need to invoke this if we're passing empty XML
            print_or_import(xml)
          end
        end
      end

      def build_votes_xml(docs)
        vote_data = []

        docs.each do |doc|
          next unless doc.css("sak_votering").any? # ignore issues with no votes

          issue_id = doc.css("sak_id").first.text
          vote_nodes = doc.css("sak_votering")

          vote_nodes.each do |vote_node|
            vote_id = vote_node.css("votering_id").text

            propositions_doc = @data_source.propositions_for(vote_id)
            propositions_node = propositions_doc.css("voteringsforslag_liste").first
            propositions_node or raise "no propositions in #{propositions_path}"

            if vote_node.css("personlig_votering").text == "true"
              result_doc = @data_source.vote_results_for(vote_id)
              result_node = result_doc.css("voteringsresultat_liste").first
              result_node or raise "no vote result in #{vote_result_path.inspect}"
            else
              result_node = nil
            end

            vote_data << [issue_id, vote_id, vote_node, result_node, propositions_node]
          end
        end

        [VoteConverter.new(vote_data).xml, vote_data.size]
      end

    end
  end
end
