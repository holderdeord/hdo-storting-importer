module Hdo
  module StortingImporter
    class RepresentativeConverter
      
      def initialize(doc)
        @doc = doc
      end
      
      def target!
        ERB.new(template, 0, "%-<>").result(binding)
      end
      
      def representatives
        nodes = @doc.css("dagensrepresentant")
        nodes += @doc.css("representant")

        nodes.map do |node|
          RepresentativeBuilder.new(node).build
        end
      end
      
      def template
        File.read(File.expand_path("../templates/representatives.xml.erb", __FILE__))
      end
      
      def fetch_if_exists(node, selector)
        subnode = node.css(selector).first
        subnode ? subnode.text : ''
      end
    end
  end
end