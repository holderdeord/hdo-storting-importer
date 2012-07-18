module Hdo
  module StortingImporter
    class Party
      include IvarEquality

      attr_reader :external_id, :name

      def self.from_storting_doc(doc)
        doc.css("partier_liste parti").map do |node|
          new node.css("id").first.text, node.css("navn").first.text
        end
      end

      def self.from_hdo_node(node)
        new node.css("externalId").first.text, node.css("name").first.text
      end

      def initialize(external_id, name)
        @external_id = external_id
        @name        = name
      end

      def to_hdo_xml(builder = Util.builder)
        builder.party do |party|
          party.externalId external_id
          party.name name
        end
      end
    end
  end
end