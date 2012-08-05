require 'nokogiri'
require 'restclient'
require 'tempfile'
require 'pathname'
require 'open-uri'
require 'erb'
require 'logger'
require 'builder'
require 'unicode_utils'
require 'uri'
require 'multi_json'

module Hdo
  module StortingImporter
    def self.root
      @root ||= File.expand_path("../../..", __FILE__)
    end

    def self.types
      [
        Party,
        Committee,
        District,
        Representative,
        Category,
        Issue,
        Vote,
        Vote::Proposition,
        Promise
      ]
    end

    def self.print_types(opts = {})
      out = opts[:io] || $stdout
      xml = !!opts[:xml]

      max_name_size = 0
      max_type_size  = 0

      type_strings = []


      types.each do |type|
        type.fields.each do |e|
          required = 'required' if e.required
          type_strings << (type_string = "#{required}:#{e.type}")

          max_name_size = [e.name.size, max_name_size].max
          max_type_size = [type_string.size, max_type_size].max
        end
      end

      types.each_with_index do |type, type_idx|
        out.puts "\x1b[1m#{type.type_name}\x1b[0m\n"

        type.fields.each_with_index do |field, field_idx|

          parts = [
            field.name.to_s.rjust(max_name_size + 5),
            type_strings[type_idx + field_idx].rjust(max_type_size),
            "\t#{field.description}"
          ]

          out.puts parts.join ' '
        end

        out.puts "\n\n"

        if xml
          puts type.xml_example.split("\n")
          puts "\n\n"
        end
      end
    end

    def self.logger
      @logger ||= (
        out = $stderr # should be able to pipe output to a file

        if defined?(Rails)
          klass = Class.new(Logger) do
            def format_message(severity, timestamp, progname, msg)
              "#{timestamp.to_formatted_s(:db)} #{severity} #{msg}\n"
            end
          end

          klass.new(out)
        else
          Logger.new(out)
        end
      )

    end

    Field = Struct.new(:name, :required, :type, :description)
    EXTERNAL_ID_FIELD = Field.new(:externalId, false, :string, 'An optional external id, matching potential id fields in the input data. This is useful if you want to reimport previous data without creating duplicates.')
  end
end

require 'hdo/storting_importer/core_ext/enumerable'
require 'hdo/storting_importer/ivar_equality'
require 'hdo/storting_importer/inspectable'
require 'hdo/storting_importer/util'
require 'hdo/storting_importer/fusion_table'

require 'hdo/storting_importer/data_source'
require 'hdo/storting_importer/disk_data_source'
require 'hdo/storting_importer/api_data_source'
require 'hdo/storting_importer/parsing_data_source'

require 'hdo/storting_importer/category'
require 'hdo/storting_importer/committee'
require 'hdo/storting_importer/district'
require 'hdo/storting_importer/issue'
require 'hdo/storting_importer/party'
require 'hdo/storting_importer/promise'
require 'hdo/storting_importer/representative'
require 'hdo/storting_importer/vote'

require 'hdo/storting_importer/converter'
require 'hdo/storting_importer/cli'


