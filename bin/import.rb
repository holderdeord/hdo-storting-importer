#!/usr/bin/env ruby

require 'nokogiri'
require 'builder'
require 'tempfile'
require 'open-uri'

IMPORT_ROOT = File.expand_path("../..", __FILE__)

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
      convert_parties
    when 'dagensrepresentanter_oversikt', 'representanter_oversikt'
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

    xml
  end

  def convert_representatives
    xml = create_builder

    xml.representatives do |reps|
      nodes = @doc.css("dagensrepresentant")
      nodes += @doc.css("representant")

      seen = []
      nodes.each do |xrep|
        b = RepresentativeBuilder.new(reps, xrep)
        b.build unless seen.include?(b.external_id)

        seen << b.external_id
      end
    end

    xml
  end

  def create_builder
    self.class.builder
  end
end

class RepresentativeBuilder
  def initialize(builder, node)
    @builder = builder
    @node = node
  end

  def external_id
    @node.css("id").first.text
  end

  def build
    @builder.representative do |rep|
      # required
      rep.externalId   external_id
      rep.firstName    @node.css("fornavn").first.text
      rep.lastName     @node.css("etternavn").first.text
      rep.dateOfBirth  @node.css("foedselsdato").first.text
      rep.dateOfDeath  @node.css("doedsdato").first.text

      # not required
      rep.district     fetch_if_exists("fylke navn")
      rep.party        fetch_if_exists("parti navn")

      rep.committees do |coms|
        @node.css("komite").each do |xcom|
          coms.committee xcom.css("navn").text
        end
      end

      rep.period("2011-2012") # FIXME

      yield rep if block_given?
    end
  end

  def fetch_if_exists(selector)
    subnode = @node.css(selector).first
    subnode ? subnode.text : ''
  end
end

