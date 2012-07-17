module Hdo
  module StortingImporter
    module Converters

      class DistrictConverter < Converter
        def self.type_name
          :districts
        end

        def districts
          docs.map do |doc|
            District.from_storting_doc(doc)
          end.flatten.sort_by { |e| e.name }
        end
      end

    end
  end
end

