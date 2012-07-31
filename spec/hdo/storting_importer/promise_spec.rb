# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe Promise do

      it 'builds promises from CSV' do
        csv = <<-CSV
        Parti;Løftetekst;Generell;Emner;Kilde;Side
        A;Ha et inntektspolitisk samarbeid og en økonomisk politikk som sikrer arbeid til alle. ;Ja;LØNN , SYSSELSETTING;PP;10
        A;Følge handlingsregelen for en forsvarlig bruk av oljepenger.;Ja;FINANSER;PP;10
        A;Bruke penger slik at det bidrar til å utjevne svingninger i økonomien.;Ja;FINANSER;PP;10
        A;Sette ned et utvalg som skal gjennomgå årsakene til finanskrisen.;Nei;FINANSER;PP;10
        A;Gjennomføre de tiltak som er nødvendig for å sikre et stabilt og fungerende finansmarked.;Ja;FINANSER;PP;10
        A;Stille etiske krav til forvaltning av statlig kapital. ;Ja;FINANSER;PP;10
        A;Holde de samlede skattene og avgiftene på samme nivå som i dag.;Nei;SKATTER;PP;10
        A;Ha en grundig evaluering av skattereformen av 2006, med særlig blikk på fordelingsvirkningene. ;Ja;SKATTER;PP;10
        A;Opprettholde formueskatten, men gjøre den mer rettferdig.;Ja;SKATTER;PP;10
        CSV


        promises = Promise.from_csv(csv)

        promises.size.should == 9

        prom = promises.first
        prom.party.should == 'A'
        prom.body.should == 'Ha et inntektspolitisk samarbeid og en økonomisk politikk som sikrer arbeid til alle.'
        prom.general.should be_true
        prom.categories.should == %w[LØNN SYSSELSETTING]
        prom.source.should == "PP"
        prom.page.should == '10'
      end

      it 'serializes to HDO XML' do
        Promise.example.to_hdo_xml.should == <<-XML
<promise>
  <party>H</party>
  <general>true</general>
  <categories>
    <category>GRUNNSKOLE</category>
  </categories>
  <source>PP:8</source>
  <body>Stille strengere krav til orden og oppførsel for å hindre at uro ødelegger undervisningen.</body>
</promise>
XML
      end

      it 'deserializes from HDO XML' do
        promises = Promise.from_hdo_doc(parse(<<-XML))
        <promises>
          <promise>
            <party>H</party>
            <general>true</general>
            <categories>
              <category>GRUNNSKOLE</category>
            </categories>
            <source>PP:8</source>
            <body>Stille strengere krav til orden og oppførsel for å hindre at uro ødelegger undervisningen.</body>
          </promise>
        </promises>
        XML

        promises.size.should == 1
        promise = promises.first

        promise.party.should == "H"
        promise.should be_general
        promise.categories.should == ["GRUNNSKOLE"]
        promise.source.should == "PP"
        promise.page.should == "8"
        promise.body.should == "Stille strengere krav til orden og oppførsel for å hindre at uro ødelegger undervisningen."
      end

      it 'has a description' do
        Promise.description.should be_kind_of(String)
      end

      it 'has fields' do
        Promise.fields.should_not be_empty
      end

      it 'has a type name' do
        Promise.type_name.should == 'promise'
      end

      it 'has a an XML example' do
        Promise.xml_example.should be_kind_of(String)
      end

      it 'has #short_inspect' do
        Promise.example.short_inspect.should be_kind_of(String)
      end

      it 'correctly upcases non-ASCII category names' do
        promise = Promise.new("Party", "Body", true, ["æøå"], "PP", 8)
        promise.categories.should == ["ÆØÅ"]
      end

    end
  end
end
