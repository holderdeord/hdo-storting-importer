# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe ParliamentIssueDetails do

      it_behaves_like 'type with JSON schema'
      it_behaves_like 'type with #short_inspect'

      it 'builds parliament issue details from Storting XML' do
        xml = <<-XML
        <?xml version="1.0" encoding="utf-8"?>
<detaljert_sak xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://data.stortinget.no">
  <versjon>1.3</versjon>
  <dokumentgruppe>representantforslag</dokumentgruppe>
  <emne_liste>
    <emne>
      <versjon>1.3</versjon>
      <er_hovedemne>false</er_hovedemne>
      <hovedemne_id>2</hovedemne_id>
      <id>106</id>
      <navn>SAMFERDSEL</navn>
      <underemne_liste />
    </emne>
    <emne>
      <versjon>1.3</versjon>
      <er_hovedemne>true</er_hovedemne>
      <hovedemne_id>143</hovedemne_id>
      <id>143</id>
      <navn>SJØFART</navn>
      <underemne_liste />
    </emne>
  </emne_liste>
  <ferdigbehandlet>true</ferdigbehandlet>
  <henvisning>Dokument 8:175 S (2009-2010), Innst. 109 S (2010-2011)</henvisning>
  <id>47163</id>
  <innstillingstekst>Innstilling fra transport- og kommunikasjonskomiteen om representantforslag fra stortingsrepresentantene Knut Arild Hareide, Hans Olav Syversen, Kjell Ingolf Ropstad, Rigmor Andersen Eide og Geir Jørgen Bekkevold om å utrede etablering av en transportetat, etter modell fra Sverige og Finland, med ansvar for vei, kollektiv, luftfart og sjøtransport, for å sikre helhetlig planlegging, vedlikehold og utbygging i transportsektoren</innstillingstekst>
  <komite>
    <versjon>1.3</versjon>
    <id>TRANSKOM</id>
    <navn>Transport- og kommunikasjonskomiteen</navn>
  </komite>
  <korttittel>Representantforslag om å utrede etablering av en transportetat</korttittel>
  <kortvedtak>Stortinget har med bakgrunn i representantforslag fra Kristelig Folkeparti drøftet forslag om å utrede etablering av en felles transportetat etter modell fra Sverige og Finland. Stortinget fattet vedtak om å legge forslaget ved protokollen med stemmene fra Ap, SV og Sp.</kortvedtak>
  <parentestekst>Forslag fra (KrF)</parentestekst>
  <publikasjon_referanse_liste>
    <publikasjon_referanse>
      <versjon>1.3</versjon>
      <eksport_id i:nil="true" />
      <lenke_tekst>Dokument 8:175 S (2009-2010)</lenke_tekst>
      <lenke_url>https://www.stortinget.no/no/Saker-og-publikasjoner/Publikasjoner/Representantforslag/2009-2010/dok8-200910-175/</lenke_url>
      <type>dok8</type>
      <undertype i:nil="true" />
    </publikasjon_referanse>
    <publikasjon_referanse>
      <versjon>1.3</versjon>
      <eksport_id>s100930</eksport_id>
      <lenke_tekst>Stortingsreferat 30.09.2010</lenke_tekst>
      <lenke_url>https://www.stortinget.no/no/Saker-og-publikasjoner/Publikasjoner/Referater/Stortinget/2009-2010/100930/referatsaker/</lenke_url>
      <type>referat</type>
      <undertype>storting</undertype>
    </publikasjon_referanse>
    <publikasjon_referanse>
      <versjon>1.3</versjon>
      <eksport_id i:nil="true" />
      <lenke_tekst>Innst. 109 S (2010-2011)</lenke_tekst>
      <lenke_url>https://www.stortinget.no/no/Saker-og-publikasjoner/Publikasjoner/Innstillinger/Stortinget/2010-2011/inns-201011-109/</lenke_url>
      <type>innstilling</type>
      <undertype>storting</undertype>
    </publikasjon_referanse>
    <publikasjon_referanse>
      <versjon>1.3</versjon>
      <eksport_id>s101208</eksport_id>
      <lenke_tekst>Stortingsreferat 08.12.2010</lenke_tekst>
      <lenke_url>https://www.stortinget.no/no/Saker-og-publikasjoner/Publikasjoner/Referater/Stortinget/2010-2011/101208/7/</lenke_url>
      <type>referat</type>
      <undertype>storting</undertype>
    </publikasjon_referanse>
  </publikasjon_referanse_liste>
  <sak_nummer>175</sak_nummer>
  <sak_opphav>
    <versjon>1.3</versjon>
    <forslagstiller_liste>
      <representant>
        <versjon>1.3</versjon>
        <doedsdato>0001-01-01T00:00:00</doedsdato>
        <etternavn>Bekkevold</etternavn>
        <foedselsdato>1963-11-19T00:00:00</foedselsdato>
        <fornavn>Geir Jørgen</fornavn>
        <id>GJB</id>
        <kjoenn>mann</kjoenn>
        <fylke>
          <versjon>1.3</versjon>
          <id>Te</id>
          <navn>Telemark</navn>
        </fylke>
        <parti>
          <versjon>1.3</versjon>
          <id>KrF</id>
          <navn>Kristelig Folkeparti</navn>
        </parti>
      </representant>
      <representant>
        <versjon>1.3</versjon>
        <doedsdato>0001-01-01T00:00:00</doedsdato>
        <etternavn>Syversen</etternavn>
        <foedselsdato>1966-11-25T00:00:00</foedselsdato>
        <fornavn>Hans Olav</fornavn>
        <id>HOSY</id>
        <kjoenn>mann</kjoenn>
        <fylke>
          <versjon>1.3</versjon>
          <id>Os</id>
          <navn>Oslo</navn>
        </fylke>
        <parti>
          <versjon>1.3</versjon>
          <id>KrF</id>
          <navn>Kristelig Folkeparti</navn>
        </parti>
      </representant>
      <representant>
        <versjon>1.3</versjon>
        <doedsdato>0001-01-01T00:00:00</doedsdato>
        <etternavn>Ropstad</etternavn>
        <foedselsdato>1985-06-01T00:00:00</foedselsdato>
        <fornavn>Kjell Ingolf</fornavn>
        <id>KJR</id>
        <kjoenn>mann</kjoenn>
        <fylke>
          <versjon>1.3</versjon>
          <id>AA</id>
          <navn>Aust-Agder</navn>
        </fylke>
        <parti>
          <versjon>1.3</versjon>
          <id>KrF</id>
          <navn>Kristelig Folkeparti</navn>
        </parti>
      </representant>
      <representant>
        <versjon>1.3</versjon>
        <doedsdato>0001-01-01T00:00:00</doedsdato>
        <etternavn>Hareide</etternavn>
        <foedselsdato>1972-11-23T00:00:00</foedselsdato>
        <fornavn>Knut Arild</fornavn>
        <id>KNAH</id>
        <kjoenn>mann</kjoenn>
        <fylke>
          <versjon>1.3</versjon>
          <id>Ak</id>
          <navn>Akershus</navn>
        </fylke>
        <parti>
          <versjon>1.3</versjon>
          <id>KrF</id>
          <navn>Kristelig Folkeparti</navn>
        </parti>
      </representant>
      <representant>
        <versjon>1.3</versjon>
        <doedsdato>0001-01-01T00:00:00</doedsdato>
        <etternavn>Eide</etternavn>
        <foedselsdato>1954-06-26T00:00:00</foedselsdato>
        <fornavn>Rigmor Andersen</fornavn>
        <id>RAE</id>
        <kjoenn>kvinne</kjoenn>
        <fylke>
          <versjon>1.3</versjon>
          <id>MR</id>
          <navn>Møre og Romsdal</navn>
        </fylke>
        <parti>
          <versjon>1.3</versjon>
          <id>KrF</id>
          <navn>Kristelig Folkeparti</navn>
        </parti>
      </representant>
    </forslagstiller_liste>
  </sak_opphav>
  <sak_relasjon_liste />
  <sak_sesjon>2009-2010</sak_sesjon>
  <saksgang>
    <versjon>1.3</versjon>
    <id>REPRFORS</id>
    <navn>Forslag fra Representanter</navn>
    <saksgang_steg_liste>
      <saksgang_steg>
        <versjon>1.3</versjon>
        <id>SAK</id>
        <navn>Forslag</navn>
        <steg_nummer>1</steg_nummer>
        <uaktuell>false</uaktuell>
      </saksgang_steg>
      <saksgang_steg>
        <versjon>1.3</versjon>
        <id>KOMBEH</id>
        <navn>Komitebehandling</navn>
        <steg_nummer>2</steg_nummer>
        <uaktuell>false</uaktuell>
      </saksgang_steg>
      <saksgang_steg>
        <versjon>1.3</versjon>
        <id>DEBATT</id>
        <navn>Debatt og vedtak</navn>
        <steg_nummer>3</steg_nummer>
        <uaktuell>false</uaktuell>
      </saksgang_steg>
    </saksgang_steg_liste>
  </saksgang>
  <saksordfoerer_liste>
    <representant>
      <versjon>1.3</versjon>
      <doedsdato>0001-01-01T00:00:00</doedsdato>
      <etternavn>Bjørnflaten</etternavn>
      <foedselsdato>1969-06-18T00:00:00</foedselsdato>
      <fornavn>Anne Marit</fornavn>
      <id>ANMB</id>
      <kjoenn>kvinne</kjoenn>
      <fylke>
        <versjon>1.3</versjon>
        <id>Tr</id>
        <navn>Troms</navn>
      </fylke>
      <parti>
        <versjon>1.3</versjon>
        <id>A</id>
        <navn>Arbeiderpartiet</navn>
      </parti>
    </representant>
  </saksordfoerer_liste>
  <status>behandlet</status>
  <stikkord_liste xmlns:d2p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
    <d2p1:string>Transportetat</d2p1:string>
    <d2p1:string>Transportsektoren</d2p1:string>
  </stikkord_liste>
  <tittel>Representantforslag fra stortingsrepresentantene Knut Arild Hareide, Hans Olav Syversen, Kjell Ingolf Ropstad, Rigmor Andersen Eide og Geir Jørgen Bekkevold om å utrede etablering av en transportetat, etter modell fra Sverige og Finland, med ansvar for vei, kollektiv, luftfart og sjøtransport for å sikre helhetlig planlegging, vedlikehold og utbygging i transportsektoren</tittel>
  <type>alminneligsak</type>
  <vedtakstekst>Vedtak i samsvar med innstillingen med avvik/tillegg</vedtakstekst>
</detaljert_sak>
        XML

        issue_details = ParliamentIssueDetails.from_storting_doc(parse(xml))

        issue_details.external_id.should == '47163'
        issue_details.links.size.should == 4

        issue_details.links[1].should == {
          'external_id' => 's100930',
          'title'       => 'Stortingsreferat 30.09.2010',
          'url'         => 'https://www.stortinget.no/no/Saker-og-publikasjoner/Publikasjoner/Referater/Stortinget/2009-2010/100930/referatsaker/',
          'type'        => 'referat',
          'subtype'     => 'storting'
        }
      end

      it 'can serialize as JSON' do
        ParliamentIssueDetails.example.to_json.should be_json <<-JSON
        {
          "kind": "hdo#parliament_issue_details",
          "external_id" : "53520",
          "links": [
            {
                "external_id": "s101208",
                "title": "Stortingsreferat 08.12.2010",
                "url": "https://www.stortinget.no/no/Saker-og-publikasjoner/Publikasjoner/Referater/Stortinget/2010-2011/101208/7/",
                "type": "referat",
                "subtype": "storting"
            }
          ]
        }
        JSON
      end

    end
  end
end
