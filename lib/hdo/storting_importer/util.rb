module Hdo
  module StortingImporter
    module Util
      module_function

      def builder
        xml = Builder::XmlMarkup.new :indent => 2

        if block_given?
          yield xml
          return xml.target!
        end

        xml
      end

      def remove_newlines(str)
        str.gsub(/\r?\n/, '')
      end

      def remove_invalid_html(str)
        str.gsub("<\\p>", "")
      end
    end
  end
end