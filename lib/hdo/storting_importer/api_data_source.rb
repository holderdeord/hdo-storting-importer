module Hdo
  module StortingImporter
    class ApiDataSource < DataSource
      USER_AGENT = "holderdeord-storting-importer"

      def self.default(opts = {})
        new "http://data.stortinget.no", opts
      end

      def initialize(url_or_resource)
        @resource = case url_or_resource
                    when RestClient::Resource
                      url_or_resource
                    when URI
                      RestClient::Resource.new(url_or_resource)
                    when String
                      RestClient::Resource.new(URI.parse(url_or_resource))
                    else
                      raise ArgumentError, "invalid argument #{url_or_resource.inspect}"
                    end
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

      def categories
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
        sub_resource = @resource[path]
        Hdo::StortingImporter.logger.info "parsing #{sub_resource}"

        parse sub_resource.get(:user_agent => USER_AGENT)
      end

    end
  end
end

