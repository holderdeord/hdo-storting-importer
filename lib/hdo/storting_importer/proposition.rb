module Hdo
  module StortingImporter
    class Proposition
      include HasJsonSchema
      include IvarEquality
      include Inspectable

      attr_reader :external_id, :description, :on_behalf_of, :body, :delivered_by

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/proposition.json").to_s

      def self.example
        new('1234', 'description', 'on behalf of', 'body', Representative.example)
      end

      def self.json_example
        Util.json_pretty example
      end

      def self.from_hash(hash)
        arr = [
          hash['externalId'],
          hash['description'],
          hash['onBehalfOf'],
          hash['body'],
          Representative.from_hash(hash['deliveredBy'] || {})
        ]

        new(*arr)
      end

      def initialize(external_id, description, on_behalf_of, body, delivered_by)
        @external_id  = external_id
        @description  = description
        @on_behalf_of = on_behalf_of
        @body         = body
        @delivered_by = delivered_by
      end

      def short_inspect
        short_inspect_string :include => [:external_id, :description, :on_behalf_of]
      end

      def to_hash
        h = {
          'kind'        => self.class.kind,
          'externalId'  => @external_id,
          'description' => @description,
          'onBehalfOf'  => @on_behalf_of,
          'body'        => @body
        }

        h['deliveredBy'] = @delivered_by.to_hash if @delivered_by

        h
      end
    end # Proposition
  end
end
