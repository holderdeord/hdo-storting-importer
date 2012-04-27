require 'spec_helper'

module Hdo
  module StortingImporter

    describe Converter do
      let(:data_source) { DataSource.new }

      def input_for(name)
        Nokogiri::XML.parse input_fixture(name)
      end

      def output_for(name)
        output_fixture(name)
      end

      [:parties].each do |name|
        it "should convert #{name}" do
          data_source.should_receive(name).and_return(input_for(name))
          Converter.for(name).new(data_source).xml.should == output_for(name)
        end
      end
    end

  end
end