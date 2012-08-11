# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe Proposition do

      it_behaves_like 'type with JSON schema'
      it_behaves_like 'type with #short_inspect'

      it 'builds proposition from the Storting XML' do
        xml = <<-XML
        <voteringsforslag>
          <versjon>1.0</versjon>
          <forslag_betegnelse>Forslag nr. 24 fra Per Olaf Lundteigen på vegne av Senterpartiet</forslag_betegnelse>
          <forslag_betegnelse_kort>nr. 24 på vegne av Sp</forslag_betegnelse_kort>
          <forslag_id>40037987</forslag_id>
          <forslag_levert_av_representant>
            <versjon>1.0</versjon>
            <doedsdato>0001-01-01T00:00:00</doedsdato>
            <etternavn>Lundteigen</etternavn>
            <foedselsdato>1953-04-18T00:00:00</foedselsdato>
            <fornavn>Per Olaf</fornavn>
            <id>POL</id>
            <kjoenn>mann</kjoenn>
          </forslag_levert_av_representant>
          <forslag_paa_vegne_av_tekst>Senterpartiet:</forslag_paa_vegne_av_tekst>
          <forslag_sorteringsnummer>0</forslag_sorteringsnummer>
          <forslag_tekst>&lt;p&gt;Stortinget ber regjeringa arbeide for å øke sjølforsyningsgraden av mat fra norsk jordbruk.&lt;/p&gt;</forslag_tekst>
          <forslag_type>loest_forslag</forslag_type>
        </voteringsforslag>
        XML

        props = Proposition.from_storting_doc(parse(xml))
        props.size.should == 1

        prop = props.first

        prop.external_id.should == "40037987"
        prop.delivered_by.should be_kind_of(Representative)
        prop.on_behalf_of.should == "Senterpartiet:"
        prop.description.should == "Forslag nr. 24 fra Per Olaf Lundteigen på vegne av Senterpartiet"
        prop.body.should == "<p>Stortinget ber regjeringa arbeide for å øke sjølforsyningsgraden av mat fra norsk jordbruk.</p>"
      end

      it 'builds a proposition from buggy Storting XML' do
        # see https://github.com/holderdeord/hdo-site/issues/138
        xml = <<-XML
        <?xml version="1.0" encoding="utf-8"?>
        <voteringsforslag_oversikt xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://data.stortinget.no">
          <versjon>1.0</versjon>
          <votering_id>2409</votering_id>
          <voteringsforslag_liste>
            <voteringsforslag>
              <versjon>1.0</versjon>
              <forslag_betegnelse i:nil="true" />
              <forslag_betegnelse_kort i:nil="true" />
              <forslag_id>-1</forslag_id>
              <forslag_levert_av_representant i:nil="true" />
              <forslag_paa_vegne_av_tekst i:nil="true" />
              <forslag_sorteringsnummer>0</forslag_sorteringsnummer>
              <forslag_tekst>&lt;FONT SIZE=2&gt;
  &lt;div class=WordSection1&gt;
  &lt;p class=MsoNormal&gt;Utenriksministerens redegjørelse om utviklingen i
  Afghanistan samt norsk sivilt og militært engasjement i Stortingets møte 29.
  mai 2012 - vedlegges protokollen.&lt;BR&gt;
  &lt;/div&gt;
  &lt;/FONT&gt;
              </forslag_tekst>
              <forslag_type>ikke_spesifisert</forslag_type>
            </voteringsforslag>
          </voteringsforslag_liste>
        </voteringsforslag_oversikt>
        XML

        props = Proposition.from_storting_doc(parse(xml))
        props.size.should == 1

        prop = props.first
        prop.description.should == ""
        prop.external_id.should == "-1"
        prop.body.should_not be_empty
      end

    end
  end
end
