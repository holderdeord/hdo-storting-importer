# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe Committee do

      it 'builds committees from Storting XML list' do
        xml = <<-XML
        <?xml version="1.0" encoding="utf-8"?>
        <komiteer_oversikt xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://data.stortinget.no">
          <versjon>1.0</versjon>
          <komiteer_liste>
            <komite>
              <versjon>1.0</versjon>
              <id>ARBSOS</id>
              <navn>Arbeids- og sosialkomiteen</navn>
            </komite>
            </komiteer_liste>
        </komiteer_oversikt>
        XML

        committees = Committee.from_storting_doc(parse(xml))
        committees.size.should == 1
        committees.first.name.should == 'Arbeids- og sosialkomiteen'
        committees.first.external_id.should == "ARBSOS"
      end

      it 'can serialize as JSON' do
        str = Committee.new("ARBSOS", 'Arbeids- og sosialkomiteen').to_json
        str.should be_json <<-JSON
          {
            "kind": "hdo#committee",
            "externalId": "ARBSOS",
            "name": "Arbeids- og sosialkomiteen"
          }
        JSON
      end

      it 'can deserialize JSON' do
        com = Committee.new("ARBSOS", 'Arbeids- og sosialkomiteen')
        Committee.from_json(com.to_json).should == com
      end

      it 'can deserialize a JSON array' do
        input = [Committee.new("ARBSOS", 'Arbeids- og sosialkomiteen')]
        Committee.from_json(input.to_json).should == input
      end

      it 'fails to deserialize if the JSON input is invalid' do
        invalid = <<-JSON
        {
          "kind": "hdo#committee",
          "externalId": "foo"
        }
        JSON

        expect { Committee.from_json invalid }.to raise_exception
      end

      it 'has a kind' do
        Committee.kind.should == 'hdo#committee'
      end

      it 'has a description' do
        Committee.description.should be_kind_of(String)
      end

      it 'has a JSON example' do
        Committee.json_example.should be_kind_of(String)
      end

      it 'has a list of fields' do
        Committee.fields.should_not be_empty
      end

      it 'has #short_inspect' do
        Committee.example.short_inspect.should be_kind_of(String)
      end

    end
  end
end
