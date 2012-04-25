module Hdo
  module StortingImporter
    class Converter
      def self.from_file(path)
        doc = Nokogiri.XML(open(path).read)
        doc.remove_namespaces!

        new doc.first_element_child
      end

      def self.builder
        b = Builder::XmlMarkup.new :indent => 2
        b.instruct!

        b
      end

      def initialize(node)
        @doc = node
      end

      def to_xml
        finished_builder.target!
      end

      def finished_builder
        case @doc.name
        when 'partier_oversikt'
          PartyConverter.new @doc
        when 'dagensrepresentanter_oversikt', 'representanter_oversikt'
          RepresentativeConverter.new @doc
        when 'komiteer_oversikt'
          CommitteeConverter.new @doc
        when 'emne_oversikt'
          TopicConverter.new @doc
        when 'fylker_oversikt'
          DistrictConverter.new @doc
        when 'saker_oversikt'
          IssueConverter.new @doc
        else
          raise NotImplementedError, @doc.name
        end
      end

    end
  end
end