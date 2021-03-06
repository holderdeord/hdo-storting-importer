module Hdo
  module StortingImporter
    class CachingDataSource < DataSource
      def initialize(delegate, cache = InMemoryCache.new)
        @delegate = delegate
        @cache    = cache
      end

      def representatives(period)
        cache :representatives, period do
          @delegate.representatives(period)
        end
      end

      def representatives_today
        cache :representatives_today do
          @delegate.representatives_today
        end
      end

      def parties(session_id)
        cache :parties, session_id do
          @delegate.parties(session_id)
        end
      end

      def committees(session_id)
        cache :committees, session_id do
          @delegate.committees session_id
        end
      end

      def districts
        cache :districts do
          @delegate.districts
        end
      end

      def categories
        cache :categories do
          @delegate.categories
        end
      end

      def parliament_periods
        cache :parliament_periods do
          @delegate.parliament_periods
        end
      end

      def parliament_sessions
        cache :parliament_sessions do
          @delegate.parliament_sessions
        end
      end

      def parliament_issues(session_id)
        cache :parliament_issues, session_id do
          @delegate.parliament_issues session_id
        end
      end

      def parliament_issue_details(parliament_issue_id)
        cache :parliament_issue_details, parliament_issue_id do
          @delegate.parliament_issue_details parliament_issue_id
        end
      end

      def votes_for(issue_id)
        cache :votes_for, issue_id do
          @delegate.votes_for issue_id
        end
      end

      def propositions_for(vote_id)
        cache :propositions_for, vote_id do
          @delegate.propositions_for vote_id
        end
      end

      def vote_results_for(vote_id)
        cache :vote_results_for, vote_id do
          @delegate.vote_results_for vote_id
        end
      end

      private

      def cache(*args, &blk)
        @cache.fetch(args, &blk)
      end

    end
  end
end

