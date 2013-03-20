module Hdo
  module StortingImporter
    class ParsingDataSource < DataSource
      def self.default
        new ApiDataSource.default
      end

      def initialize(delegate_data_source)
        @data_source = delegate_data_source
      end

      def representatives(period)
        Representative.from_storting_doc @data_source.representatives(period)
      end

      def representatives_today
        Representative.from_storting_doc @data_source.representatives_today
      end

      def parties(session_id)
        Party.from_storting_doc @data_source.parties(session_id)
      end

      def committees(session_id)
        Committee.from_storting_doc @data_source.committees(session_id)
      end

      def districts
        District.from_storting_doc @data_source.districts
      end

      def parliament_periods
        ParliamentPeriod.from_storting_doc @data_source.parliament_periods
      end

      def parliament_sessions
        ParliamentSession.from_storting_doc @data_source.parliament_sessions
      end

      def categories
        Category.from_storting_doc @data_source.categories
      end

      def parliament_issues(session_id)
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