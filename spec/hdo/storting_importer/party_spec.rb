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

      it 'converts itself to HDO XML' do
        Party.new("A", "Arbeiderpartiet").to_hdo_xml.should == <<-XML
<party>
  <externalId>A</externalId>
  <name>Arbeiderpartiet</name>
</party>
        XML
      end

    end
  end
end
