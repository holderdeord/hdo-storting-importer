module Hdo
  module StortingImporter
    class ParsingDataSource < DataSource
      def initialize(delegate_data_source)
        @data_source = delegate_data_source
      end

      def representatives(period = DEFAULT_PERIOD)
        Representative.from_storting_doc @data_source.representatives(period)
      end

      def representatives_today
        Representative.from_storting_doc @data_source.representatives_today
      end

      def parties(session_id = DEFAULT_SESSION)
        Party.from_storting_doc @data_source.parties(session_id)
      end

      def committees(session_id = DEFAULT_SESSION)
        Committee.from_storting_doc @data_source.committees(session_id)
      end

      def districts
        District.from_storting_doc @data_source.districts
      end

      def categories
        Category.from_storting_doc @data_source.categories
      end

      def parliament_issues(session_id = DEFAULT_SESSION)
        ParliamentIssue.from_storting_doc @data_source.parliament_issues(session_id)
      end

      def votes_for(issue_id)
        votes = Vote.from_storting_doc @data_source.votes_for(issue_id)

        votes.each do |vote|
          vote.add_storting_propositions @data_source.propositions_for(vote.external_id)
          if vote.personal?
            vote.add_storting_results @data_source.vote_results_for(vote.external_id)
          end
        end

        votes
      end

      def propositions_for(vote_id)
        raise NotImplementedError, 'result of #votes_for includes propositions'
      end

      def vote_results_for(vote_id)
        raise NotImplementedError, 'result of #votes_for includes vote results'
      end

    end
  end
end