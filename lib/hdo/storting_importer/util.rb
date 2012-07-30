# encoding: UTF-8

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

      ID_CONVERSIONS = {
        '_AE' => 'Æ',
        '_O'  => 'Ø',
        '_A'  => 'Å'
      }

      def unescape_param(query_param)
        q = query_param.dup
        ID_CONVERSIONS.each { |k, v| q.gsub!(k, v) }

        q
      end

    end
  end
end