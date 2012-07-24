module Hdo
  module StortingImporter
    class Representative
      include IvarEquality

      attr_reader :external_id, :first_name, :last_name, :date_of_birth, :date_of_death,
                  :district, :party, :committees, :period, :gender

      attr_accessor :vote_result

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

      def self.from_hdo_doc(doc)
        doc.css("representatives > representative").map { |e| from_hdo_node e }
      end

      def self.from_hdo_node(node)
        district_node = node.css("district").first
        district      = district_node ? district_node.text : ''

        party_node = node.css("party").first
        party      = party_node ? party_node.text : ''

        rep = new node.css("externalId").first.text,
                  node.css("firstName").first.text,
                  node.css("lastName").first.text,
                  node.css("gender").first.text,
                  node.css("dateOfBirth").first.text,
                  node.css("dateOfDeath").first.text,
                  district,
                  party,
                  node.css("committees committee").map { |e| e.text.strip },
                  node.css("period").first.text

        result_node = node.css("voteResult").first
        rep.vote_result = result_node.text if result_node

        rep
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

      def to_hdo_xml(builder = Util.builder)
        builder.representative do |rep|
          rep.externalId external_id
          rep.firstName first_name
          rep.lastName last_name
          rep.gender gender
          rep.dateOfBirth date_of_birth
          rep.dateOfDeath date_of_death
          rep.district district
          rep.party party

          rep.committees do |coms|
            committees.each { |e| coms.committee e }
          end

          rep.period period

          if vote_result
            rep.voteResult vote_result
          end
        end
      end

    end
  end
end
