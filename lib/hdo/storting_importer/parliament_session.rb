# encoding: UTF-8

module Hdo
  module StortingImporter
    class ParliamentSession
      include HasJsonSchema
      include IvarEquality

      attr_reader :external_id, :start_date, :end_date

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/parliament_session.json").to_s

      def self.from_storting_doc(doc)
        doc.css("sesjoner_liste sesjon").map do |node|
          from_storting_node node
        end
      end

      def self.from_storting_node(node)
        new node.css("id").text,
            Date.parse(node.css("fra").text),
            Date.parse(node.css("til").text)
      end

      def self.from_hash(hash)
        new hash['externalId'],
            hash['startDate'] && Date.parse(hash['startDate']),
            hash['endDate'] && Date.parse(hash['endDate'])
      end

      def self.example(overrides = nil)
        obj = new('2012-2013', Date.parse('2012-10-01'), Date.parse('2013-09-30'))

        if overrides
          obj = from_hash(obj.to_hash.merge(overrides))
        end

        obj
      end

      def initialize(external_id, start_date, end_date)
        @external_id = external_id
        @start_date  = start_date
        @end_date    = end_date
      end

      def to_hash
        {
          'kind'       => self.class.kind,
          'externalId' => @external_id,
          'startDate'  => @start_date && @start_date.iso8601,
          'endDate'    => @end_date && @end_date.iso8601
        }
      end

      alias_method :short_inspect, :inspect
    end
  end
end
