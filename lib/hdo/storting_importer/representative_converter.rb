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
          rep = { 
            externalId:  node.css("id").first.text,
            firstName:   node.css("fornavn").first.text,
            lastName:    node.css("etternavn").first.text,
            dateOfBirth: node.css("foedselsdato").first.text,
            dateOfDeath: node.css("doedsdato").first.text,

            # not required
            district:    fetch_if_exists(node, "fylke navn"),
            party:       fetch_if_exists(node, "parti navn"),
            period:      '2011-2012' # FIXME
          }
          
          rep[:committees] = node.css("komite").map { |c| c.css("navn").text }
          
          rep
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