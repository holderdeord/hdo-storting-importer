#!/usr/bin/env ruby

require 'nokogiri'
require 'builder'
require 'tempfile'

class Converter
  def self.from_file(path)
    new Nokogiri.XML(File.read(path))
  end

  def initialize(doc)
    doc.remove_namespaces!
    @doc = doc.first_element_child
  end

  def to_xml
    case @doc.name
    when 'partier_oversikt'
      convert_parties
    when 'dagensrepresentanter_oversikt'
      convert_representatives
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
  end

  def add_topic(builder, node)
    builder.externalId node.css("id").first.text
    builder.name node.css("navn").first.text
  end

  def convert_parties
    xml = create_builder
    xml.parties do |parties|
      @doc.css("partier_liste parti").each do |xp|
        parties.party do |party|
          party.externalId xp.css("id").first.text
          party.name xp.css("navn").first.text
        end
      end
    end

    xml.target!
  end

  def convert_representatives
    xml = create_builder
    xml.representatives do |reps|
      @doc.css("dagensrepresentant").each do |xrep|
        reps.representative do |rep|
          rep.externalId xrep.css("id").first.text
          rep.firstName xrep.css("fornavn").first.text
          rep.lastName xrep.css("etternavn").first.text
          rep.district xrep.css("fylke navn").first.text
          rep.party xrep.css("parti navn").first.text
          rep.committees do |coms|
            xrep.css("komite").each do |xcom|
              coms.committee xcom.css("navn").text
            end
          end
          rep.period("2011-2012") # FIXME
        end
      end
    end

    xml.target!
  end

  def create_builder
    b = Builder::XmlMarkup.new :indent => 2
    b.instruct!

    b
  end
end

class Importer

  def initialize(app_root = ENV['APP_ROOT'], opts = {})
    @app_root = app_root or raise "must point APP_ROOT at checkout of git://github.com/holderdeord/hdo-site.git"
  end

  def execute
    files.each { |path| import path }
  end

  def print
    puts Converter.from_file(files.last).to_xml
  end

  private

  def import(path)
    Tempfile.open("storting2hdo") do |f|
      f << Converter.from_file(path).to_xml
      f.close

      Dir.chdir(@app_root) { system "script/import", f.path }
    end
  end

  def files
    %w[
      folketingparser/rawdata/data.stortinget.no/eksport/partier/index.html?sesjonid=2011-2012
      folketingparser/rawdata/data.stortinget.no/eksport/komiteer/index.html?SesjonId=2011-2012
      folketingparser/rawdata/data.stortinget.no/eksport/fylker/index.html
      folketingparser/rawdata/data.stortinget.no/eksport/dagensrepresentanter/index.html
      folketingparser/rawdata/data.stortinget.no/eksport/emner/index.html
      folketingparser/rawdata/data.stortinget.no/eksport/saker/index.html?sesjonid=2011-2012
    ].map { |e| File.expand_path("../../#{e}", __FILE__) }
  end

end

importer = Importer.new

case ARGV.first
when 'import', nil
  importer.execute
when 'print'
  importer.print
end

