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
          reps = docs.map { |doc| Representative.from_storting_doc(doc) }.flatten.compact
          reps.uniq.sort_by { |e| e.external_id }
        end

        def xml
          builder = Util.builder
          builder.instruct!

          builder.representatives do |reps|
            representatives.each { |e| e.to_hdo_xml(reps) }
          end

          builder.target!
        end
      end

    end
  end
end