module Hdo
  module StortingImporter
    shared_examples_for "type with #short_inspect" do
      it 'has #short_inspect' do
        described_class.example.short_inspect.should be_kind_of(String)
      end
    end
  end
end