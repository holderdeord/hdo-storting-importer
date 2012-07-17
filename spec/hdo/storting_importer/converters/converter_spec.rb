require 'spec_helper'

module Hdo
  module StortingImporter
    module Converters

      describe Converter do
        let(:data_source) { DataSource.new }

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
          :issues,
        ].each { |name|
          it "converts #{name}" do
            data_source.should_receive(name).and_return(input_for(name))

            actual_output = Converter.for(name).new(data_source).xml
            actual_output.should == output_for(name)
          end
        }

        it "converts representatives" do
          data_source.should_receive(:representatives).and_return(input_for(:representatives))
          data_source.should_receive(:representatives_today).and_return(input_for(:representatives_today))

          actual = Converter.for(:representatives).new(data_source).xml
          expected = output_for(:representatives)

          File.open("/tmp/actual.xml", "w") { |file| file << actual }
          File.open("/tmp/expected.xml", "w") { |file| file << expected }

          actual.should == expected
        end

        it "converts votes" do
          data_source.should_receive(:votes_for).with('1').and_return(input_for(:votes))
          data_source.should_receive(:propositions_for).with('2175').and_return(input_for(:propositions_2175))
          data_source.should_receive(:vote_results_for).with('2175').and_return(input_for(:vote_results_2175))

          data_source.should_receive(:propositions_for).with('2176').and_return(input_for(:propositions_2176))
          data_source.should_receive(:vote_results_for).with('2176').and_return(input_for(:vote_results_2176))

          VoteConverter.new(data_source, %w[1]).xml.should == output_for(:votes)
        end

        it "converts promises" do
          PromiseConverter.new(input_path('promises-a.csv')).xml.should == output_path('promises-a.xml').read
        end

      end
    end
  end
end