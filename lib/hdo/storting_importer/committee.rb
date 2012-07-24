module Hdo
  module StortingImporter
    class Committee
      include IvarEquality

      attr_reader :external_id, :name

      def self.type_name
        'committee'
      end

      def self.description
        'a parliamentary committe'
      end

      def self.xml_example(builder = Util.builder)
        new("ARBSOS", "Arbeids- og sosialkomiteen").to_hdo_xml(builder)
      end

      def self.fields
        [EXTERNAL_ID_FIELD, Field.new(:name, true, :string, 'The name of the committee.')]
      end

      def self.from_storting_doc(doc)
        doc.css("komiteer_liste komite").map do |node|
          from_storting_node(node)
        end
      end

      def self.from_storting_node(node)
        new node.css("id").first.text, node.css("navn").first.text
      end

      def self.from_hdo_doc(doc)
        doc.css("committees > committee").map { |e| from_hdo_node e }
      end

      def self.from_hdo_node(node)
        new node.css("externalId").first.text, node.css("name").first.text
      end

      def initialize(external_id, name)
        @external_id = external_id
        @name = name
      end

      def to_hdo_xml(builder = Util.builder)
        builder.committee do |com|
          com.externalId external_id
          com.name name
        end
      end
    end
  end
end
