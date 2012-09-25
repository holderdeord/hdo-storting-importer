module Hdo
  module StortingImporter
    class District
      include HasJsonSchema
      include IvarEquality

      attr_reader :external_id, :name
      alias_method :short_inspect, :inspect

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/district.json").to_s

      def self.example(overrides = nil)
        obj = new("Db", "Duckburg")

        if overrides
          obj = from_hash(obj.to_hash.merge(overrides))
        end

        obj
      end

      def self.from_storting_doc(doc)
        doc.css("fylker_liste fylke").map do |node|
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