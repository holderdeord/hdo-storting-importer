module Hdo
  module StortingImporter
    class ApiDataSource < DataSource

      def initialize(url)
        RestClient.log = STDERR
        @resource = RestClient::Resource.new(URI.parse(url))
      end

      def representatives(period = DEFAULT_PERIOD)
        fetch "eksport/representanter/?StortingsPeriodeId=#{period}"
      end

      def representatives_today
        fetch 'eksport/dagensrepresentanter/'
      end

      def parties(session_id = DEFAULT_SESSION)
        fetch "eksport/partier/?sesjonid=#{session_id}"
      end

      def committees(session_id = DEFAULT_SESSION)
        fetch "eksport/komiteer/?SesjonId=#{session_id}"
      end

      def districts
        fetch "eksport/fylker"
      end

      def topics
        fetch "eksport/emner"
      end

      def issues(session_id = DEFAULT_SESSION)
        fetch "eksport/saker?sesjonid=#{session_id}"
      end

      def votes_for(issue_id)
        fetch "eksport/voteringer?sakid=#{issue_id}"
      end

      def propositions_for(vote_id)
        fetch "eksport/voteringsforslag/?voteringid=#{vote_id}"
      end

      def vote_results_for(vote_id)
        fetch "eksport/voteringsresultat/?voteringid=#{vote_id}"
      end

      private

      def fetch(path)
        parse @resource[path].get
      end

    end
  end
end

