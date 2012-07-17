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

    end
  end
end
