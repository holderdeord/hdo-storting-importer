module Hdo
  module StortingImporter
    module Converters
      
      class CommitteeConverter < Converter
        def self.type_name
          :committees
        end

        def committees
          docs.map do |doc|
            doc.css("komiteer_liste komite").map do |xc|
              {
                externalId: xc.css("id").first.text,
                name: xc.css("navn").first.text
              }
            end
          end.flatten
        end
      end
      
    end
  end
end