module Hdo
  module StortingImporter
    class DataSource

      class NotFoundError < StandardError
      end

      DEFAULT_SESSION = '2011-2012'
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
