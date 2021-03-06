module Hdo
  module StortingImporter
    class ApiDataSource < DataSource
      USER_AGENT = "holderdeord-storting-importer v#{Hdo::StortingImporter::VERSION}"

      def self.default
        new "http://data.stortinget.no"
      end

      def initialize(connection_or_url)
        @connection = case connection_or_url
                    when Faraday::Connection
                      connection_or_url
                    when String, URI
                      Faraday.new(:url => connection_or_url.to_s) do |faraday|
                        faraday.adapter :net_http_persistent
                      end
                    else
                      raise ArgumentError, "invalid argument #{url_or_resource.inspect}"
                    end
      end

      #
      # fetch representatives for the given period
      #
      # @param [String] period
      #
      # @example
      #   data_source.representatives('2009-2013')
      #

      def representatives(period)
        fetch "eksport/representanter/?StortingsPeriodeId=#{period}"
      end

      def representatives_today
        fetch 'eksport/dagensrepresentanter/'
      end

      def person(person_id)
        fetch "eksport/person?personid=#{person_id}"
      end

      #
      # Fetch JPEG photo data for the specified person
      #
      # @param [String] person_id
      # @param [:small, :medium, :large] size
      #

      def person_photo(person_id, size = :medium, fallback = false)
        size_param = {
          :small  => 'lite',
          :medium => 'middels',
          :large  => 'stort'
        }.fetch(size)

        fb = fallback ? '&erstatningsbilde=true' : ''

        fetch_raw "eksport/personbilde?personid=#{person_id}&storrelse=#{size_param}#{fb}"
      end

      def speaker_list
        fetch 'eksport/talerliste'
      end

      #
      # fetch parties for the given session
      #
      # @param [String] session
      #
      # @example
      #   data_source.representatives('2011-2012')
      #

      def parties(session_id)
        fetch "eksport/partier/?sesjonid=#{session_id}"
      end

      def committees(session_id)
        fetch "eksport/komiteer/?SesjonId=#{session_id}"
      end

      def districts
        fetch "eksport/fylker"
      end

      def parliament_periods
        fetch "eksport/stortingsperioder"
      end

      def parliament_sessions
        fetch "eksport/sesjoner"
      end

      def categories
        fetch "eksport/emner"
      end

      def parliament_issues(session_id)
        fetch "eksport/saker?sesjonid=#{session_id}"
      end

      def parliament_issue_details(parliament_issue_id)
        fetch "eksport/sak?sakid=#{parliament_issue_id}"
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

      def fetch_raw(path)
        Hdo::StortingImporter.logger.info "parsing #{path}"
        response = @connection.get(path) do |request|
          request.headers['User-Agent'] = USER_AGENT
        end

        if response.status != 200
          raise ServerError.new("response code #{response.status}", response)
        end

        response.body
      end

      def fetch(path)
        parse fetch_raw(path)
      end

    end
  end
end

