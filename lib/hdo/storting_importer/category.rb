module Hdo
  module StortingImporter
    class Category
      include IvarEquality
      include Inspectable
      include HasJsonSchema

      attr_reader :external_id, :name
      attr_accessor :children

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/category.json").to_s

      def self.example(overrides = nil)
        cat = new("5", "Employment")
        cat.children << new("6", "Wages")

        if overrides
          cat = from_hash(cat.to_hash.merge(overrides))
        end

        cat
      end

      #
      # Deserialize from a Storting XML document (<emne_liste><emne>...</emne></emne_liste>)
      #
      # @return [Array<Category>]
      #

      def self.from_storting_doc(doc)
        doc.css("emne_liste > emne").map { |xt| from_storting_node(xt) }
      end

      #
      # Deserialize form a Storting XML node (<emne>...</emne>)
      #
      # @return [Category]
      #

      def self.from_storting_node(node)
        cat = Category.new node.css("id").first.text, node.css("navn").first.text

        subnodes = node.css("underemne_liste > emne")
        subnodes.map do |subnode|
          cat.children << Category.new(subnode.css("id").first.text, subnode.css("navn").first.text)
        end

        cat
      end

      def self.from_hash(data)
        obj = new data['external_id'], data['name']
        obj.children = Array(data['sub_categories']).map { |e| from_hash(e) }

        obj
      end

      def initialize(external_id, name)
        @external_id = external_id
        @name        = name
        @children    = []
      end

      def short_inspect
        short_inspect_string :include => [:external_id, :name]
      end

      def to_hash
        h = {
          'kind'        => self.class.kind,
          'external_id' => @external_id,
          'name'        => @name
        }

        h['sub_categories'] = @children.map { |e| e.to_hash } if @children.any?

        h
      end
    end
  end
end