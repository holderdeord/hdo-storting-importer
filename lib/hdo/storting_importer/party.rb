module Hdo
  module StortingImporter
    class Party
      include HasJsonSchema
      include IvarEquality

      attr_reader :external_id, :name
      alias_method :short_inspect, :inspect

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/party.json").to_s

      def self.example(overrides = nil)
        obj = new("A", "Arbeiderpartiet")

        if overrides
          obj = from_hash(obj.to_hash.merge(overrides))
        end

        obj
      end

      def self.from_storting_doc(doc)
        doc.css("partier_liste parti").map do |node|
          new node.css("id").first.text,
              node.css("navn").first.text
        end
      end

      def self.from_hash(hash)
        new hash['external_id'],
            hash['name']
      end

      def initialize(external_id, name)
        @external_id       = external_id
        @name              = name
      end

      def external_id
        Util.unescape_param @external_id
      end

      def to_hash
        {
          'kind'        => self.class.kind,
          'external_id' => @external_id,
          'name'        => @name,
        }
      end

    end
  end
end