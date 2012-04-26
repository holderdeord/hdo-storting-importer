module Hdo
  module StortingImporter
    class CLI
      def initialize(args)
        @cmd, @options = parse(args)
      end

      def execute
        import @cmd.to_sym
      end

      private

      def parse(args)
        options = {}
        
        OptionParser.new do |opt|
          opt.banner = "Usage: #{$0} <import-type> [options]"

          opt.on("--help", "You're looking at it.") { puts opt; exit; }
          opt.on("--only-print", "Don't run import, only print generated XML.") { options[:only_print] = true }
          opt.on("--except WHAT", 'Ignore this comma separated list of entities from import.') { |s| options[:ignore] = s.split(",").map(&:strip).map(&:to_sym) }
          opt.on("--app-root APP_ROOT", 'Path to clone of git://github.com/holderdeord/hdo-site.git') { |path| options[:app_root] = path }
          opt.on("--app-url APP_URL", 'URL to hdo-site') { |url| options[:app_url] = url }
          opt.on("--socks PROXY", 'host:port for SOCKS proxy') do |proxy|
            require 'socksify'
            host, port = proxy.split ":"
            TCPSocket.socks_server = host
            TCPSocket.socks_port = Integer(port)
          end
        end.parse!(args)
        
        cmd = args.shift or raise "no command given"
        
        [cmd, options]
      end
      
      def data_source
        @data_source ||= DiskDataSource.new(File.join(StortingImporter.root, 'folketingparser/rawdata/data.stortinget.no'))
      end
      
      def importer
        @importer ||= (
          if @options[:app_root]
            ScriptImporter.new(@options[:app_root])
          elsif @options[:app_url]
            HttpImporter.new(@options[:app_url])
          else
            raise "neither app-root or app-url given, can't import"
          end
        )
      end

      def import(what)
        case what
        when :votes
          import_votes
        when :dld
          import_dld
        when :promises
          import_promises
        when :all
          import_all
        else
          import_docs data_source.__send__(what)
        end
      end

      def import_all
        ignore = Array(@options[:ignore])
        
        import_docs data_source.parties unless ignore.include?(:parties)
        import_docs data_source.committees unless ignore.include?(:committees)
        import_docs data_source.districts unless ignore.include?(:districts)
        import_docs data_source.representatives unless ignore.include?(:representatives)
        import_docs data_source.topics unless ignore.include?(:topics)
        import_docs data_source.issues unless ignore.include?(:issues)

        # for votes, the output XML is not mapped 1:1 with the types in the input data,
        # so we handle them as a special case
        import_votes unless ignore.include?(:votes)
        import_dld unless ignore.include?(:dld)
        import_promises unless ignore.include?(:promises)
      end

      def import_dld
        run_import File.join(StortingImporter.root, 'data/dld-issues.xml')
        run_import File.join(StortingImporter.root, 'folketingparser/data/votering-2011-04-04-dld-hdo.xml')
      end

      def import_promises
        csvs = Dir[File.join(StortingImporter.root, 'data/promises-*.csv')].sort_by { |e| File.basename(e) }
        csvs.each do |path|
          print_or_import PromiseConverter.new(path).xml
        end
      end

      def import_docs(docs)
        docs = [docs] unless docs.kind_of?(Array)

        docs.each do |doc|
          print_or_import Converter.for(doc).xml
        end
      end

      def print_or_import(xml)
        if @options[:only_print]
          puts xml
        else
          importer.import xml
        end
      end

      def import_votes
        vote_docs = data_source.votes

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
        # TODO: move to VoteConverter
        vote_data = []

        docs.each do |doc|
          next unless doc.css("sak_votering").any? # ignore issues with no votes

          issue_id = doc.css("sak_id").first.text
          vote_nodes = doc.css("sak_votering")

          vote_nodes.each do |vote_node|
            vote_id = vote_node.css("votering_id").text

            propositions_doc = data_source.propositions_for(vote_id)
            propositions_node = propositions_doc.css("voteringsforslag_liste").first
            propositions_node or raise "no propositions in #{propositions_path}"

            if vote_node.css("personlig_votering").text == "true"
              result_doc = data_source.vote_results_for(vote_id)
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
