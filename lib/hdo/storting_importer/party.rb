module Hdo
  module StortingImporter
    class Party
      include HasJsonSchema
      include IvarEquality

      attr_reader :external_id, :name
      attr_accessor :governing_periods
      alias_method :short_inspect, :inspect

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/party.json").to_s

      def self.example(overrides = nil)
        obj = new("A", "Arbeiderpartiet")
        obj.governing_periods = [GoverningPeriod.new('2005-10-17', '2013-10-14')]

        if overrides
          obj = from_hash(obj.to_hash.merge(overrides))
        end

        obj
      end

      def self.from_storting_doc(doc)
        parties = doc.css("partier_liste parti").map do |node|
          new node.css("id").first.text,
              node.css("navn").first.text
        end

        GoverningPeriod.add_to parties

        parties
      end

      def self.from_hash(hash)
        obj = new hash['externalId'],
                  hash['name']

        obj.governing_periods = Array(hash['governingPeriods']).map do |gp|
          GoverningPeriod.from_hash gp
        end

        obj
      end

      def initialize(external_id, name)
        @external_id       = external_id
        @name              = name
        @governing_periods = nil
      end

      def external_id
        Util.unescape_param @external_id
      end

      def to_hash
        h = {
          'kind'       => self.class.kind,
          'externalId' => @external_id,
          'name'       => @name,
        }

        if @governing_periods
          h['governingPeriods'] = @governing_periods.map { |e| e.to_hash }
        end

        h
      end

    end
  end
end