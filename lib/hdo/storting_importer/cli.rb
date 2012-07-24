module Hdo
  module StortingImporter
    class CLI
      def initialize(args)
        @log = Logger.new(STDERR)
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
        :categories      => Category,
        :issues          => Issue,
        :districts       => District,
        :committees      => Committee,
        :parties         => Party,
        :representatives => Representative,
        :votes           => Vote
      }

      def class_for_type(type)
        TYPE_TO_CLASS[type] or raise ArgumentError, "unknown type: #{type.inspect}"
      end

      def read_type(plural, klass)
        objs = @files.map do |e|
          doc = Nokogiri::XML.parse(File.read(e))
          doc.remove_namespaces!

          klass.from_storting_doc(doc)
        end.flatten

        str = Util.builder do |xml|
          xml.instruct!
          xml.__send__(plural) do |builder|
            objs.each { |e| e.to_hdo_xml(builder) }
          end
        end

        str
      end

      def parse(args)
        options = {}

        parser = OptionParser.new do |opt|
          types = TYPE_TO_CLASS.keys + [:dld_issues, :dld_votes, :promises]
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
        doc = Nokogiri::XML.parse(File.read(File.join(StortingImporter.root, 'data/dld-issues.xml')))
        issues = Issue.from_hdo_doc doc

        Util.builder do |xml|
          xml.instruct!
          xml.issues do |issues_builder|
            issues.each { |i| i.to_hdo_xml(issues_builder) }
          end
        end
      end

      def read_dld_votes
        doc = Nokogiri::XML.parse(File.read(File.join(StortingImporter.root, 'folketingparser/data/votering-2011-04-04-dld-hdo.xml')))
        votes = Vote.from_hdo_doc doc

        Util.builder do |xml|
          xml.instruct!
          xml.votes do |votes_builder|
            votes.each { |v| v.to_hdo_xml(votes_builder) }
          end
        end
      end

      def read_promises
        csvs = @files.any? ? @files : Dir[File.join(StortingImporter.root, 'data/promises-*.csv')].sort_by { |e| File.basename(e) }
        content = ''
        csvs.each do |csv|
          content << File.read(File.expand_path(csv), encoding: "ISO-8859-1").encode("UTF-8")
        end

        Util.builder do |xml|
          xml.instruct!
          xml.promises do |promises|
            Promise.from_csv(content).each { |e| e.to_hdo_xml(promises) }
          end
        end
      end

    end
  end
end
