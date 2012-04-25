module Hdo
  module StortingImporter
    class VoteConverter
      include ERB::Util
    
      def initialize(vote_data)
        @vote_data = vote_data
      end
      
      def target!
        ERB.new(template, 0, "%-<>").result(binding)
      end
      
      def template
        File.read(File.expand_path("../templates/votes.xml.erb", __FILE__))
      end

      def votes
        @vote_data.map { |data| build_vote(*data) }
      end

      def build_vote(issue_id, vote_id, vote_node, result_node, propositions_node)
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
          body: node.css("forslag_tekst").first.text.gsub("<\\p>", "")
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
