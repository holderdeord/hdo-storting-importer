module Hdo
  module StortingImporter
    module Converters
      
      class PartyConverter < Converter
        def self.type_name
          :parties
        end

        def parties
          docs.map do |doc|
            doc.css("partier_liste parti").map do |node|
              {
                externalId: node.css("id").first.text,
                name: node.css("navn").first.text
              }
            end
          end.flatten
        end
      end
      
    end
  end
end