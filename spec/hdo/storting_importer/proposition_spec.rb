require 'spec_helper'

module Hdo
  module StortingImporter
    describe Proposition do

      it 'can deserialize JSON' do
        orig = Proposition.example
        Proposition.from_json(orig.to_json).should == orig
      end

      it 'can deserialize a JSON array' do
        orig = [Proposition.example]
        Proposition.from_json(orig.to_json).should == orig
      end
      
      it 'fails if the given JSON is invalid' do
        json = Proposition.example.to_hash
        json.delete :description

        expect { Proposition.from_json(json.to_json) }.to raise_error(ValidationError)
      end

      it 'has a kind' do
        Proposition.kind.should == 'hdo#proposition'
      end

      it 'has a description' do
        Proposition.description.should be_kind_of(String)
      end

      it 'has a JSON example' do
        Proposition.json_example.should be_kind_of(String)
      end

      it 'has #short_inspect' do
        str = Proposition.example.short_inspect
        str.should be_kind_of(String)
        str.should_not include("nil")
      end

    end
  end
end
