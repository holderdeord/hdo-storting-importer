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

      it 'can serialize as HDO XML' do
        District.new("Ak", "Akershus").to_hdo_xml.should == <<-XML
<district>
  <externalId>Ak</externalId>
  <name>Akershus</name>
</district>
        XML
      end

      it 'can deserialize a HDO XML node' do
        orig = District.new("Ak", "Akershus")
        District.from_hdo_node(parse(orig.to_hdo_xml)).should == orig
      end

      it 'can deserialize a HDO XML doc' do
        orig = District.new("Ak", "Akershus")
        District.from_hdo_doc(parse("<districts>#{orig.to_hdo_xml}</districts>")).should == [orig]
      end


    end
  end
end
