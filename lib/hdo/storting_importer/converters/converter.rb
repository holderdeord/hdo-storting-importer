module Hdo
  module StortingImporter
    module Converters
      
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

      end
      
    end
  end
end
