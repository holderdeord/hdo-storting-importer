module Hdo
  module StortingImporter
    module Converters

      class VoteConverter < Converter
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

        def xml
          builder = Util.builder
          builder.instruct!

          builder.votes do |v|
            votes.each { |e| e.to_hdo_xml(v) }
          end

          builder.target!
        end

        def build_vote(doc)
          return unless doc.css("sak_votering").any? # ignore issues with no votes

          votes = Vote.from_storting_doc(doc)
          votes.each do |vote|
            vote.add_storting_propositions data_source.propositions_for(vote.external_id)
            if vote.personal?
              vote.add_storting_results data_source.vote_results_for(vote.external_id)
            end
          end

          votes
        end
      end
    end
  end
end
