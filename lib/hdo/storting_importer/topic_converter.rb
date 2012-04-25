module Hdo
  module StortingImporter
    class TopicConverter
      def initialize(doc)
        @doc = doc
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

      def target!
        ERB.new(template, 0, "%-<>").result(binding)
      end

      def template
        File.read(File.expand_path("../templates/topics.xml.erb", __FILE__))
      end

    end
  end
end
