module Hdo
  module StortingImporter
    class GoverningPeriod
      include IvarEquality
      include HasJsonSchema

      attr_reader :start_date, :end_date

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/governing_period.json").to_s

      def self.add_to(parties)
        Array(parties).each do |party|
          party.governing_periods = all[party.external_id]
        end
      end

      #
      # Who and who isn't in government is not available in the data
      # from Stortinget, so we hardcode it here.
      #

      def self.all
        @periods ||= {
          "A"  => [ GoverningPeriod.new('2005-10-17') ],
          "SV" => [ GoverningPeriod.new('2005-10-17') ],
          "Sp" => [ GoverningPeriod.new('2005-10-17') ]
        }
      end

      def self.example
        all['A'].first
      end

      def self.from_hash(hash)
        new hash['start_date'], hash['end_date']
      end

      def initialize(start_date, end_date = nil)
        @start_date = Date.strptime(start_date) if start_date
        @end_date = Date.strptime(end_date) if end_date
      end

      def to_hash
        {
          'kind'       => self.class.kind,
          'start_date' => @start_date && @start_date.iso8601,
          'end_date'   => @end_date && @end_date.iso8601
        }
      end

    end

  end
end