# encoding: UTF-8

module Hdo
  module StortingImporter
    class Representative
      include HasJsonSchema
      include IvarEquality
      include Inspectable

      attr_reader :external_id, :first_name, :last_name, :date_of_birth, :date_of_death,
                  :district, :parties, :committees, :period, :gender

      attr_accessor :vote_result, :permanent_substitute_for

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/representative.json").to_s

      def self.example(overrides = nil)
        obj = new(
          'ADA',
          'André Oktay',
          'Dahl',
          'M',
          '1975-07-07T00:00:00',
          '0001-01-01T00:00:00',
          'Akershus',
          [PartyMembership.from_hash("externalId" => 'H', 'startDate' => '2011-10-01', 'endDate' => nil)],
          [CommitteeMembership.from_hash('externalId' => 'JUSTIS', 'startDate' => '2011-10-01', 'endDate' => nil)]
        )

        if overrides
          obj = from_hash(obj.to_hash.merge(overrides))
        end

        obj
      end

      def self.json_example
        Util.json_pretty example
      end

      def self.from_storting_doc(doc)
        nodes = doc.css("dagensrepresentant")
        nodes += doc.css("representant")

        nodes.map { |e| from_storting_node(e) }
      end

      def self.from_storting_node(node, date = nil)
        district_node = node.css("fylke navn").first
        district      = district_node ? district_node.text : ''

        start_date = date || Date.today
        end_date   = nil

        party_node = node.css("parti id").first
        if party_node
          parties = [ PartyMembership.new(party_node.text, start_date, end_date) ]
        else
          parties = []
        end

        committee_ids = node.css("komite").map { |c| c.css("id").text.strip }
        committees = committee_ids.map do |id|
          CommitteeMembership.new(id, start_date, end_date)
        end

        rep = new(
          node.css("id").first.text,
          node.css("fornavn").first.text,
          node.css("etternavn").first.text,
          node.css("kjoenn").first.text == "mann" ? 'M' : 'F',
          node.css("foedselsdato").first.text,
          node.css("doedsdato").first.text,
          district,
          parties,
          committees
        )

        sub = node.css('fast_vara_for').first
        if sub && sub['nil'] != 'true'
          rep.permanent_substitute_for = sub.css("id").first.text
        end

        rep
      end

      def self.from_hash(hash)
        v = new hash['externalId'],
                hash['firstName'],
                hash['lastName'],
                hash['gender'],
                hash['dateOfBirth'],
                hash['dateOfDeath'],
                hash['district'],
                Array(hash['parties']).map { |e| PartyMembership.from_hash(e) },
                Array(hash['committees']).map { |e| CommitteeMembership.from_hash(e) }

        v.vote_result = hash['voteResult']
        v.permanent_substitute_for = hash['permanentSubstituteFor']

        v
      end

      def initialize(external_id, first_name, last_name, gender, date_of_birth, date_of_death, district, parties, committees)
        @external_id   = external_id
        @first_name    = first_name
        @last_name     = last_name
        @gender        = gender
        @date_of_birth = date_of_birth
        @date_of_death = date_of_death
        @district      = district
        @parties       = parties
        @committees    = committees

        @vote_result   = nil
        @permanent_substitute_for = nil
      end

      def short_inspect
        short_inspect_string :include => [:external_id, :first_name, :last_name, :parties, :vote_result]
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
          'parties'     => @parties.map { |e| e.to_hash },
          'committees'  => @committees.map { |e| e.to_hash }
        }

        h['voteResult'] = @vote_result if @vote_result
        h['permanentSubstituteFor'] = @permanent_substitute_for if @permanent_substitute_for

        h
      end

    end
  end
end
