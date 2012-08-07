module Hdo
  module StortingImporter
    shared_examples_for "type with JSON schema" do

      it 'can deserialize JSON' do
        ex = described_class.example
        described_class.from_json(ex.to_json).should == ex
      end

      it 'can deserialize a JSON array' do
        input = [described_class.example]
        described_class.from_json(input.to_json).should == input
      end

      it 'fails if the given JSON is invalid' do
        expect {
          described_class.from_json('{}')
        }.to raise_error(ValidationError)
      end

      it 'has a kind' do
        described_class.kind.should be_kind_of(String)
      end

      it 'has a description' do
        described_class.description.should be_kind_of(String)
      end

      it 'has a JSON example' do
        described_class.json_example.should be_kind_of(String)
      end

      it 'has a list of fields' do
        described_class.fields.should_not be_empty
      end

    end
  end
end