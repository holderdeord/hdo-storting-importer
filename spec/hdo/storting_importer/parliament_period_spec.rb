# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe ParliamentPeriod do

      it_behaves_like 'type with JSON schema'
      it_behaves_like 'type with #short_inspect'

      it 'builds parliament periods from Storting XML list' do
        xml = <<-XML
<?xml version="1.0" encoding="utf-8"?>
<stortingsperioder_oversikt xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://data.stortinget.no">
  <versjon>1.0</versjon
  <innevaerende_stortingsperiode>
    <versjon>1.0</versjon
    <fra>2009-10-01T00:00:00</fra
    <id>2009-2013</id
    <til>2013-09-30T23:59:59</til
  </innevaerende_stortingsperiode>
  <stortingsperioder_liste>
    <stortingsperiode>
      <versjon>1.0</versjon>
      <fra>2009-10-01T00:00:00</fra>
      <id>2009-2013</id>
      <til>2013-09-30T23:59:59</til>
    </stortingsperiode>
    <stortingsperiode>
      <versjon>1.0</versjon>
      <fra>2005-10-01T00:00:00</fra>
      <id>2005-2009</id>
      <til>2009-09-30T23:59:59</til>
    </stortingsperiode>
  </stortingsperioder_liste>
</stortingsperioder_oversikt>
        XML

        periods = ParliamentPeriod.from_storting_doc(parse(xml))

        # we ignore the 'current period', which can be inferred from the current date
        periods.size.should == 2

        period = periods.first

        period.external_id.should == '2009-2013'
        period.start_date.should == Date.parse('2009-10-01')
        period.end_date.should == Date.parse('2013-09-30')
      end

      it 'can serialize as JSON' do
        expected = <<-JSON
        {
          "kind": "hdo#parliamentPeriod",
          "externalId": "2009-2013",
          "startDate": "2009-10-01",
          "endDate": "2013-09-30"
        }
        JSON

        period = ParliamentPeriod.new("2009-2013", Date.parse('2009-10-01'), Date.parse('2013-09-30'))
        period.to_json.should be_json(expected)
      end

      it 'can create a customized example' do
        obj = ParliamentPeriod.example('endDate' => nil)
        obj.end_date.should be_nil
      end

    end
  end
end
