module Hdo
  module StortingImporter
    class Issue
      attr_reader :external_id, :summary, :description, :type, :status, :last_update,
                  :reference, :document_group, :committee, :categories

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
