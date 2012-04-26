module Hdo
  module StortingImporter
    class CommitteeConverter < Converter

      def self.handles?(name)
        name == 'komiteer_oversikt'
      end

      def committees
        @doc.css("komiteer_liste komite").map do |xc|
          {
            externalId: xc.css("id").first.text,
            name: xc.css("navn").first.text
          }
        end
      end

      def template_name
        'committees'
      end

    end
  end
end