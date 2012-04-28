module Hdo
  module StortingImporter
    class ApiDataSource < DataSource
      
      def initialize(url)
        RestClient.log = STDERR
        @resource = RestClient::Resource.new(URI.parse(url))
      end
      
      def representatives(period = DEFAULT_PERIOD)
        %W[
          eksport/representanter/?StortingsPeriodeId=#{period}
          eksport/dagensrepresentanter/
        ].map { |path| parse @resource[path].get }
      end
      
      def parties(session_id = DEFAULT_SESSION)
        parse @resource["eksport/partier/?sesjonid=#{session_id}"].get
      end

      def committees(session_id = DEFAULT_SESSION)
        parse @resource["eksport/komiteer/?SesjonId=#{session_id}"].get
      end

      def districts
        parse @resource["eksport/fylker"].get
      end

      def topics
        parse @resource["eksport/emner"].get
      end

      def issues(session_id = DEFAULT_SESSION)
        parse @resource["eksport/saker?sesjonid=#{session_id}"].get
      end
      
      def votes_for(issue_id)
        parse @resource["eksport/voteringer?sakid=#{issue_id}"].get
      end

      def propositions_for(vote_id)
        parse @resource["eksport/voteringsforslag/?voteringid=#{vote_id}"].get
      end

      def vote_results_for(vote_id)
        parse @resource["eksport/voteringsresultat/?voteringid=#{vote_id}"].get
      end
      
    end
  end
end

    