module Hdo
  module StortingImporter
    module Converters
      
      class RepresentativeConverter < Converter

        def self.type_name
          :representatives
        end

        def docs
          [
            data_source.representatives_today, # TODO: should be imported separately.
            data_source.representatives
          ]
        end

        def representatives
          seen = []

          result = docs.map do |doc|
            nodes = doc.css("dagensrepresentant")
            nodes += doc.css("representant")

            nodes.map do |node|
              rb = RepresentativeBuilder.new(node)
              unless seen.include? rb.external_id
                seen << rb.external_id
                rb.build
              end
            end
          end

          result.flatten.compact.sort_by { |e| e[:externalId] }
        end
      end
      
    end
  end
end