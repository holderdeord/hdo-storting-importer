# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe Promise do

      it_behaves_like 'type with JSON schema'
      it_behaves_like 'type with #short_inspect'

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

      it 'serializes to JSON' do
        Promise.example.to_json.should be_json <<-JSON
        {
          "kind": "hdo#promise",
          "externalId": "1",
          "party": "H",
          "general": true,
          "categories": ["GRUNNSKOLE"],
          "source": "PP",
          "page": 8,
          "body": "Stille strengere krav til orden og oppførsel for å hindre at uro ødelegger undervisningen."
        }
        JSON
      end

      it 'deserializes from JSON with externalId missing' do
        pr = Promise.example
        pr.external_id = nil

        Promise.from_json(pr.to_json).should be_kind_of(Promise)
      end

      it 'strips trailing space from the body' do
        promise = Promise.new("Party", "Body   ", true, ["æøå"], "PP", 8)
        promise.body.should == "Body"
      end

      it 'correctly upcases non-ASCII category names' do
        promise = Promise.new("Party", "Body", true, ["æøå"], "PP", 8)
        promise.categories.should == ["ÆØÅ"]
      end

      it 'ignores empty categories' do
        promise = Promise.new("Party", "Body", true, ["FOO", ""], "PP", 8)
        promise.categories.should == ["FOO"]
      end

    end
  end
end
