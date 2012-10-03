require 'spec_helper'

module Hdo
  module StortingImporter
    module Converters

      describe Converter do
        let(:data_source) { DataSource.new }
        let(:parsing_data_source) { ParsingDataSource.new(data_source) }
        let(:converter)   { Converter.new(parsing_data_source) }

        def input_for(name)
          doc = Nokogiri::XML.parse input_fixture(name)
          doc.remove_namespaces!

          doc
        end

        def output_for(name)
          output_fixture(name)
        end

        [
          :parties,
          :committees,
          :districts,
          :categories,
          :parliament_issues,
        ].each { |name|
          it "converts #{name}" do
            data_source.should_receive(name).and_return(input_for(name))

            actual_output = converter.json_for(name)
            actual_output.should be_json(output_for(name))
          end
        }

        it "converts representatives" do
          Date.stub(:today).and_return(Date.new(2011, 10, 1))

          data_source.should_receive(:representatives).and_return(input_for(:representatives))
          data_source.should_receive(:representatives_today).and_return(input_for(:representatives_today))

          actual = converter.json_for(:representatives)
          expected = output_for(:representatives)

          actual.should be_json(expected)
        end

        it "converts votes" do
          Date.stub(:today).and_return(Date.new(2011, 10, 1))

          parsing_data_source.should_receive(:parliament_issues).and_return [mock(:external_id => 2175)]

          data_source.should_receive(:votes_for).and_return(input_for(:votes))

          data_source.should_receive(:propositions_for).with('2175').and_return(input_for(:propositions_2175))
          data_source.should_receive(:vote_results_for).with('2175').and_return(input_for(:vote_results_2175))

          data_source.should_receive(:propositions_for).with('2176').and_return(input_for(:propositions_2176))
          data_source.should_receive(:vote_results_for).with('2176').and_return(input_for(:vote_results_2176))

          actual = converter.json_for(:votes)
          expected = output_for(:votes)

          File.open("spec/fixtures/output/votes2.json", "w") { |file| file << actual }

          actual.should be_json(expected)
        end

      end
    end
  end
end