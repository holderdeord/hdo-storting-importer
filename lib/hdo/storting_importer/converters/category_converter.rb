module Hdo
  module StortingImporter
    module Converters

      class CategoryConverter < Converter

        def self.type_name
          :categories
        end

        def categories
          docs.map { |doc|
            Category.from_storting_doc(doc)
          }.flatten
        end
      end

    end
  end
end
