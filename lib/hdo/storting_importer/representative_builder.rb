module Hdo
  module StortingImporter
    class RepresentativeBuilder
      def initialize(node)
        @node = node
      end

      def build
        rep = { 
          externalId:  @node.css("id").first.text,
          firstName:   @node.css("fornavn").first.text,
          lastName:    @node.css("etternavn").first.text,
          dateOfBirth: @node.css("foedselsdato").first.text,
          dateOfDeath: @node.css("doedsdato").first.text,

          # not required
          district:    fetch_if_exists("fylke navn"),
          party:       fetch_if_exists("parti navn"),
          period:      '2011-2012' # FIXME
        }
          
        rep[:committees] = @node.css("komite").map { |c| c.css("navn").text }
          
        yield rep if block_given?
        
        rep
      end
      
      private

      def fetch_if_exists(selector)
        subnode = @node.css(selector).first
        subnode ? subnode.text : ''
      end
    end
  end
end