# encoding: UTF-8

module Hdo
  module StortingImporter
    class Representative
      include HasJsonSchema
      include IvarEquality
      include Inspectable

      attr_reader :external_id, :first_name, :last_name, :email, :date_of_birth, :date_of_death,
                  :district, :parties, :committees, :period, :gender

      attr_accessor :vote_result, :permanent_substitute_for

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/representative.json").to_s

      def self.example(overrides = nil)
        obj = new(
          'ADA',
          'André Oktay',
          'Dahl',
          'aod@stortinget.no',
          'M',
          '1975-07-07T00:00:00',
          '0001-01-01T00:00:00',
          'Akershus',
          [PartyMembership.from_hash("external_id" => 'H', 'start_date' => '2011-10-01', 'end_date' => nil)],
          [CommitteeMembership.from_hash('external_id' => 'JUSTIS', 'start_date' => '2011-10-01', 'end_date' => nil)]
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

        email_node = node.css('epost').first
        if email_node
          email = email_node.text
        else
          email = nil
        end

        committee_ids = node.css("komite").map { |c| c.css("id").text.strip }
        committees = committee_ids.map do |id|
          CommitteeMembership.new(id, start_date, end_date)
        end

        rep = new(
          node.css("id").first.text,
          node.css("fornavn").first.text,
          node.css("etternavn").first.text,
          email,
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
        v = new hash['external_id'],
                hash['first_name'],
                hash['last_name'],
                hash['email'],
                hash['gender'],
                hash['date_of_birth'],
                hash['date_of_death'],
                hash['district'],
                Array(hash['parties']).map { |e| PartyMembership.from_hash(e) },
                Array(hash['committees']).map { |e| CommitteeMembership.from_hash(e) }

        v.vote_result = hash['vote_result']
        v.permanent_substitute_for = hash['permanent_substitute_for']

        v
      end

      def initialize(external_id, first_name, last_name, email, gender, date_of_birth, date_of_death, district, parties, committees)
        @external_id   = external_id
        @first_name    = first_name
        @last_name     = last_name
        @email         = email
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
        short_inspect_string :include => [:external_id, :first_name, :last_name, :email, :parties, :vote_result]
      end

      def external_id
        Util.unescape_param @external_id
      end

      def to_hash
        h = {
          'kind'          => self.class.kind,
          'external_id'   => @external_id,
          'first_name'    => @first_name,
          'last_name'     => @last_name,
          'email'         => @email,
          'gender'        => @gender,
          'date_of_birth' => @date_of_birth,
          'date_of_death' => @date_of_death,
          'district'      => @district,
          'parties'       => @parties.map { |e| e.to_hash },
          'committees'    => @committees.map { |e| e.to_hash }
        }

        h['vote_result'] = @vote_result if @vote_result
        h['permanent_substitute_for'] = @permanent_substitute_for if @permanent_substitute_for

        h
      end

    end
  end
end
