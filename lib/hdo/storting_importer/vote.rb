module Hdo
  module StortingImporter
    class Vote
      class Counts < Struct.new(:for, :against, :absent)
      end

      class Proposition < Struct.new(:external_id, :description, :on_behalf_of, :body, :delivered_by)
      end

      attr_reader :external_id, :external_issue_id, :personal, :enacted, :subject,
                  :method, :result_type, :time, :counts, :propositions, :representatives

      alias_method :personal?, :personal

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
          absentc = Integer(vote_node.css("antall_ikke_tilstede").text)

          # settes til -1 ved personlig_votering=false
          forc = 0 if forc < 0
          againstc = 0 if againstc < 0
          absentc = 0 if absentc < 0

          new vote_id, issue_id, personal, enacted, subject, method, result_type, time, forc, againstc, absentc
        end
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

    end
  end
end