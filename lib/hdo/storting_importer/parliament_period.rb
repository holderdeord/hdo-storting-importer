# encoding: UTF-8

module Hdo
  module StortingImporter
    class ParliamentPeriod
      include HasJsonSchema
      include IvarEquality

      attr_reader :external_id, :start_date, :end_date

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/parliament_period.json").to_s

      def self.from_storting_doc(doc)
        doc.css('stortingsperioder_liste stortingsperiode').map do |node|
          from_storting_node(node)
        end
      end

      def self.from_storting_node(node)
        new node.css("id").text,
            Date.parse(node.css("fra").text),
            Date.parse(node.css("til").text)
      end

      def self.from_hash(hash)
        new hash['external_id'],
            hash['start_date'] && Date.parse(hash['start_date']),
            hash['end_date'] && Date.parse(hash['end_date'])
      end

      def self.example(overrides = nil)
        obj = new('2009-2013', Date.parse('2009-10-01'), Date.parse('2013-09-30'))

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
          'external_id' => @external_id,
          'start_date'  => @start_date && @start_date.iso8601,
          'end_date'    => @end_date && @end_date.iso8601
        }
      end

      alias_method :short_inspect, :inspect
    end
  end
end
