module Hdo
  module StortingImporter
    module Converters
      
      class CommitteeConverter < Converter
        def self.type_name
          :committees
        end

        def committees
          docs.map do |doc|
            Committee.from_storting_doc(doc)
          end.flatten
        end
      end
      
    end
  end
end