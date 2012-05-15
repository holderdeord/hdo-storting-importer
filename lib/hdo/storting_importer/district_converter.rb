module Hdo
  module StortingImporter
    class DistrictConverter < Converter

      def self.type_name
        :districts
      end

      def districts
        docs.map do |doc|
          doc.css("fylker_liste fylke").map do |node|
            {
              externalId: node.css("id").first.text,
              name:       node.css("navn").first.text
            }
          end
        end.flatten.sort_by { |e| e[:name] }
      end


    end
  end
end

