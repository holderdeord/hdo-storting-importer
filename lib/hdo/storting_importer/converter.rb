module Hdo
  module StortingImporter
    class Converter
      def self.from_file(path)
        doc = Nokogiri.XML(open(path).read)
        doc.remove_namespaces!

        new doc.first_element_child
      end

      def self.builder
        b = Builder::XmlMarkup.new :indent => 2
        b.instruct!

        b
      end

      def initialize(node)
        @doc = node
      end

      def to_xml
        finished_builder.target!
      end

      def finished_builder
        case @doc.name
        when 'partier_oversikt'
          PartyConverter.new @doc
        when 'dagensrepresentanter_oversikt', 'representanter_oversikt'
          RepresentativeConverter.new @doc
        when 'komiteer_oversikt'
          convert_committees
        when 'emne_oversikt'
          convert_topics
        when 'fylker_oversikt'
          convert_districts
        when 'saker_oversikt'
          convert_issues
        else
          raise NotImplementedError, @doc.name
        end
      end

      private

      def convert_issues
        xml = create_builder

        xml.issues do |issues|
          @doc.css("saker_liste sak").each do |xi|
            issues.issue do |issue|
              issue.externalId xi.xpath("./id").first.text
              issue.summary xi.css("korttittel").first.text
              issue.description xi.css("tittel").first.text
              issue.type xi.css("type").first.text
              issue.status xi.css("status").first.text
              issue.lastUpdate xi.css("sist_oppdatert_dato").first.text
              issue.reference xi.css("henvisning").first.text
              issue.documentGroup xi.css("dokumentgruppe").first.text

              committee = xi.css("komite").first
              if committee && committee['nil'] != "true"
                issue.committee committee.css("navn").first.text
              end

              xtopics = xi.css("emne")
              if xtopics.any?
                issue.topics do |topics|
                  xtopics.each do |xt|
                    topics.topic xt.css("navn").first.text
                  end
                end
              end

            end
          end
        end

        xml
      end

      def convert_districts
        xml = create_builder
        xml.districts do |districts|
          @doc.css("fylker_liste fylke").each do |xd|
            districts.district do |district|
              district.externalId xd.css("id").first.text
              district.name xd.css("navn").first.text
            end
          end
        end

        xml
      end

      def convert_committees
        xml = create_builder
        xml.committees do |committees|
          @doc.css("komiteer_liste komite").each do |xc|
            committees.committee do |committee|
              committee.externalId xc.css("id").first.text
              committee.name xc.css("navn").first.text
            end
          end
        end

        xml
      end

      def convert_topics
        xml = create_builder
        xml.topics { |topics|
          @doc.css("emne_liste > emne").each do |xt|
            topics.topic do |topic|
              add_topic(topic, xt)

              topic.subtopics do |subtopics|
                xt.css("underemne_liste > emne").each do |xst|
                  subtopics.topic do |subtopic|
                    add_topic(subtopic, xst)
                  end
                end
              end
            end
          end
        }

        xml
      end

      def add_topic(builder, node)
        builder.externalId node.css("id").first.text
        builder.name node.css("navn").first.text
      end

      def create_builder
        self.class.builder
      end
    end
  end
end