require 'rspec'
require 'hdo/storting_importer'
require 'pry'
require 'pp'

Dir[File.expand_path("../support/**/*.rb", __FILE__)].each do |f|
  require f
end

module Hdo
  module StortingImporter
    module SpecHelper
      FIXTURES = Pathname.new(File.expand_path("../fixtures", __FILE__))

      def input_fixture(name)
        FIXTURES.join(input_path("#{name}.xml")).read
      end

      def output_fixture(name)
        FIXTURES.join(output_path("#{name}.json")).read
      end

      def input_path(filename)
        FIXTURES.join("input/#{filename}")
      end

      def output_path(filename)
        FIXTURES.join("output/#{filename}")
      end

      def parse(str)
        doc = Nokogiri::XML.parse(str)
        doc.remove_namespaces!

        doc
      end

      class EqualsJson
        def initialize(expected)
          @expected = MultiJson.decode(expected)
        end
        def matches?(target)
          @target = MultiJson.decode(target)
          @target.eql?(@expected)
        end
        def failure_message
          "expected #{@target.inspect} to be #{@expected}"
        end
        def negative_failure_message
          "expected #{@target.inspect} not to be #{@expected}"
        end
      end

      def be_json(expected)
        EqualsJson.new(expected)
      end
    end
  end
end

RSpec.configure do |c|
  c.include Hdo::StortingImporter::SpecHelper
end