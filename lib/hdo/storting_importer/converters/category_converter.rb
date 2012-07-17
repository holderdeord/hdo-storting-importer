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

        def xml
          builder = Util.builder
          builder.instruct!

          builder.categories do |cats|
            categories.each { |e| e.to_hdo_xml(cats) }
          end

          builder.target!
        end
      end

    end
  end
end
