module Hdo
  module StortingImporter
    class TopicConverter < Converter

      def self.handles?(name)
        name == 'emne_oversikt'
      end

      def topics
        @doc.css("emne_liste > emne").map do |xt|
          topic = build_topic(xt)

          topic[:subTopics] = xt.css("underemne_liste > emne").map do |st|
            build_topic(st)
          end

          topic
        end
      end

      def build_topic(node)
        {
          externalId: node.css("id").first.text,
          name: node.css("navn").first.text
        }
      end

      def template_name
        'topics'
      end

    end
  end
end
