# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe District do

      it 'builds committees from Storting XML list' do
        xml = <<-XML
        <?xml version="1.0" encoding="utf-8"?>
        <fylker_oversikt xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://data.stortinget.no">
          <versjon>1.0</versjon>
          <fylker_liste>
            <fylke>
              <versjon>1.0</versjon>
              <id>Ak</id>
              <navn>Akershus</navn>
            </fylke>
            <fylke>
              <versjon>1.0</versjon>
              <id>Bu</id>
              <navn>Buskerud</navn>
            </fylke>
          </fylker_liste>
        </fylker_oversikt>
        XML

        districts = District.from_storting_doc(parse(xml))
        districts.size.should == 2

        district = districts.first

        district.name.should == 'Akershus'
        district.external_id.should == 'Ak'
      end

      it 'can serialize as JSON' do
        expected = <<-JSON
        {
          "kind": "hdo#district",
          "externalId": "Ak",
          "name": "Akershus"
        }
        JSON

        District.new("Ak", "Akershus").to_json.should be_json(expected)
      end

      it 'can deserialize JSON' do
        orig = District.new("Ak", "Akershus")
        District.from_json(orig.to_json).should == orig
      end

      it 'can deserialize a JSON array' do
        orig = [ District.new("Ak", "Akershus") ]
        District.from_json(orig.to_json).should == orig
      end

      it 'fails if the given JSON is invalid' do
        json = '{
          "externalId": "1"
        }'

        expect { District.from_json(json) }.to raise_error(ValidationError)
      end

      it 'has a kind' do
        District.kind.should == 'hdo#district'
      end

      it 'has a description' do
        District.description.should be_kind_of(String)
      end

      it 'has a JSON example' do
        District.json_example.should be_kind_of(String)
      end

      it 'has a list of fields' do
        District.fields.should_not be_empty
      end

      it 'has #short_inspect' do
        District.example.short_inspect.should be_kind_of(String)
      end

    end
  end
end
