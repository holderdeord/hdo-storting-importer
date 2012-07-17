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

      def xml
        builder = StortingImporter.create_builder
        builder.instruct!

        builder.committees do |cats|
          committees.each { |e| e.to_hdo_xml(cats) }
        end

        builder.target!
      end
    end
  end
end
