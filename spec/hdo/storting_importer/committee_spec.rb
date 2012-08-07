# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe Committee do

      it_behaves_like 'type with JSON schema'
      it_behaves_like 'type with #short_inspect'

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
        str = Committee.example.to_json
        str.should be_json <<-JSON
          {
            "kind": "hdo#committee",
            "externalId": "ARBSOS",
            "name": "Arbeids- og sosialkomiteen"
          }
        JSON
      end

    end
  end
end
