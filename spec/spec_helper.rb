require 'rspec'
require 'hdo/storting_importer'

module Hdo
  module StortingImporter
    module SpecHelper
      FIXTURES = Pathname.new(File.expand_path("../fixtures", __FILE__))

      def input_fixture(name)
        FIXTURES.join("input/#{name}.xml").read
      end

      def output_fixture(name)
        FIXTURES.join("output/#{name}.xml").read
      end

    end
  end
end

RSpec.configure do |c|
  c.include Hdo::StortingImporter::SpecHelper
end