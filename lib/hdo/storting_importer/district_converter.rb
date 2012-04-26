module Hdo
  module StortingImporter

    class DistrictConverter
      def initialize(doc)
        @doc = doc
      end

      def xml
        ERB.new(template, 0, "%-<>").result(binding)
      end

      def districts
        @doc.css("fylker_liste fylke").map do |node|
          {
            externalId: node.css("id").first.text,
            name:       node.css("navn").first.text
          }
        end
      end

      def template
        File.read(File.expand_path("../templates/districts.xml.erb", __FILE__))
      end
    end
  end
end

