# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe Promise do

      it_behaves_like 'type with JSON schema'
      it_behaves_like 'type with #short_inspect'

      it 'serializes to JSON' do
        Promise.example.to_json.should be_json <<-JSON
        {
          "kind": "hdo#promise",
          "externalId": "1",
          "party": "H",
          "general": true,
          "categories": ["GRUNNSKOLE"],
          "source": "PP",
          "page": 8,
          "body": "Stille strengere krav til orden og oppførsel for å hindre at uro ødelegger undervisningen.",
          "date": "2009-06-01"
        }
        JSON
      end

      it 'strips trailing space from the body' do
        promise = Promise.new("1", "Party", "Body   ", true, ["æøå"], "PP", 8, '2012-06-01')
        promise.body.should == "Body"
      end

      it 'correctly upcases non-ASCII category names' do
        promise = Promise.new("1", "Party", "Body", true, ["æøå"], "PP", 8, '2012-06-01')
        promise.categories.should == ["ÆØÅ"]
      end

      it 'ignores empty categories' do
        promise = Promise.new("1", "Party", "Body", true, ["FOO", ""], "PP", 8, '2012-06-01')
        promise.categories.should == ["FOO"]
      end

    end
  end
end
