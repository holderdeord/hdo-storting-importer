module Hdo
  module StortingImporter
    class Converter
      
      def self.converters
        @converters ||= []
      end
      
      def self.inherited(klass)
        converters << klass
      end
      
      def self.for(node)
        conv = converters.find { |c| c.handles?(node.name) }
        conv or raise NotImplementedError, "no converter for #{node.name}"
        
        conv.new(node)
      end
      
      def self.handles?(node)
        raise 'subclass responsibility'
      end
      
      def initialize(doc)
        @doc = doc
      end
      
      def xml
        ERB.new(template, 0, "%-<>").result(binding)
      end

      private
      
      def template
        File.read(File.expand_path("../templates/#{template_name}.xml.erb", __FILE__))
      end
      
      def template_name
        raise 'subclass responsibility'
      end
      
    end
  end
end