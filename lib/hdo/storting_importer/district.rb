module Hdo
  module StortingImporter
    class District
      attr_reader :external_id, :name

      def self.from_storting_doc(doc)
        doc.css("fylker_liste fylke").map do |node|
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
        builder.district do |d|
          d.externalId external_id
          d.name name
        end
      end

    end
  end
end