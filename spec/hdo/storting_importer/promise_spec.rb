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
          "parties": ["H"],
          "general": true,
          "categories": ["GRUNNSKOLE"],
          "source": "PP",
          "page": 8,
          "body": "Stille strengere krav til orden og oppførsel for å hindre at uro ødelegger undervisningen.",
          "period": "2009-2013"
        }
        JSON
      end

      it 'strips trailing space from the body' do
        promise = Promise.new("1", "Party", "Body   ", true, ["æøå"], "PP", 8, '2009-2013')
        promise.body.should == "Body"
      end

      it 'correctly upcases non-ASCII category names' do
        promise = Promise.new("1", "Party", "Body", true, ["æøå"], "PP", 8, '2009-2013')
        promise.categories.should == ["ÆØÅ"]
      end

      it 'ignores empty categories' do
        promise = Promise.new("1", "Party", "Body", true, ["FOO", ""], "PP", 8, '2009-2013')
        promise.categories.should == ["FOO"]
      end

      it 'can create a customized example' do
        obj = Promise.example('body' => 'foo')
        obj.body.should == 'foo'
      end

      it 'is invalid if period is not the correct format' do
        Promise.example('period' => '2009-06-01').should_not be_valid
      end

    end
  end
end
