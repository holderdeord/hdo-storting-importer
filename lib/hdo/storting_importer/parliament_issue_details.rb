# encoding: UTF-8

module Hdo
  module StortingImporter
    class ParliamentIssueDetails
      include HasJsonSchema
      include IvarEquality
      include Inspectable

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/parliament_issue_details.json").to_s

      attr_reader :external_id, :links

      def self.example(overrides = nil)
        obj = new(
          "53520",
          [
            {
              "external_id"=>"s101208",
              "title"=>"Stortingsreferat 08.12.2010",
              "url"=>
               "https://www.stortinget.no/no/Saker-og-publikasjoner/Publikasjoner/Referater/Stortinget/2010-2011/101208/7/",
              "type"=>"referat",
              "subtype"=>"storting"
            }
          ]
        )

        if overrides
          obj = from_hash(obj.to_hash.merge(overrides))
        end

        obj
      end

      def self.json_example
        Util.json_pretty example
      end

      def self.from_storting_doc(doc)
        from_storting_node doc.xpath("//detaljert_sak").first
      end

      def self.from_storting_node(node)
        id = node.xpath('id').text

        link_nodes = node.css('publikasjon_referanse_liste > publikasjon_referanse')
        links = link_nodes.map do |ref|
          external_id = ref.css('eksport_id').text.strip
          type        = ref.css('type').text.strip
          subtype     = ref.css('undertype').text

          {
            'external_id' => external_id.empty? ? nil : external_id,
            'title'       => ref.css('lenke_tekst').text,
            'url'         => ref.css('lenke_url').text,
            'type'        => type.empty? ? nil : type,
            'subtype'     => subtype.empty? ? nil : subtype
          }
        end

        new id, links
      end

      def self.from_hash(hash)
        new hash['external_id'],
            hash['links']
      end

      def initialize(external_id, links)
        @external_id = external_id
        @links       = links
      end

      def short_inspect
        short_inspect_string :include => [:external_id, :links]
      end

      def to_hash
        {
          'kind'        => self.class.kind,
          'external_id' => @external_id,
          'links'       => @links
        }
      end

    end
  end
end
