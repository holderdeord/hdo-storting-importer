# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe ParliamentSession do

      it_behaves_like 'type with JSON schema'
      it_behaves_like 'type with #short_inspect'

      it 'builds parliament sessions from Storting XML list' do
        xml = <<-XML
<?xml version="1.0" encoding="utf-8"?>
<sesjoner_oversikt xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://data.stortinget.no">
  <versjon>1.0</versjon>
  <innevaerende_sesjon>
    <versjon>1.0</versjon>
    <fra>2012-10-01T00:00:00</fra>
    <id>2012-2013</id>
    <til>2013-09-30T23:59:59</til>
  </innevaerende_sesjon>
  <sesjoner_liste>
    <sesjon>
      <versjon>1.0</versjon>
      <fra>2012-10-01T00:00:00</fra>
      <id>2012-2013</id>
      <til>2013-09-30T23:59:59</til>
    </sesjon>
    <sesjon>
      <versjon>1.0</versjon>
      <fra>2011-10-01T00:00:00</fra>
      <id>2011-2012</id>
      <til>2012-09-30T23:59:59</til>
    </sesjon>
  </sesjoner_liste>
</sesjoner_oversikt>
        XML

        sessions = ParliamentSession.from_storting_doc(parse(xml))
        sessions.size.should == 2

        session = sessions.first

        session.external_id.should == '2012-2013'
        session.start_date.should == Date.parse('2012-10-01')
        session.end_date.should == Date.parse('2013-09-30')
      end

      it 'can serialize as JSON' do
        expected = <<-JSON
        {
          "kind": "hdo#parliament_session",
          "external_id": "2012-2013",
          "start_date": "2012-10-01",
          "end_date": "2013-09-30"
        }
        JSON

        session = ParliamentSession.new("2012-2013", Date.parse('2012-10-01'), Date.parse('2013-09-30'))
        session.to_json.should be_json(expected)
      end

      it 'can create a customized example' do
        obj = ParliamentSession.example('end_date' => nil)
        obj.end_date.should be_nil
      end

    end
  end
end
