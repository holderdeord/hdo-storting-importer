# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe Vote do

      def create_vote
        vote = Vote.new('2175', '51448', true, false, 'Forslag 24 - 26 på vegne av Per Olaf Lundteigen', 'ikke_spesifisert', 'ikke_spesifisert', '2012-04-12T16:37:27.053', 2, 96, 71)

        rep = Representative.new('PTA', 'Per-Willy', 'Amundsen', 'M', '1971-01-21T00:00:00', '0001-01-01T00:00:00', 'Troms', 'Fremskrittspartiet', [], '2011-2012')
        rep.vote_result = 'against'

        vote.propositions << Vote::Proposition.new('1234', 'description', 'on behalf of', 'body', rep)
        vote.representatives << rep

        vote
      end

      it "builds votes from the Storting XML list" do
        xml = <<-XML
        <?xml version="1.0" encoding="utf-8"?>
        <sak_votering_oversikt xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://data.stortinget.no">
          <versjon>1.0</versjon>
          <sak_id>51448</sak_id>
          <sak_votering_liste>
            <sak_votering>
              <versjon>1.0</versjon>
              <alternativ_votering_id>-1</alternativ_votering_id>
              <antall_for>2</antall_for>
              <antall_ikke_tilstede>71</antall_ikke_tilstede>
              <antall_mot>96</antall_mot>
              <behandlingsrekkefoelge>1</behandlingsrekkefoelge>
              <dagsorden_sak_nummer>2</dagsorden_sak_nummer>
              <fri_votering>false</fri_votering>
              <kommentar i:nil="true" />
              <personlig_votering>true</personlig_votering>
              <president>
                <versjon>1.0</versjon>
                <doedsdato>0001-01-01T00:00:00</doedsdato>
                <etternavn>Nybakk</etternavn>
                <foedselsdato>1947-02-14T00:00:00</foedselsdato>
                <fornavn>Marit</fornavn>
                <id>MN</id>
                <kjoenn>kvinne</kjoenn>
                <fylke>
                  <versjon>1.0</versjon>
                  <id>Os</id>
                  <navn>Oslo</navn>
                </fylke>
                <parti>
                  <versjon>1.0</versjon>
                  <id>A</id>
                  <navn>Arbeiderpartiet</navn>
                </parti>
              </president>
              <sak_id>51448</sak_id>
              <vedtatt>false</vedtatt>
              <votering_id>2175</votering_id>
              <votering_metode>ikke_spesifisert</votering_metode>
              <votering_resultat_type>ikke_spesifisert</votering_resultat_type>
              <votering_resultat_type_tekst i:nil="true" />
              <votering_tema>Forslag 24 - 26 på vegne av Per Olaf Lundteigen</votering_tema>
              <votering_tid>2012-04-12T16:37:27.053</votering_tid>
            </sak_votering>
          </sak_votering_liste>
        </sak_votering_oversikt>
        XML

        votes = Vote.from_storting_doc(parse(xml))
        votes.size.should == 1

        vote = votes.first
        vote.external_id.should == "2175"
        vote.external_issue_id.should == "51448"
        vote.should be_personal
        vote.enacted.should be_false
        vote.subject.should == 'Forslag 24 - 26 på vegne av Per Olaf Lundteigen'
        vote.method.should == 'ikke_spesifisert'
        vote.result_type.should == 'ikke_spesifisert'
        vote.time.should == '2012-04-12T16:37:27.053'
        vote.counts.for.should == 2
        vote.counts.against.should == 96
        vote.counts.absent.should == 71
      end

      it 'can serialize as HDO XML' do
        vote = create_vote
        vote.to_hdo_xml.should == <<-XML
<vote>
  <externalId>2175</externalId>
  <externalIssueId>51448</externalIssueId>
  <counts>
    <for>2</for>
    <against>96</against>
    <absent>71</absent>
  </counts>
  <personal>true</personal>
  <enacted>false</enacted>
  <subject>Forslag 24 - 26 på vegne av Per Olaf Lundteigen</subject>
  <method>ikke_spesifisert</method>
  <resultType>ikke_spesifisert</resultType>
  <time>2012-04-12T16:37:27.053</time>
  <representatives>
    <representative>
      <externalId>PTA</externalId>
      <firstName>Per-Willy</firstName>
      <lastName>Amundsen</lastName>
      <gender>M</gender>
      <dateOfBirth>1971-01-21T00:00:00</dateOfBirth>
      <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
      <district>Troms</district>
      <party>Fremskrittspartiet</party>
      <committees>
      </committees>
      <period>2011-2012</period>
      <voteResult>against</voteResult>
    </representative>
  </representatives>
  <propositions>
    <proposition>
      <externalId>1234</externalId>
      <description>description</description>
      <onBehalfOf>on behalf of</onBehalfOf>
      <body>body</body>
      <deliveredBy>
        <representative>
          <externalId>PTA</externalId>
          <firstName>Per-Willy</firstName>
          <lastName>Amundsen</lastName>
          <gender>M</gender>
          <dateOfBirth>1971-01-21T00:00:00</dateOfBirth>
          <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
          <district>Troms</district>
          <party>Fremskrittspartiet</party>
          <committees>
          </committees>
          <period>2011-2012</period>
          <voteResult>against</voteResult>
        </representative>
      </deliveredBy>
    </proposition>
  </propositions>
</vote>
        XML
      end

      it 'can deserialize HDO XML' do
        orig = create_vote
        Vote.from_hdo_node(parse(orig.to_hdo_xml)).should == orig
      end

    end
  end
end
