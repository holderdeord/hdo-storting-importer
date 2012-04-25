module Hdo
  module StortingImporter
    class CommitteeConverter
      def initialize(doc)
        @doc = doc
      end

      def committees
        @doc.css("komiteer_liste komite").map do |xc|
          {
            externalId: xc.css("id").first.text,
            name: xc.css("navn").first.text
          }
        end
      end

      def target!
        ERB.new(template, 0, "%-<>").result(binding)
      end

      def template
        File.read(File.expand_path("../templates/committees.xml.erb", __FILE__))
      end

    end
  end
end