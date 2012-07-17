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
        
        def xml
          xml = Util.builder
          xml.instruct!
          
          xml.issues do |is|
            issues.each { |i| i.to_hdo_xml(is) }
          end
        end
      end

    end
  end
end
