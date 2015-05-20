# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe Vote do

      it_behaves_like 'type with JSON schema'
      it_behaves_like 'type with #short_inspect'

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
        vote.enacted.should be false
        vote.subject.should == 'Forslag 24 - 26 på vegne av Per Olaf Lundteigen'
        vote.method_name.should == 'ikke_spesifisert'
        vote.result_type.should == 'ikke_spesifisert'
        vote.time.should == '2012-04-12T16:37:27.053'
        vote.counts.for.should == 2
        vote.counts.against.should == 96
        vote.counts.absent.should == 71
      end

      it 'can serialize as JSON' do
        Vote.example.to_json.should be_json <<-JSON
        {
          "kind": "hdo#vote",
          "external_id": "2175",
          "external_issue_id": "51448",
          "counts": {
            "for": 2,
            "against": 96,
            "absent": 71
          },
          "personal": true,
          "enacted": false,
          "subject": "Forslag 24 - 26 på vegne av Per Olaf Lundteigen",
          "method": "ikke_spesifisert",
          "result_type": "ikke_spesifisert",
          "time": "2012-04-12T16:37:27.053",
          "representatives": [
            {
              "kind": "hdo#representative",
              "external_id": "ADA",
              "first_name": "André Oktay",
              "last_name": "Dahl",
              "email": "aod@stortinget.no",
              "gender": "M",
              "date_of_birth": "1975-07-07T00:00:00",
              "date_of_death": "0001-01-01T00:00:00",
              "district": "Akershus",
              "parties": [{"kind": "hdo#party_membership", "external_id": "H", "start_date": "2011-10-01", "end_date": null}],
              "committees": [{"kind": "hdo#committee_membership", "external_id": "JUSTIS", "start_date": "2011-10-01", "end_date": null}],
              "vote_result": "for"
            }
            ],
          "propositions": [
            {
              "kind": "hdo#proposition",
              "external_id": "1234",
              "description": "description",
              "on_behalf_of": "on behalf of",
              "body": "body",
              "delivered_by": {
                "kind": "hdo#representative",
                "external_id": "ADA",
                "first_name": "André Oktay",
                "last_name": "Dahl",
                "email": "aod@stortinget.no",
                "gender": "M",
                "date_of_birth": "1975-07-07T00:00:00",
                "date_of_death": "0001-01-01T00:00:00",
                "district": "Akershus",
                "parties": [{"kind": "hdo#party_membership", "external_id": "H", "start_date": "2011-10-01", "end_date": null}],
                "committees": [{"kind": "hdo#committee_membership", "external_id": "JUSTIS", "start_date": "2011-10-01", "end_date": null}]
              }
            }
          ]
        }
        JSON
      end

      it 'can create a customized example' do
        obj = Vote.example('subject' => 'foo')
        obj.subject.should == 'foo'
      end

    end
  end
end
