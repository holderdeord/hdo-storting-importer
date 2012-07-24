# encoding: UTF-8

module Hdo
  module StortingImporter
    class Issue
      include IvarEquality

      attr_reader :external_id, :summary, :description, :type, :status, :last_update,
                  :reference, :document_group, :committee, :categories

      def self.type_name
        'issue'
      end

      def self.description
        'a parliament issue'
      end

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

      def self.xml_example(builder = Util.builder)
        example.to_hdo_xml(builder)
      end

      def self.fields
        [
          EXTERNAL_ID_FIELD,
          Field.new(:summary,       true,  :string, 'A (preferably one-line) summary of the issue.'),
          Field.new(:description,   true,  :string, 'A longer description of the issue.'),
          Field.new(:type,          true,  :string, 'The type of issue.'),
          Field.new(:status,        true,  :string, 'The status of the issue.'),
          Field.new(:lastUpdate,    true,  :string, 'The time the issue was last updated in the parliament.'),
          Field.new(:reference,     true,  :string, 'A reference.'),
          Field.new(:documentGroup, true,  :string, 'What document group this issue belongs to.'),
          Field.new(:committee,     false, :string, "What committee this issue belongs to. Should match the 'name' field in the committee type."),
          Field.new(:categories,    false, 'list',  "List of categories (matching the 'name' field of the category type).")
        ]
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
      end

      def self.from_hdo_doc(doc)
        doc.css("issues > issue").map { |e| from_hdo_node(e) }
      end

      def self.from_hdo_node(node)
        external_id    = node.css("externalId").first.text
        summary        = node.css("summary").first.text
        description    = node.css("description").first.text
        type           = node.css("type").first.text
        status         = node.css("status").first.text
        last_update    = node.css("lastUpdate").first.text
        reference      = node.css("reference").first.text
        document_group = node.css("documentGroup").first.text
        committee      = node.css("committee").first.text
        categories     = node.css("categories category").map { |e| e.text }

        new external_id, summary, description, type, status, last_update, reference, document_group, committee, categories
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

      def to_hdo_xml(builder = Util.builder)
        builder.issue do |i|
          i.externalId external_id
          i.summary summary
          i.description description
          i.type type
          i.status status
          i.lastUpdate last_update
          i.reference reference
          i.documentGroup document_group
          i.committee(committee) if committee

          if categories.any?
            i.categories do |cats|
              categories.each { |e| cats.category e }
            end
          end
        end

      end

    end
  end
end
