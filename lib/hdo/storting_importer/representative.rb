module Hdo
  module StortingImporter
    class Representative
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

        committees = node.css("komite").map { |c| c.css("navn").text }
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

      def ==(other)
        other.kind_of?(self.class) && external_id == other.external_id
      end
      alias_method :eql?, :==

      def hash
        external_id.hash ^ self.class.hash
      end

    end
  end
end
