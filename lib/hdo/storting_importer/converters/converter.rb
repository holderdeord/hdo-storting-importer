module Hdo
  module StortingImporter
    module Converters
      class Converter

        def initialize(data_source)
          @data_source = data_source
          @cache = {}
        end

        def xml_for(name)
          Util.builder do |xml|
            xml.instruct!
            xml.__send__(name) do |builder|
              data_for(name).each do |obj|
                obj.to_hdo_xml(builder)
              end
            end
          end
        end

        private

        def data_for(name)
          case name
          when :votes
            # not ideal
            issue_ids = @data_source.issues.map { |e| e.external_id }
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
end
