# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe Category do

      it_behaves_like 'type with JSON schema'
      it_behaves_like 'type with #short_inspect'

      it 'builds categories from Storting XML list' do
        xml = <<-XML
        <?xml version="1.0" encoding="utf-8"?>
        <emne_oversikt xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://data.stortinget.no">
          <versjon>1.0</versjon>
          <emne_liste>
            <emne>
              <versjon>1.0</versjon>
              <er_hovedemne>true</er_hovedemne>
              <id>5</id>
              <navn>ARBEIDSLIV</navn>
              <underemne_liste>
                <emne>
                  <versjon>1.0</versjon>
                  <er_hovedemne>false</er_hovedemne>
                  <id>205</id>
                  <navn>ARBEIDSMILJØ</navn>
                  <underemne_liste />
                </emne>
              </underemne_liste>
            </emne>
          </emne_liste>
        </emne_oversikt>
        XML

        categories = Category.from_storting_doc(parse(xml))
        categories.size.should == 1

        cat = categories.first
        cat.name.should == "ARBEIDSLIV"
        cat.external_id.should == "5"

        cat.children.size.should == 1
        cat.children.first.name.should == "ARBEIDSMILJØ"
      end

      it 'can serialize as JSON' do
        cat = Category.new("5", "ARBEIDSLIV")
        cat.children << Category.new("3", "LØNN")

        cat.to_json.should be_json('
        {
          "kind": "hdo#category",
          "external_id": "5",
          "name": "ARBEIDSLIV",
          "sub_categories": [
            { "kind": "hdo#category", "external_id": "3", "name": "LØNN" }
          ]
        }')
      end

      it 'can create a customized example' do
        obj = Category.example('name' => 'foo')
        obj.name.should == 'foo'
      end

    end
  end
end