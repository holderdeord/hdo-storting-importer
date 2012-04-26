module Hdo
  module StortingImporter
    class CLI
      def initialize(args)
        @cmd = parse(args)
      end

      def execute
        if @cmd && @cmd != "all"
          importer.import @cmd.to_sym
        else
          importer.import_all
        end
      end

      private

      def importer
        @importer ||= Importer.new(data_source)
      end

      def data_source
        @data_source ||= DiskDataSource.new(File.join(StortingImporter.root, 'folketingparser/rawdata/data.stortinget.no'))
      end

      def parse(args)
        OptionParser.new do |opt|
          opt.banner = "Usage: #{$0} <import-type> [options]"

          opt.on("--help", "You're looking at it.") { puts opt; exit; }
          opt.on("--only-print", "Don't run import, only print generated XML.") { importer.only_print = true }
          opt.on("--except WHAT", 'Ignore this comma separated list of entities from import.') { |s| importer.ignore = s.split(",").map(&:strip).map(&:to_sym) }
          opt.on("--app APP_ROOT", 'Path to clone of git://github.com/holderdeord/hdo-site.git') { |path| importer.app_root = path }
          opt.on("--socks PROXY", 'host:port for SOCKS proxy') do |proxy|
            require 'socksify'
            host, port = proxy.split ":"
            TCPSocket.socks_server = host
            TCPSocket.socks_port = Integer(port)
          end
        end.parse!(args)

        args.shift or raise "no command given"
      end
    end
  end
end
