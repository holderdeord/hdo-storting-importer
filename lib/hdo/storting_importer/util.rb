# encoding: UTF-8

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

      def json_pretty(obj)
        case obj
        when Array
          obj.map! { |e| e.respond_to?(:to_hash) ? e.to_hash : e }
        when Hash
          # do nothing
        else
          obj = obj.to_hash if obj.respond_to?(:to_hash)
        end

        Yajl::Encoder.encode obj, :pretty => true, :indent => "  "
      end

    end
  end
end