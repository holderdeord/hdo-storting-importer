module Hdo
  module StortingImporter
    class PartyConverter

      def initialize(doc)
        @doc = doc
      end

      def target!
        ERB.new(template, 0, "%-<>").result(binding)
      end

      def template
        File.read(File.expand_path("../templates/parties.xml.erb", __FILE__))
      end

      def parties
        @doc.css("partier_liste parti").map do |node|
          {
            externalId: node.css("id").first.text,
            name: node.css("navn").first.text
          }
        end
      end

    end
  end
end