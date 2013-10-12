module Hdo
  module StortingImporter
    class CommitteeMembership

      include HasJsonSchema
      include IvarEquality

      schema_path StortingImporter.lib.join('hdo/storting_importer/schema/committee_membership.json')

      def self.example(overrides = nil)
        obj = new 'ARBSOS', Date.parse("2009-09-01"), Date.parse("2013-08-01")

        if overrides
          obj = from_hash(obj.to_hash.merge(overrides))
        end

        obj
      end

      def self.from_hash(hash)
        binding.pry unless Hash === hash

        new hash['external_id'],
            (Date.parse(hash['start_date']) if hash['start_date']),
            (Date.parse(hash['end_date']) if hash['end_date'])
      end

      attr_reader :external_id, :start_date, :end_date

      def initialize(external_id, start_date, end_date)
        @external_id = external_id
        @start_date  = start_date
        @end_date    = end_date
      end

      def to_hash
        {
          'kind'        => self.class.kind,
          'external_id' => external_id,
          'start_date'  => (start_date.strftime("%Y-%m-%d") if start_date),
          'end_date'    => (end_date.strftime("%Y-%m-%d") if end_date)
        }
      end

    end # PartyMembership
  end
end
