# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe PartyMembership do

      it_behaves_like 'type with JSON schema'

      it 'can serialize as JSON' do
        str = PartyMembership.example.to_json
        str.should be_json <<-JSON
          {
            "kind": "hdo#party_membership",
            "external_id": "A",
            "start_date": "2009-09-01",
            "end_date": "2013-08-01"
          }
        JSON
      end

      it 'can create a customized example' do
        obj = PartyMembership.example('external_id' => 'foo')
        obj.external_id.should == 'foo'
      end

    end
  end
end
