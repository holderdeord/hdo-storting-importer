module Hdo
  module StortingImporter
    class IssueConverter < Converter

      def self.type_name
        :issues
      end

      def external_ids
        issues.map { |i| i[:externalId] }
      end

      def issues
        docs.map do |doc|
          doc.css("saker_liste sak").map do |xi|
            issue = {
              externalId: xi.xpath("./id").first.text,
              summary: xi.css("korttittel").first.text,
              description: remove_newlines(xi.css("tittel").first.text),
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

            xcategories = xi.css("emne")
            if xcategories.any?
              issue[:categories] = xcategories.map { |xt| xt.css("navn").first.text }
            end

            issue
          end
        end.flatten
      end

    end
  end
end
