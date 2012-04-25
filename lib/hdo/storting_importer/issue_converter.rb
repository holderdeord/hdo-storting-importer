module Hdo
  module StortingImporter

    class IssueConverter
      def initialize(doc)
        @doc = doc
      end

      def target!
        ERB.new(template, 0, "%-<>").result(binding)
      end

      def issues
        @doc.css("saker_liste sak").map do |xi|
          issue = {
            externalId: xi.xpath("./id").first.text,
            summary: xi.css("korttittel").first.text,
            description: xi.css("tittel").first.text,
            type: xi.css("type").first.text,
            status: xi.css("status").first.text,
            lastUpdate: xi.css("sist_oppdatert_dato").first.text,
            reference: xi.css("henvisning").first.text,
            documentGroup: xi.css("dokumentgruppe").first.text,
          }
          
          committee = xi.css("komite").first
          if committee && committee['nil'] != "true"
            issue[:committee] = committee.css("navn").first.text
          end

          xtopics = xi.css("emne")
          if xtopics.any?
            issue[:topics] = xtopics.map { |xt| xt.css("navn").first.text }
          end
          
          issue
        end
      end

      def template
        File.read(File.expand_path("../templates/issues.xml.erb", __FILE__))
      end
    end

  end
end
