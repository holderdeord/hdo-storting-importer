module Hdo
  module StortingImporter
    #
    # Simple query public Fusion Tables (onle need API key for auth).
    # If we need to write to the table programatically, see https://gist.github.com/3265043.
    #

    class FusionTable
      def initialize(api_key)
        @api_key  = api_key
      end

      def query(sql, opts = {})
        resp = fix_request_failure do
          RestClient.get("https://www.googleapis.com/fusiontables/v1/query", :params => {:sql => sql, :key => @api_key})
        end

        data = MultiJson.decode(resp)

        if opts[:rows]
          data.fetch('rows')
        else
          cols = data.fetch('columns')
          rows = data.fetch('rows')

          rows.map do |row|
            res = {}
            cols.each_with_index { |col, idx| res[col] = row[idx] }

            res
          end
        end
      end

      def columns_for(table_id)
        resp = fix_request_failure do
          RestClient.get("https://www.googleapis.com/fusiontables/v1/tables/#{table_id}/columns", :params => {:key => @api_key})
        end

        data = MultiJson.decode(resp)
        data['items']
      end

      def fix_request_failure(&blk)
        yield
      rescue RestClient::RequestFailed => ex
        raise unless ex.respond_to?(:http_body)
        raise "#{ex.message}: #{ex.http_body}"
      end
    end
  end
end
