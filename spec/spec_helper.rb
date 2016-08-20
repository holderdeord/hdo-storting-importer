require 'coveralls'
Coveralls.wear!

require 'rspec'
require 'pry'
require 'pp'

require 'simplecov'
SimpleCov.start
SimpleCov.command_name 'spec'

require 'hdo/storting_importer'
Dir[File.expand_path("../support/**/*.rb", __FILE__)].each do |f|
  require f
end

module Hdo
  module StortingImporter
    module SpecHelper
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
          "expected #{@target.inspect} to be #{@expected}\n#{diff}"
        end

        def negative_failure_message
          "expected #{@target.inspect} not to be #{@expected}"
        end

        alias_method :failure_message_for_should, :failure_message
        alias_method :failure_message_for_should_not, :negative_failure_message
        alias_method :failure_message_when_negated, :negative_failure_message


        private

        def diff
          RSpec::Expectations::Differ.new.diff_as_object(@target, @expected)
        end
      end

      def be_json(expected)
        EqualsJson.new(expected)
      end
    end
  end
end

RSpec.configure do |c|
  c.color = $stdout.tty?
  c.include Hdo::StortingImporter::SpecHelper
end