module Hdo
  module StortingImporter
    class DataSource

      class NotFoundError < StandardError
      end

      DEFAULT_SESSION = '2012-2013'
      DEFAULT_PERIOD = '2009-2013'

      private

      def parse(str)
        doc = Nokogiri.XML(str)
        doc.remove_namespaces!

        doc.first_element_child
      end

    end
  end
end
