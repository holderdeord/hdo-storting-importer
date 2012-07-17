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

      it 'converts itself to HDO XML' do
        Committee.new("ARBSOS", 'Arbeids- og sosialkomiteen').to_hdo_xml.should == <<-XML
<committee>
  <externalId>ARBSOS</externalId>
  <name>Arbeids- og sosialkomiteen</name>
</committee>
        XML
      end

    end
  end
end
