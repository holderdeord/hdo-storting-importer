module Hdo
  module StortingImporter
    class Committee
      attr_reader :external_id, :name

      def self.from_storting_doc(doc)
        doc.css("komiteer_liste komite").map do |node|
          from_storting_node(node)
        end
      end

      def self.from_storting_node(node)
        new node.css("id").first.text, node.css("navn").first.text
      end

      def initialize(external_id, name)
        @external_id = external_id
        @name = name
      end

      def to_hdo_xml(builder = StortingImporter.create_builder)
        builder.committee do |com|
          com.externalId external_id
          com.name name
        end
      end
    end
  end
end
