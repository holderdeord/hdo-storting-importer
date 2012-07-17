# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe Issue do

      it 'builds issues from Storting XML list' do
        xml = <<-XML
        <?xml version="1.0" encoding="utf-8"?>
        <saker_oversikt xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://data.stortinget.no">
          <versjon>1.0</versjon>
          <saker_liste>
            <sak>
              <versjon>1.0</versjon>
              <behandlet_sesjon_id i:nil="true" />
              <dokumentgruppe>proposisjon</dokumentgruppe>
              <emne_liste>
                <emne>
                  <versjon>1.0</versjon>
                  <er_hovedemne>true</er_hovedemne>
                  <id>163</id>
                  <navn>UTENRIKSSAKER</navn>
                  <underemne_liste />
                </emne>
                <emne>
                  <versjon>1.0</versjon>
                  <er_hovedemne>false</er_hovedemne>
                  <id>166</id>
                  <navn>TRAKTATER</navn>
                  <underemne_liste />
                </emne>
                <emne>
                  <versjon>1.0</versjon>
                  <er_hovedemne>false</er_hovedemne>
                  <id>171</id>
                  <navn>NORDISK SAMARBEID</navn>
                  <underemne_liste />
                </emne>
              </emne_liste>
              <henvisning>Prop. 90 S (2011-2012)</henvisning>
              <id>53520</id>
              <innstilling_id>-1</innstilling_id>
              <komite i:nil="true" />
              <korttittel>Inngåelse av avtale om opprettelse av sekretariatet for Den nordlige dimensjons partnerskap for helse og livskvalitet (NDPHS)</korttittel>
              <sak_fremmet_id>53520</sak_fremmet_id>
              <saksordfoerer_liste />
              <sist_oppdatert_dato>2012-04-20T00:00:00</sist_oppdatert_dato>
              <status>mottatt</status>
              <tittel>Samtykke til inngåelse av avtale av 25. november 2011 om opprettelse av sekretariatet for Den nordlige dimensjons partnerskap for helse og livskvalitet (NDPHS)</tittel>
              <type>alminneligsak</type>
            </sak>
          </saker_liste>
        </saker_oversikt>
        XML

        issues = Issue.from_storting_doc(parse(xml))
        issues.size.should == 1

        issue = issues.first
        issue.document_group.should == 'proposisjon'
        issue.categories.should == ['UTENRIKSSAKER', 'TRAKTATER', 'NORDISK SAMARBEID']
        issue.reference.should == 'Prop. 90 S (2011-2012)'
        issue.external_id.should == '53520'
        issue.summary.should == 'Inngåelse av avtale om opprettelse av sekretariatet for Den nordlige dimensjons partnerskap for helse og livskvalitet (NDPHS)'
        issue.last_update.should == '2012-04-20T00:00:00'
        issue.status.should == 'mottatt'
        issue.description.should == 'Samtykke til inngåelse av avtale av 25. november 2011 om opprettelse av sekretariatet for Den nordlige dimensjons partnerskap for helse og livskvalitet (NDPHS)'
        issue.type.should == 'alminneligsak'
      end

    end
  end
end
