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
          opt.on("--source SOURCE ", 'Where to take data from [disk|api]') { |source| options[:source] = source }
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
        @data_source ||= (
          if @options[:source].nil? || @options[:source] == "disk"
            DiskDataSource.new(File.join(StortingImporter.root, 'folketingparser/rawdata/data.stortinget.no'))
          elsif @options[:source] == "api"
            ApiDataSource.new("http://data.stortinget.no/")
          else
            raise ArgumentError, "invalid source: #{@options[:source].inspect}"
          end
        )
      end

      def importer
        @importer ||= (
          if @options[:app_root]
            ScriptImporter.new(@options[:app_root])
          elsif @options[:app_url]
            HttpImporter.new(@options[:app_url])
          else
            raise ArgumentError, "neither app-root or app-url given, can't import"
          end
        )
      end

      def import(what)
        case what
        when :dld
          import_dld
        when :promises
          import_promises
        when :all
          import_all
        when :votes
          import_docs VoteConverter.new(data_source, issue_converter.external_ids).xml
        else
          import_docs Converter.for(what).new(data_source).xml
        end
      end

      def issue_converter
        @issue_converter ||= IssueConverter.new(data_source)
      end

      def party_converter
        @party_converter ||= PartyConverter.new(data_source)
      end

      def committee_converter
        @committee_converter ||= CommitteeConverter.new(data_source)
      end

      def district_converter
        @district_converter ||= DistrictConverter.new(data_source)
      end

      def representative_converter
        @representative_converter ||= RepresentativeConverter.new(data_source)
      end

      def topic_converter
        @topic_converter ||= TopicConverter.new(data_source)
      end

      def vote_converter
        @vote_converter ||= VoteConverter.new(data_source, issue_converter.external_ids)
      end

      def import_all
        ignore = Array(@options[:ignore])

        import_docs party_converter.xml unless ignore.include?(:parties)
        import_docs committee_converter.xml unless ignore.include?(:committees)
        import_docs district_converter.xml unless ignore.include?(:districts)
        import_docs representative_converter.xml unless ignore.include?(:representatives)
        import_docs topic_converter.xml unless ignore.include?(:topics)
        import_docs issue_converter.xml unless ignore.include?(:issues)
        import_docs vote_converter.xml unless ignore.include?(:votes)

        import_dld unless ignore.include?(:dld)
        import_promises unless ignore.include?(:promises)
      end

      def import_dld
        if File.exist?(File.join(StortingImporter.root, 'folketingparser'))
          print_or_import File.read(File.join(StortingImporter.root, 'data/dld-issues.xml'))
          print_or_import File.read(dld_vote_path)
        else
          $stderr.puts "folketingparser not found, skipping DLD votes and issues (run `git submodule update --init` if you need this)"
        end
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
          print_or_import doc.to_s
        end
      end

      def print_or_import(xml)
        if @options[:only_print]
          puts xml
        else
          importer.import xml
        end
      end

    end
  end
end
