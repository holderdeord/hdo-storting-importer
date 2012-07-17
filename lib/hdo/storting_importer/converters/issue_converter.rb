module Hdo
  module StortingImporter
    module Converters

      class IssueConverter < Converter

        def self.type_name
          :issues
        end

        def external_ids
          issues.map { |i| i.external_id }
        end

        def issues
          docs.map do |doc|
            Issue.from_storting_doc(doc)
          end.flatten
        end
      end

    end
  end
end
