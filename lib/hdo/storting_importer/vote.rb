module Hdo
  module StortingImporter
    class Vote
      include IvarEquality

      attr_reader :external_id, :external_issue_id, :personal, :enacted, :subject,
                  :method, :result_type, :time, :counts
      attr_accessor :propositions, :representatives

      alias_method :personal?, :personal
      alias_method :enacted?, :enacted

      def self.from_storting_doc(doc)
        issue_id = doc.css("sak_id").first.text

        doc.css("sak_votering").map do |vote_node|
          vote_id     = vote_node.css("votering_id").text
          personal    = vote_node.css("personlig_votering").text == "true"
          enacted     = vote_node.css("vedtatt").text == "true"
          subject     = vote_node.css("votering_tema").text
          method      = vote_node.css("votering_metode").text
          result_type = vote_node.css("votering_resultat_type").text
          time        = vote_node.css("votering_tid").text

          forc     = Integer(vote_node.css("antall_for").text)
          againstc = Integer(vote_node.css("antall_mot").text)
          absentc  = Integer(vote_node.css("antall_ikke_tilstede").text)

          # settes til -1 ved personlig_votering=false
          forc = 0 if forc < 0
          againstc = 0 if againstc < 0
          absentc = 0 if absentc < 0

          new vote_id, issue_id, personal, enacted, subject, method, result_type, time, forc, againstc, absentc
        end
      end

      def self.from_hdo_node(node)
        external_id       = node.css("externalId").first.text
        external_issue_id = node.css("externalIssueId").first.text
        for_count         = node.css("counts for").first.text
        against_count     = node.css("counts against").first.text
        absent_count      = node.css("counts absent").first.text
        personal          = node.css("personal").first.text == 'true'
        enacted           = node.css("enacted").first.text == 'true'
        subject           = node.css("subject").first.text
        method            = node.css("method").first.text
        result_type       = node.css("resultType").first.text
        time              = node.css("time").first.text

        vote = new external_id, external_issue_id, personal, enacted, subject, method, result_type, time, for_count, against_count, absent_count
        vote.propositions = node.css("propositions proposition").map { |e| Proposition.from_hdo_node(e) }
        vote.representatives = node.css("representatives representative").map { |e| Representative.from_hdo_node(e) }

        vote
      end

      def initialize(external_id, external_issue_id, personal, enacted, subject, method, result_type, time, for_count, against_count, absent_count)
        @external_id       = external_id
        @external_issue_id = external_issue_id
        @personal          = personal
        @enacted           = enacted
        @subject           = subject
        @method            = method
        @result_type       = result_type
        @time              = time
        @counts            = Counts.new(Integer(for_count), Integer(against_count), Integer(absent_count))

        @propositions    = []
        @representatives = []
      end

      def add_storting_propositions(node)
        @propositions += node.css("voteringsforslag").map do |n|
          rep_node = n.css("forslag_levert_av_representant").first
          if rep_node && rep_node['nil'] != 'true'
            delivered_by = Representative.from_storting_node(rep_node)
          else
            delivered_by = nil
          end

          Proposition.new n.css("forslag_id").first.text,
                          n.css("forslag_betegnelse").first.text,
                          n.css("forslag_paa_vegne_av_tekst").first.text,
                          Util.remove_invalid_html(n.css("forslag_tekst").first.text),
                          delivered_by

        end
      end

      def add_storting_results(node)
        @representatives += node.css("representant_voteringsresultat").map do |n|
          rep = Representative.from_storting_node(n.css("representant").first)
          rep.vote_result = case n.css("votering").text
                            when 'for'
                              'for'
                            when 'mot'
                             'against'
                            when 'ikke_tilstede'
                             'absent'
                            else
                              raise "unexpected vote: #{vote_result.inspect}"
                            end

          rep
        end
      end

      def to_hdo_xml(builder = Util.builder)
        builder.vote do |vote|
          vote.externalId external_id
          vote.externalIssueId external_issue_id
          vote.counts do |c|
            c.for counts.for
            c.against counts.against
            c.absent counts.absent
          end
          vote.personal personal?
          vote.enacted enacted?
          vote.subject subject
          vote.method method
          vote.resultType result_type
          vote.time time

          vote.representatives do |reps|
            representatives.each do |rep|
              rep.to_hdo_xml(reps)
            end
          end

          vote.propositions do |props|
            propositions.each do |prop|
              prop.to_hdo_xml(props)
            end
          end
        end
      end

      class Counts < Struct.new(:for, :against, :absent)
      end

      class Proposition < Struct.new(:external_id, :description, :on_behalf_of, :body, :delivered_by)
        def self.from_hdo_node(node)
          external_id  = node.css("externalId").first.text
          description  = node.css("description").first.text
          on_behalf_of = node.css("onBehalfOf").first.text
          body         = node.css("body").first.text

          delivered_by_node = node.css("deliveredBy representative").first
          delivered_by = Representative.from_hdo_node(delivered_by_node) if delivered_by_node

          new external_id, description, on_behalf_of, body, delivered_by
        end

        def to_hdo_xml(builder)
          builder.proposition do |pr|
            pr.externalId external_id
            pr.description description
            pr.onBehalfOf on_behalf_of
            pr.body body

            pr.deliveredBy do |db|
              delivered_by.to_hdo_xml(db) if delivered_by
            end
          end
        end
      end # Proposition

    end # Vote
  end
end