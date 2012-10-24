# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe GoverningPeriod do

      it_behaves_like 'type with JSON schema'

      it 'can serialize as JSON' do
        expected = <<-JSON
        {
          "kind": "hdo#governingPeriod",
          "startDate": "2005-10-01",
          "endDate": "2013-09-30"
        }
        JSON

        session = GoverningPeriod.new('2005-10-01', '2013-09-30')
        session.to_json.should be_json(expected)
      end

    end
  end
end
