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

        def xml
          builder = Util.builder
          builder.instruct!

          builder.districts do |ds|
            districts.each { |e| e.to_hdo_xml(ds) }
          end

          builder.target!
        end
      end

    end
  end
end

