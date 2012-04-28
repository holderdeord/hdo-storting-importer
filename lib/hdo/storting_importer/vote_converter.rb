module Hdo
  module StortingImporter
    class VoteConverter < Converter
      include ERB::Util

      def self.type_name
        :votes
      end
      
      def initialize(data_source, issue_ids)
        super(data_source)
        
        @issue_ids = issue_ids
      end
      
      def docs
        @issue_ids.map { |iid| data_source.votes_for(iid) }
      end

      def votes
        vote_docs = docs

        if ENV['VOTE_COUNT'] # temporarily for testing
          vote_docs = vote_docs.first(ENV['VOTE_COUNT'].to_i)
        end

        vote_docs.map { |doc| build_vote(doc) }.compact.flatten
      end

      def build_vote(doc)
        return unless doc.css("sak_votering").any? # ignore issues with no votes
        
        issue_id = doc.css("sak_id").first.text
        vote_nodes = doc.css("sak_votering")

        vote_nodes.map do |vote_node|
          vote_id = vote_node.css("votering_id").text

          propositions_doc = data_source.propositions_for(vote_id)
          propositions_node = propositions_doc.css("voteringsforslag_liste").first
          propositions_node or raise "no propositions in #{propositions_path}"

          if vote_node.css("personlig_votering").text == "true"
            result_doc = data_source.vote_results_for(vote_id)
            result_node = result_doc.css("voteringsresultat_liste").first
            result_node or raise "no vote result in #{vote_result_path.inspect}"
          else
            result_node = nil
          end

          vote_from(issue_id, vote_id, vote_node, result_node, propositions_node)
        end
      end

      def vote_from(issue_id, vote_id, vote_node, result_node, propositions_node)
        vote = {
          externalId: vote_id,
          externalIssueId: issue_id,
          enacted: vote_node.css("vedtatt").text == "true",
          subject: vote_node.css("votering_tema").text,
          method: vote_node.css("votering_metode").text,
          resultType: vote_node.css("votering_resultat_type").text,
          time: vote_node.css("votering_tid").text
        }

        forc     = Integer(vote_node.css("antall_for").text)
        againstc = Integer(vote_node.css("antall_mot").text)
        absentc = Integer(vote_node.css("antall_ikke_tilstede").text)

        # settes til -1 ved personlig_votering=false
        forc = 0 if forc < 0
        againstc = 0 if againstc < 0
        absentc = 0 if absentc < 0

        vote[:counts] = {
          :for => forc,
          :against => againstc,
          :absent => absentc
        }

        if result_node # personlig votering
          result_nodes = result_node.css("representant_voteringsresultat")
          vote[:representatives] = result_nodes.map { |node| build_vote_result(node) }
        end

        proposition_nodes = propositions_node.css("voteringsforslag")
        vote[:propositions] = proposition_nodes.map { |node| build_proposition(node) }

        vote
      end

      def build_proposition(node)
        proposition = {
          externalId: node.css("forslag_id").first.text,
          description: node.css("forslag_betegnelse").first.text,
          onBehalfOf: node.css("forslag_paa_vegne_av_tekst").first.text,
          body: remove_invalid_html(node.css("forslag_tekst").first.text)
        }

        rep_node = node.css("forslag_levert_av_representant").first

        if rep_node && rep_node['nil'] != 'true'
          proposition[:deliveredBy] = RepresentativeBuilder.new(rep_node).build
        end

        proposition
      end

      def build_vote_result(node)
        RepresentativeBuilder.new(node.css("representant").first).build { |rep|
          vote_result = node.css("votering").text
          rep[:voteResult] = case vote_result
                             when 'for'
                               'for'
                             when 'mot'
                              'against'
                             when 'ikke_tilstede'
                              'absent'
                             else
                               raise "unexpected vote: #{vote_result.inspect}"
                             end
        }
      end

    end
  end
end
