# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe Representative do

      it "builds representatives from the Storting XML list" do
        xml = <<-XML
        <?xml version="1.0" encoding="utf-8"?>
        <representanter_oversikt xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://data.stortinget.no">
          <versjon>1.0</versjon>
          <representanter_liste>
            <representant>
              <versjon>1.0</versjon>
              <doedsdato>0001-01-01T00:00:00</doedsdato>
              <etternavn>Dahl</etternavn>
              <foedselsdato>1975-07-07T00:00:00</foedselsdato>
              <fornavn>André Oktay</fornavn>
              <id>ADA</id>
              <kjoenn>mann</kjoenn>
              <fylke>
                <versjon>1.0</versjon>
                <id>Ak</id>
                <navn>Akershus</navn>
              </fylke>
              <parti>
                <versjon>1.0</versjon>
                <id>H</id>
                <navn>Høyre</navn>
              </parti>
            </representant>
          </representanter_liste>
        </representanter_oversikt>
        XML

        representatives = Representative.from_storting_doc(parse(xml))
        representatives.size.should == 1

        rep = representatives.first
        rep.first_name.should == 'André Oktay'
        rep.last_name.should == 'Dahl'
        rep.gender.should == 'M'
        rep.district.should == 'Akershus'
        rep.party.should == 'Høyre'
        rep.external_id.should == 'ADA'
        rep.date_of_birth.should == '1975-07-07T00:00:00'
        rep.date_of_death.should == '0001-01-01T00:00:00'
      end

      it 'can be serialized to JSON' do
        rep = Representative.example
        rep.to_json.should be_json <<-JSON
          {
            "kind": "hdo#representative",
            "externalId": "ADA",
            "firstName": "André Oktay",
            "lastName": "Dahl",
            "gender": "M",
            "dateOfBirth": "1975-07-07T00:00:00",
            "dateOfDeath": "0001-01-01T00:00:00",
            "district": "Akershus",
            "party": "Høyre",
            "committees": ["Justiskomiteen"],
            "period": "2011-2012"
          }
        JSON
      end

      it 'can deserialize JSON' do
        rep = Representative.example
        Representative.from_json(rep.to_json).should == rep
      end

      it 'can deserialize a JSON array' do
        reps = [Representative.example]
        Representative.from_json(reps.to_json).should == reps
      end

      it 'raises if the JSON if voteResult is invalid' do
        pending "find a validator that checks format"

        invalid = <<-JSON
        {
          "kind": "hdo#representative",
          "externalId": "ADA",
          "firstName": "André Oktay",
          "lastName": "Dahl",
          "gender": "M",
          "dateOfBirth": "1975-07-07T00:00:00",
          "dateOfDeath": "0001-01-01T00:00:00",
          "district": "Akershus",
          "party": "Høyre",
          "committees": ["Justiskomiteen"],
          "period": "2011-2012",
          "voteResult": "blah"
        }

        JSON

        expect {
          Representative.from_json(invalid)
        }.to raise_error(ValidationError)
      end

      it 'raises if the JSON data is invalid' do
        invalid = <<-JSON
        {
          "kind": "hdo#representative",
          "externalId": "ADA",
          "lastName": "Dahl",
          "gender": "M",
          "dateOfBirth": "1975-07-07T00:00:00",
          "dateOfDeath": "0001-01-01T00:00:00",
          "district": "Akershus",
          "party": "Høyre",
          "committees": ["Justiskomiteen"],
          "period": "2011-2012"
        }
        JSON

        expect {
          Representative.from_json(invalid)
        }.to raise_error(ValidationError)
      end

      it 'has a kind' do
        Representative.kind.should == 'hdo#representative'
      end

      it 'has a description' do
        Representative.description.should be_kind_of(String)
      end

      it 'has an JSON example' do
        Representative.json_example.should be_kind_of(String)
      end

      it 'has a list of fields' do
        Representative.fields.should_not be_empty
      end

      it 'unescapes non-ASCII characters in the external id' do
        rep = Representative.example

        rep.instance_variable_set("@external_id", '_AE_O_A')
        rep.external_id.should == "ÆØÅ"
      end

      it 'has #short_inspect' do
        Representative.example.short_inspect.should be_kind_of(String)
      end

    end
  end
end
