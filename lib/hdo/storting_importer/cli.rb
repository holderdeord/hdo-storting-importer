module Hdo
  module StortingImporter
    class CLI
      def initialize(args)
        @type, @files, @options = parse(args)
      end

      def execute
        case @type
        when :dld_issues
          puts read_dld_issues
        when :dld_votes
          puts read_dld_votes
        when :promises
          puts read_promises
        else
          puts read_type(@type, class_for_type(@type))
        end
      rescue Errno::EPIPE
        # ignored
      end

      private

      TYPE_TO_CLASS = {
        :categories        => Category,
        :parliament_issues => ParliamentIssue,
        :districts         => District,
        :committees        => Committee,
        :parties           => Party,
        :representatives   => Representative,
        :votes             => Vote
      }

      def class_for_type(type)
        TYPE_TO_CLASS[type] or raise ArgumentError, "unknown type: #{type.inspect}"
      end

      def read_type(plural, klass)
        objs = @files.map do |e|
          doc = Nokogiri::XML.parse(open(e).read)
          doc.remove_namespaces!

          klass.from_storting_doc(doc)
        end.flatten

        Util.json_pretty objs
      end

      def parse(args)
        options = {}

        parser = OptionParser.new do |opt|
          types = TYPE_TO_CLASS.keys + [:dld_issues, :dld_votes, :promises, :any]
          opt.banner = "Usage: #{$0} <#{types.join '|'}> <file(s)>"
          opt.on("--help", "You're looking at it.") { puts opt; exit; }
        end

        parser.parse!(args)

        type, files = args

        if type.nil?
          puts(parser)
          exit 1
        end

        [type.to_sym, Array(files), options]
      end

      def read_dld_issues
        Util.json_pretty Issue.from_json(StortingImporter.root.join('data/dld-issues.json').read)
      end

      def read_dld_votes
        Util.json_pretty Vote.from_json StortingImporter.root.join('data/dld-votes.json').read
      end

      def read_promises
        file = @files.first or raise "no spreadsheet given"

        Util.json_pretty Promise.from_xlsx(file)
      end

    end
  end
end
