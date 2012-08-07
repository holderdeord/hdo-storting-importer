# encoding: UTF-8

module Hdo
  module StortingImporter
    class Representative
      include HasJsonSchema
      include IvarEquality
      include Inspectable

      attr_reader :external_id, :first_name, :last_name, :date_of_birth, :date_of_death,
                  :district, :party, :committees, :period, :gender

      attr_accessor :vote_result

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/representative.json").to_s

      def self.example
        new(
          'ADA',
          'André Oktay',
          'Dahl',
          'M',
          '1975-07-07T00:00:00',
          '0001-01-01T00:00:00',
          'Akershus',
          'Høyre',
          ['Justiskomiteen'],
          '2011-2012'
        )
      end

      def self.json_example
        Util.json_pretty example
      end

      def self.from_storting_doc(doc)
        nodes = doc.css("dagensrepresentant")
        nodes += doc.css("representant")

        nodes.map { |e| from_storting_node(e) }
      end

      def self.from_storting_node(node)
        district_node = node.css("fylke navn").first
        district      = district_node ? district_node.text : ''

        party_node = node.css("parti navn").first
        party      = party_node ? party_node.text : ''

        committees = node.css("komite").map { |c| c.css("navn").text.strip }
        period     = '2011-2012' # FIXME

        new(
          node.css("id").first.text,
          node.css("fornavn").first.text,
          node.css("etternavn").first.text,
          node.css("kjoenn").first.text == "mann" ? 'M' : 'F',
          node.css("foedselsdato").first.text,
          node.css("doedsdato").first.text,
          district,
          party,
          committees,
          period
        )
      end

      def self.from_hash(hash)
        v = new hash['externalId'],
                hash['firstName'],
                hash['lastName'],
                hash['gender'],
                hash['dateOfBirth'],
                hash['dateOfDeath'],
                hash['district'],
                hash['party'],
                hash['committees'],
                hash['period']

        v.vote_result = hash['voteResult']

        v
      end

      def initialize(external_id, first_name, last_name, gender, date_of_birth, date_of_death, district, party, committees, period)
        @external_id   = external_id
        @first_name    = first_name
        @last_name     = last_name
        @gender        = gender
        @date_of_birth = date_of_birth
        @date_of_death = date_of_death
        @district      = district
        @party         = party
        @committees    = committees
        @period        = period

        @vote_result   = nil
      end

      def short_inspect
        short_inspect_string :include => [:external_id, :first_name, :last_name, :party, :vote_result]
      end

      def external_id
        Util.unescape_param @external_id
      end

      def to_hash
        h = {
          'kind'        => self.class.kind,
          'externalId'  => @external_id,
          'firstName'   => @first_name,
          'lastName'    => @last_name,
          'gender'      => @gender,
          'dateOfBirth' => @date_of_birth,
          'dateOfDeath' => @date_of_death,
          'district'    => @district,
          'party'       => @party,
          'committees'  => @committees,
          'period'      => @period
        }

        h['voteResult'] = @vote_result if @vote_result

        h
      end

    end
  end
end
