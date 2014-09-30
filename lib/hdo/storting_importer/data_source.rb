module Hdo
  module StortingImporter
    class DataSource

      class NotFoundError < StandardError
      end

      class ServerError < StandardError
        def initialize(msg, response)
          super(msg)

          @response = response
        end

        def code
          @response.status
        end

        def body
          @response.body
        end
      end

      private

      def parse(str)
        doc = Nokogiri.XML(str)
        doc.remove_namespaces!

        doc.first_element_child
      end

    end
  end
end
