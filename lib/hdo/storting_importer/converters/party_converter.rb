module Hdo
  module StortingImporter
    module Converters
      
      class PartyConverter < Converter
        def self.type_name
          :parties
        end

        def parties
          docs.map { |doc| Party.from_storting_doc(doc) }.flatten
        end
      end
      
    end
  end
end