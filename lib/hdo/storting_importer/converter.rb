module Hdo
  module StortingImporter
    class Converter
      attr_reader :data_source

      def self.converters
        @converters ||= []
      end

      def self.inherited(klass)
        converters << klass
      end

      def self.for(name)
        conv = converters.find { |c| c.type_name == name }
        conv or raise NotImplementedError, "no converter for #{name.inspect}"
      end

      def self.type_name
        raise "subclass responsibility (#{self}#type_name)"
      end

      def docs
        docs = data_source.__send__(self.class.type_name)
        docs = [docs] unless docs.kind_of?(Array)

        docs
      end

      def initialize(data_source)
        @data_source = data_source
      end

      def xml
        ERB.new(template, 0, "%-<>").result(binding)
      end

      private

      def template
        File.read(File.expand_path("../templates/#{self.class.type_name}.xml.erb", __FILE__))
      end

      # utility methods

      def remove_newlines(str)
        str.gsub(/\r?\n/, '')
      end

      def remove_invalid_html(str)
        str.gsub("<\\p>", "")
      end

    end
  end
end