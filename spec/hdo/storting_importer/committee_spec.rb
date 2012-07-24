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

      it 'can serialize as HDO XML' do
        Committee.new("ARBSOS", 'Arbeids- og sosialkomiteen').to_hdo_xml.should == <<-XML
<committee>
  <externalId>ARBSOS</externalId>
  <name>Arbeids- og sosialkomiteen</name>
</committee>
        XML
      end

      it 'can deserialize a HDO XML node' do
        com = Committee.new("ARBSOS", 'Arbeids- og sosialkomiteen')
        Committee.from_hdo_node(parse(com.to_hdo_xml)).should == com
      end

      it 'can deserialize a HDO XML doc' do
        com = Committee.new("ARBSOS", 'Arbeids- og sosialkomiteen')
        Committee.from_hdo_doc(parse("<committees>#{com.to_hdo_xml}</committees>")).should == [com]
      end

      it 'has a type name' do
        Committee.type_name.should == 'committee'
      end

      it 'has a description' do
        Committee.description.should be_kind_of(String)
      end

      it 'has an XML example' do
        Committee.xml_example.should be_kind_of(String)
      end

      it 'has a list of fields' do
        Committee.fields.should_not be_empty
      end


    end
  end
end