class Importer

  FILES = {
    :parties         => File.join(IMPORT_ROOT, "folketingparser/rawdata/data.stortinget.no/eksport/partier/index.html?sesjonid=2011-2012"),
    :committees      => File.join(IMPORT_ROOT, "folketingparser/rawdata/data.stortinget.no/eksport/komiteer/index.html?SesjonId=2011-2012"),
    :districts       => File.join(IMPORT_ROOT, "folketingparser/rawdata/data.stortinget.no/eksport/fylker/index.html"),
    :representatives => [
      File.join(IMPORT_ROOT, "folketingparser/rawdata/data.stortinget.no/eksport/representanter/index.html?StortingsPeriodeId=2009-2013"),
      File.join(IMPORT_ROOT, "folketingparser/rawdata/data.stortinget.no/eksport/dagensrepresentanter/index.html")
    ],
    :topics          => File.join(IMPORT_ROOT, "folketingparser/rawdata/data.stortinget.no/eksport/emner/index.html"),
    :issues          => File.join(IMPORT_ROOT, "folketingparser/rawdata/data.stortinget.no/eksport/saker/index.html?sesjonid=2011-2012")
  }

  def self.execute(args)
    importer = new

    cmd, *rest = args

    if rest.include? '--only-print'
      importer.only_print = true
    end

    if cmd && FILES.member?(cmd.to_sym) || %w[votes dld].include?(cmd)
      importer.import(cmd.to_sym)
    else
      importer.import_all
    end
  end

  attr_accessor :only_print

  def initialize(app_root = ENV['APP_ROOT'])
    @app_root = app_root or raise "must point APP_ROOT at checkout of git://github.com/holderdeord/hdo-site.git"
  end

  def import(what)
    case what
    when :votes
      import_votes
    when :dld
      import_dld
    else
      import_files FILES.fetch(what)
    end
  end

  def import_all
    import_files FILES.fetch(:parties)
    import_files FILES.fetch(:committees)
    import_files FILES.fetch(:districts)
    import_files FILES.fetch(:representatives)
    import_files FILES.fetch(:topics)
    import_files FILES.fetch(:issues)

    # for votes, the output XML is not mapped 1:1 with the types in the input data,
    # so we handle them as a special case
    import_votes
    import_dld
    import_promises
  end

  def with_tmp_xml_for(path)
    Tempfile.open("storting2hdo") do |f|
      f << Converter.from_file(path).to_xml

      yield f
    end
  end

  def import_dld
    run_import File.join(IMPORT_ROOT, 'data/dld-issues.xml')
    run_import File.join(IMPORT_ROOT, 'folketingparser/data/votering-2011-04-04-dld-hdo.xml')
  end

  def import_promises
    run_import File.join(IMPORT_ROOT, 'data/promises-h.xml')
  end

  def import_files(paths)
    Array(paths).each do |path|
      with_tmp_xml_for(path) do |f|
        print_or_import(f)
      end
    end
  end

  def print_or_import(f)
    if only_print
      f.rewind
      puts f.read
    else
      f.close
      run_import f.path
    end
  end

  def run_import(path)
    Dir.chdir(@app_root) { system "script/import", path }
  end

  def import_votes
    issue_paths = Dir[File.join(IMPORT_ROOT, "folketingparser/rawdata/data.stortinget.no/eksport/voteringer/index.html*")]
    issue_paths.each_slice(5) do |paths|
      xml, vote_count = build_votes_xml(paths)

      if vote_count > 0 # no need to invoke this if we're passing empty XML
        if only_print
          puts xml
        else
          Tempfile.open("storting2hdo-votes") { |f|
            f << xml
            f.close

            run_import(f.path)
          }
        end
      end
    end
  end

  def build_votes_xml(files)
    vote_count = 0

    xml = Converter.builder
    xml.votes do |votes|
      files.each do |path|
        doc = Nokogiri::XML.parse(open(path).read)
        doc.remove_namespaces!

        next unless doc.css("sak_votering").any? # ignore issues with no votes

        issue_id = doc.css("sak_id").first.text
        vote_nodes = doc.css("sak_votering")

        vote_nodes.each do |vote_node|
          vote_id = vote_node.css("votering_id").text

          propositions_path = File.join(IMPORT_ROOT, "folketingparser/rawdata/data.stortinget.no/eksport/voteringsforslag/index.html?voteringid=#{vote_id}")
          unless File.exist?(propositions_path)
            raise "propositions not found at #{propositions_path}"
          end

          propositions_doc = Nokogiri::XML.parse(open(propositions_path).read)
          propositions_doc.remove_namespaces!

          propositions_node = propositions_doc.css("voteringsforslag_liste").first
          propositions_node or raise "no propositions in #{propositions_path}"

          if vote_node.css("personlig_votering").text == "true"
            vote_result_path = File.join(IMPORT_ROOT, "folketingparser/rawdata/data.stortinget.no/eksport/voteringsresultat/index.html?voteringid=#{vote_id}")
            unless File.exist?(vote_result_path)
              STDERR.puts "vote result file not found for issue #{issue_id} at #{vote_result_path.inspect}"
              next
            end

            result_doc = Nokogiri::XML.parse(open(vote_result_path).read)
            result_doc.remove_namespaces!

            result_node = result_doc.css("voteringsresultat_liste").first
            result_node or raise "no vote result in #{vote_result_path.inspect}"
          else
            result_node = nil
          end

          vote_count += 1
          build_vote votes, issue_id, vote_id, vote_node, result_node, propositions_node
        end
      end
    end

    [xml.target!, vote_count]
  end

  def build_vote(builder, issue_id, vote_id, vote_node, result_node, propositions_node)
    builder.vote do |vote|
      vote.externalId vote_id
      vote.externalIssueId issue_id

      forc     = Integer(vote_node.css("antall_for").text)
      againstc = Integer(vote_node.css("antall_mot").text)
      absentc = Integer(vote_node.css("antall_ikke_tilstede").text)

      # settes til -1 ved personlig_votering=false
      forc = 0 if forc < 0
      againstc = 0 if againstc < 0
      absentc = 0 if absentc < 0

      vote.counts do |counts|
        counts.for forc
        counts.against againstc
        counts.absent absentc
      end

      vote.enacted vote_node.css("vedtatt").text == "true"
      vote.subject vote_node.css("votering_tema").text
      vote.method vote_node.css("votering_metode").text
      vote.resultType vote_node.css("votering_resultat_type").text
      vote.time vote_node.css("votering_tid").text

      if result_node # personlig votering
        add_representative_votes(vote, result_node)
      end

      vote.propositions do |propositions|
        propositions_node.css("voteringsforslag").each do |xprop|
          propositions.proposition do |proposition|
            proposition.externalId xprop.css("forslag_id").first.text
            proposition.description xprop.css("forslag_betegnelse").first.text

            rep_node = xprop.css("forslag_levert_av_representant").first

            if rep_node && rep_node['nil'] != 'true'
              proposition.deliveredBy { |delivered_by| RepresentativeBuilder.new(delivered_by, rep_node).build }
            end

            proposition.onBehalfOf xprop.css("forslag_paa_vegne_av_tekst").first.text
            proposition.body xprop.css("forslag_tekst").first.text
          end
        end
      end
    end
  end

  def add_representative_votes(vote, result_node)
    vote.representatives { |reps|
      result_node.css("representant_voteringsresultat").each do |xrep|
        RepresentativeBuilder.new(reps, xrep.css("representant").first).build do |rep|

          vote_result = xrep.css("votering").text
          case vote_result
          when 'for'
            rep.voteResult 'for'
          when 'mot'
            rep.voteResult 'against'
          when 'ikke_tilstede'
            rep.voteResult 'absent'
          else
            raise "unexpected vote: #{vote_result.inspect}"
          end
        end
      end
    }
  end
end

if __FILE__ == $0
  if sp = ENV['SOCKS_PROXY']
    require 'socksify'
    host, port = sp.split ":"
    TCPSocket.socks_server = host
    TCPSocket.socks_port = Integer(port)
  end

  Importer.execute(ARGV)
end