module Hdo
  module StortingImporter
    class PartyMembership

      include HasJsonSchema
      include IvarEquality

      schema_path StortingImporter.lib.join('hdo/storting_importer/schema/party_membership.json')

      def self.example(overrides = nil)
        obj = new 'A', Time.parse("2009-09-01"), Time.parse("2013-08-01")

        if overrides
          obj = from_hash(obj.to_hash.merge(overrides))
        end

        obj
      end

      def self.from_hash(hash)
        new hash['externalId'],
            Time.parse(hash['startDate']),
            (Time.parse(hash['endDate']) if hash['endDate'])
      end

      attr_reader :external_id, :start_date, :end_date

      def initialize(external_id, start_date, end_date)
        @external_id   = external_id
        @start_date = start_date
        @end_date   = end_date
      end

      def to_hash
        {
          'kind'       => self.class.kind,
          'externalId' => external_id,
          'startDate'  => start_date.strftime("%Y-%m-%d"),
          'endDate'    => (end_date.strftime("%Y-%m-%d") if end_date)
        }
      end

    end # PartyMembership
  end
end
