# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe Party do

      it 'builds parties from Storting XML list' do
        xml = <<-XML
        <?xml version="1.0" encoding="utf-8"?>
        <partier_oversikt xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://data.stortinget.no">
          <versjon>1.0</versjon>
          <partier_liste>
            <parti>
              <versjon>1.0</versjon>
              <id>A</id>
              <navn>Arbeiderpartiet</navn>
            </parti>
            <parti>
              <versjon>1.0</versjon>
              <id>FrP</id>
              <navn>Fremskrittspartiet</navn>
            </parti>
          </partier_liste>
        </partier_oversikt>
        XML

        parties = Party.from_storting_doc(parse(xml))
        parties.size.should == 2

        parties.map(&:external_id).should == ['A', 'FrP']
        parties.map(&:name).should == ['Arbeiderpartiet', 'Fremskrittspartiet']
      end

      it 'can serialize as HDO XML' do
        Party.new("A", "Arbeiderpartiet").to_hdo_xml.should == <<-XML
<party>
  <externalId>A</externalId>
  <name>Arbeiderpartiet</name>
</party>
        XML
      end

      it 'can deserialize a HDO XML node' do
        orig = Party.new('Sp', 'Senterpartiet')
        Party.from_hdo_node(parse(orig.to_hdo_xml)).should == orig
      end

      it 'can deserialize a HDO XML doc' do
        orig = Party.new('Sp', 'Senterpartiet')
        Party.from_hdo_doc(parse("<parties>#{orig.to_hdo_xml}</parties>")).should == [orig]
      end

      it 'has a type name' do
        Party.type_name.should == 'party'
      end

      it 'has a description' do
        Party.description.should be_kind_of(String)
      end

      it 'has an XML example' do
        Party.xml_example.should be_kind_of(String)
      end

      it 'has a list of fields' do
        Party.fields.should_not be_empty
      end

      it 'unescapes non-ASCII characters in the external id' do
        party = Party.new('_AE_O_A', "Senterpartiet")
        party.external_id.should == "ÆØÅ"
      end

      it 'has #short_inspect' do
        Party.example.short_inspect.should be_kind_of(String)
      end

    end
  end
end
