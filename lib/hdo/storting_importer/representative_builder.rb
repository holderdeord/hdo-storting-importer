module Hdo
  module StortingImporter
    class RepresentativeBuilder
      def initialize(builder, node)
        @builder = builder
        @node = node
      end

      def external_id
        @node.css("id").first.text
      end

      def build
        @builder.representative do |rep|
          # required
          rep.externalId   external_id
          rep.firstName    @node.css("fornavn").first.text
          rep.lastName     @node.css("etternavn").first.text
          rep.dateOfBirth  @node.css("foedselsdato").first.text
          rep.dateOfDeath  @node.css("doedsdato").first.text

          # not required
          rep.district     fetch_if_exists("fylke navn")
          rep.party        fetch_if_exists("parti navn")

          rep.committees do |coms|
            @node.css("komite").each do |xcom|
              coms.committee xcom.css("navn").text
            end
          end

          rep.period("2011-2012") # FIXME

          yield rep if block_given?
        end
      end

      def fetch_if_exists(selector)
        subnode = @node.css(selector).first
        subnode ? subnode.text : ''
      end
    end
  end
end