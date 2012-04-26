module Hdo
  module StortingImporter
    class DistrictConverter < Converter

      def self.handles?(name)
        name == 'fylker_oversikt'
      end

      def districts
        @doc.css("fylker_liste fylke").map do |node|
          {
            externalId: node.css("id").first.text,
            name:       node.css("navn").first.text
          }
        end
      end

      def template_name
        'districts'
      end

    end
  end
end

