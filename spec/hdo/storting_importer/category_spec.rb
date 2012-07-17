# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe Category do
      
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
      
    end
  end
end