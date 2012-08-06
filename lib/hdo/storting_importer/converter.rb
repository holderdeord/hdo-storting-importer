module Hdo
  module StortingImporter
    class Converter

      def initialize(data_source)
        @data_source = data_source
        @cache = {}
      end

      def json_for(name, opts = nil)
        obj = data_for(name)
        
        Yajl::Encoder.encode(obj, opts && opts[:pretty])
      end

      private

      def data_for(name)
        case name
        when :votes
          # not ideal
          issue_ids = fetch(:issues).map { |e| e.external_id }
          issue_ids.map { |id| @data_source.votes_for(id) }.flatten.uniq_by { |e| e.external_id }
        when :districts
          fetch(name).sort_by { |e| e.name }
        when :representatives
          data = fetch(:representatives_today) + fetch(:representatives)
          data.uniq_by { |e| e.external_id }.sort_by { |e| e.external_id }
        else
          fetch(name)
        end
      end

      def fetch(name)
        @cache[name] ||= @data_source.__send__(name)
      end

    end
  end
end
