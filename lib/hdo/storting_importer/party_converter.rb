module Hdo
  module StortingImporter
    class PartyConverter < Converter

      def self.handles?(name)
        name == 'partier_oversikt'
      end

      def template_name
        'parties'
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