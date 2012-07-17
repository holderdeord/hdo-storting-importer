module Hdo
  module StortingImporter
    class Category
      attr_reader :external_id, :name, :children

      def self.from_storting_doc(doc)
        doc.css("emne_liste > emne").map { |xt| from_storting_node(xt) }
      end

      def self.from_storting_node(node)
        cat = Category.new node.css("id").first.text, node.css("navn").first.text

        subnodes = node.css("underemne_liste > emne")
        subnodes.map do |subnode|
          cat.children << Category.new(subnode.css("id").first.text, subnode.css("navn").first.text)
        end

        cat
      end

      def initialize(external_id, name)
        @external_id = external_id
        @name        = name
        @children    = []
      end

      def to_hdo_xml(builder = Util.builder)
        builder.category do |cat|
          cat.externalId external_id
          cat.name name

          if children.any?
            cat.subcategories do |sub|
              children.each { |child| child.to_hdo_xml(sub) }
            end
          end
        end
      end

    end
  end
end