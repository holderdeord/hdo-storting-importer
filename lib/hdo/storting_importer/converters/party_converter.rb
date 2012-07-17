module Hdo
  module StortingImporter
    module Converters
      
      class PartyConverter < Converter
        def self.type_name
          :parties
        end

        def parties
          docs.map { |doc| Party.from_storting_doc(doc) }.flatten
        end
        
        def xml
          builder = Util.builder
          builder.instruct!

          builder.parties do |part|
            parties.each { |e| e.to_hdo_xml(part) }
          end

          builder.target!
        end
      end
      
    end
  end
end