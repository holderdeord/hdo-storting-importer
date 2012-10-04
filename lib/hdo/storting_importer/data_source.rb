module Hdo
  module StortingImporter
    class DataSource

      class NotFoundError < StandardError
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
