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
        return unless query_param.kind_of?(String)

        q = query_param.dup
        ID_CONVERSIONS.each { |k, v| q.gsub!(k, v) }

        q
      end

      def period_to_date_range(str)
        start_year, end_year = str.split("-").map do |y|
          case y.size
          when 4
            Integer(y)
          when 2
            Integer("19#{y}")
          else
            "couldn't parse year #{str.inspect}"
          end
        end

        if start_year > end_year
          raise "invalid period: #{str.inspect}"
        end

        # approximate dates
        Time.new(start_year, 10, 1)..Time.new(end_year, 8, 1)
      end

      def current_session
        session_for_date Time.now
      end

      def session_for_date(date)
        new_session_start = Time.new(date.year, 10, 1)

        if date >= new_session_start
          new_session_start..(Time.new(date.year + 1, 8, 1))
        else
          Time.new(date.year - 1, 10, 1)..Time.new(date.year, 8, 1)
        end
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