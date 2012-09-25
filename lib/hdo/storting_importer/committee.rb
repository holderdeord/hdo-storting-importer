module Hdo
  module StortingImporter
    class Committee
      include HasJsonSchema
      include IvarEquality

      attr_reader :external_id, :name
      alias_method :short_inspect, :inspect

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/committee.json").to_s

      def self.example(overrides = nil)
        obj = new "ARBSOS", "Arbeids- og sosialkomiteen"

        if overrides
          obj = from_hash(obj.to_hash.merge(overrides))
        end

        obj
      end

      def self.from_storting_doc(doc)
        doc.css("komiteer_liste komite").map do |node|
          from_storting_node(node)
        end
      end

      def self.from_storting_node(node)
        new node.css("id").first.text,
            node.css("navn").first.text
      end

      def self.from_hash(hash)
        new hash['externalId'], hash['name']
      end

      def initialize(external_id, name)
        @external_id = external_id
        @name        = name
      end

      def to_hash
        {
          'kind'       => self.class.kind,
          'externalId' => @external_id,
          'name'       => @name
        }
      end

    end
  end
end
