# encoding: UTF-8

module Hdo
  module StortingImporter
    class Issue
      include HasJsonSchema
      include IvarEquality
      include Inspectable

      attr_reader :external_id, :summary, :description, :type, :status, :last_update,
                  :reference, :document_group, :committee, :categories

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/issue.json").to_s

      def self.example
        new(
          "53520",
          "Inngåelse av avtale om opprettelse av sekretariatet for Den nordlige dimensjons partnerskap for helse og livskvalitet (NDPHS)",
          "Samtykke til inngåelse av avtale av 25. november 2011 om opprettelse av sekretariatet for Den nordlige dimensjons partnerskap for helse og livskvalitet (NDPHS)",
          "alminneligsak",
          "mottatt",
          "2012-04-20T00:00:00",
          "Prop. 90 S (2011-2012)",
          "proposisjon",
          "Transport- og kommunikasjonskomiteen",
          ['UTENRIKSSAKER', 'TRAKTATER', 'NORDISK SAMARBEID']
        )
      end

      def self.json_example
        Util.json_pretty example
      end

      def self.from_storting_doc(doc)
        doc.css("saker_liste sak").map do |node|
          from_storting_node(node)
        end
      end

      def self.from_storting_node(node)
        external_id    = node.xpath("./id").first.text
        summary        = node.css("korttittel").first.text
        description    = Util.remove_newlines(node.css("tittel").first.text)
        type           = node.css("type").first.text
        status         = node.css("status").first.text
        last_update    = node.css("sist_oppdatert_dato").first.text
        reference      = node.css("henvisning").first.text
        document_group = node.css("dokumentgruppe").first.text

        committee_node = node.css("komite").first
        if committee_node && committee_node['nil'] != "true"
          committee = committee_node.css("navn").first.text
        end

        xcategories = node.css("emne")
        if xcategories.any?
          categories = xcategories.map { |xt| xt.css("navn").first.text }
        end

        new(external_id, summary, description, type, status, last_update, reference, document_group, committee, categories)
      rescue
        puts lnode
        raise
      end

      def self.from_hash(hash)
        new hash.fetch('externalId'),
            hash.fetch('summary'),
            hash.fetch('description'),
            hash.fetch('type'),
            hash.fetch('status'),
            hash.fetch('lastUpdate'),
            hash.fetch('reference'),
            hash.fetch('documentGroup'),
            hash.fetch('committee'),
            hash.fetch('categories')
      end

      def initialize(external_id, summary, description, type, status, last_update,
                     reference, document_group, committee, categories)
        @external_id    = external_id
        @summary        = summary
        @description    = description
        @type           = type
        @status         = status
        @last_update    = last_update
        @reference      = reference
        @document_group = document_group
        @committee      = committee
        @categories     = categories || []
      end

      def short_inspect
        short_inspect_string :include => [:external_id, :summary]
      end

      def to_hash
        {
          :kind           => self.class.kind,
          :externalId     => @external_id,
          :summary        => @summary,
          :description    => @description,
          :type           => @type,
          :status         => @status,
          :lastUpdate     => @last_update,
          :reference      => @reference,
          :documentGroup  => @document_group,
          :committee      => @committee,
          :categories     => @categories
        }
      end

    end
  end
end
