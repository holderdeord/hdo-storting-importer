module Hdo
  module StortingImporter
    class TopicConverter < Converter

      def self.type_name
        :topics
      end

      def topics
        docs.map { |doc|
          doc.css("emne_liste > emne").map do |xt|
            topic = build_topic(xt)

            subnodes = xt.css("underemne_liste > emne")
            topic[:subTopics] = subnodes.map { |st| build_topic(st) }

            topic
          end
        }.flatten
      end

      def build_topic(node)
        {
          externalId: node.css("id").first.text,
          name: node.css("navn").first.text
        }
      end

    end
  end
end
