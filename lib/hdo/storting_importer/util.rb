module Hdo
  module StortingImporter
    module Util
      module_function

      def remove_newlines(str)
        str.gsub(/\r?\n/, '')
      end

      def remove_invalid_html(str)
        str.gsub("<\\p>", "")
      end
    end
  end
end