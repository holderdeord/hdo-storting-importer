module Hdo
  module StortingImporter
    class CLI
      def initialize(args)
        @log = Logger.new(STDERR)
        @cmd, @options = parse(args)
      end

      def execute
        import @cmd.to_sym
      end

      private

      def parse(args)
        options = {:source => (has_submodule? ? 'disk' : 'api')}

        parser = OptionParser.new do |opt|
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
        end

        parser.parse!(args)

        cmd = args.shift

        unless cmd
          puts(parser)
          exit 1
        end

        [cmd, options]
      end

      def data_source
        @data_source ||= (
          ds = if @options[:source] == "disk"
                 DiskDataSource.new(File.join(StortingImporter.root, 'folketingparser/rawdata/data.stortinget.no'))
               elsif @options[:source] == "api"
                 ApiDataSource.new("http://data.stortinget.no/")
               else
                 raise ArgumentError, "invalid source: #{@options[:source].inspect}"
               end

          ParsingDataSource.new(ds)
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
        else
          import_docs converter.xml_for(what.to_sym)
        end
      end

      def import_all
        ignore = Array(@options[:ignore])

        import_docs converter.xml_for(:parties) unless ignore.include?(:parties)
        import_docs converter.xml_for(:committees) unless ignore.include?(:committees)
        import_docs converter.xml_for(:districts) unless ignore.include?(:districts)
        import_docs converter.xml_for(:representatives) unless ignore.include?(:representatives)
        import_docs converter.xml_for(:categories) unless ignore.include?(:categories)
        import_docs converter.xml_for(:issues) unless ignore.include?(:issues)
        import_docs converter.xml_for(:votes) unless ignore.include?(:votes)

        import_dld unless ignore.include?(:dld)
        import_promises unless ignore.include?(:promises)
      end

      def converter
        @converter ||= Converters::Converter.new(data_source)
      end

      def import_dld
        if has_submodule?
          print_or_import File.read(File.join(StortingImporter.root, 'data/dld-issues.xml'))
          print_or_import File.read(File.join(StortingImporter.root, 'folketingparser/data/votering-2011-04-04-dld-hdo.xml'))
        else
          $stderr.puts "folketingparser not found, skipping DLD votes and issues (run `git submodule update --init` if you need this)"
        end
      end

      def import_promises
        csvs = Dir[File.join(StortingImporter.root, 'data/promises-*.csv')].sort_by { |e| File.basename(e) }
        csvs.each do |path|
          print_or_import Converters::PromiseConverter.new(path).xml
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

      def has_submodule?
        File.exist?(File.join(StortingImporter.root, 'folketingparser/data'))
      end

    end
  end
end
