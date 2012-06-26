module Hdo
  module StortingImporter
    class CategoryConverter < Converter

      def self.type_name
        :categories
      end

      def categories
        docs.map { |doc|
          doc.css("emne_liste > emne").map do |xt|
            cat = build_category(xt)

            subnodes = xt.css("underemne_liste > emne")
            cat[:subCategories] = subnodes.map { |st| build_category(st) }

            cat
          end
        }.flatten
      end

      def build_category(node)
        {
          externalId: node.css("id").first.text,
          name: node.css("navn").first.text
        }
      end

    end
  end
end
