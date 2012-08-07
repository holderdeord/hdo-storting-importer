module Hdo
  module StortingImporter
    class ValidationError < StandardError
    end

    #
    # Includer must define these methods:
    #
    #   .schema_path
    #   .example
    #   #from_hash(hash)
    #   #to_hash
    #

    module HasJsonSchema
      def self.schemas
        @schemas ||= []
      end

      def self.included(base)
        base.extend ClassMethods
      end

      def to_json(*args)
        to_hash.to_json(*args)
      end

      def as_json(*args)
        to_hash
      end

      def valid?
        self.class.valid? to_hash
      end

      def validate!
        self.class.validate! to_hash
      end

      module ClassMethods
        attr_reader :schema

        def schema_path(path)
          @schema = MultiJson.decode(open(path).read)
          HasJsonSchema.schemas << @schema
        end

        def schema
          @schema or raise "schema must be set with #{self}.schema_path"
        end

        def json_example
          @json_example ||= Util.json_pretty example
        end

        def kind
          @kind ||= schema['properties']['kind']['default']
        end

        def description
          @description ||= schema['description']
        end

        def properties
          @properties ||= (
            schema['properties'].map do |name, data|
              Field.new(name, !!data['required'], data['type'], data['description'] || 'unknown')
            end
          )
        end

        # TODO: remove #fields usage
        alias_method :fields, :properties

        def from_json(str)
          data = MultiJson.decode(str)

          case data
          when Array
            data.map { |e| from_hash validate!(e) }
          when Hash
            from_hash validate!(data)
          else
            raise TypeError, "expected Array or Hash, got #{data.inspect}:#{data.class}"
          end
        end

        def valid?(e)
          Jschematic.validate(e, schema, :context => HasJsonSchema.schemas, :debug => true)
        end

        def validate!(e)
          Jschematic.validate!(e, schema, :context => HasJsonSchema.schemas, :debug => true)
          e
        rescue Jschematic::ValidationError => ex
          raise ValidationError, "#{ex.message}: #{e.inspect}"
        end
      end

    end
  end
end