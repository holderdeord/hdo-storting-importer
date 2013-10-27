require 'nokogiri'
require 'faraday'
require 'net/http/persistent'
require 'tempfile'
require 'pathname'
require 'open-uri'
require 'erb'
require 'logger'
require 'builder'
require 'unicode_utils'
require 'uri'
require 'multi_json'
require 'yajl/json_gem'
require 'jschematic'
require 'date'

module Hdo
  module StortingImporter
    def self.root
      @root ||= Pathname.new(File.expand_path("../../..", __FILE__))
    end

    def self.lib
      @lib ||= Pathname.new(File.expand_path("../..", __FILE__))
    end

    def self.types
      [
        Category,
        Committee,
        CommitteeMembership,
        District,
        ParliamentIssue,
        ParliamentSession,
        ParliamentPeriod,
        Party,
        PartyMembership,
        Promise,
        Proposition,
        Representative,
        Vote,
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
        out.puts "\x1b[1m#{type.kind}\x1b[0m\n"

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
        out = $stdout

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

require 'hdo/storting_importer/version'

require 'hdo/storting_importer/core_ext/enumerable'
require 'hdo/storting_importer/ivar_equality'
require 'hdo/storting_importer/inspectable'
require 'hdo/storting_importer/has_json_schema'
require 'hdo/storting_importer/util'
require 'hdo/storting_importer/in_memory_cache'

require 'hdo/storting_importer/data_source'
require 'hdo/storting_importer/disk_data_source'
require 'hdo/storting_importer/api_data_source'
require 'hdo/storting_importer/parsing_data_source'
require 'hdo/storting_importer/caching_data_source'

require 'hdo/storting_importer/category'
require 'hdo/storting_importer/committee'
require 'hdo/storting_importer/committee_membership'
require 'hdo/storting_importer/district'
require 'hdo/storting_importer/parliament_issue'
require 'hdo/storting_importer/parliament_period'
require 'hdo/storting_importer/parliament_session'
require 'hdo/storting_importer/party'
require 'hdo/storting_importer/party_membership'
require 'hdo/storting_importer/promise'
require 'hdo/storting_importer/representative'
require 'hdo/storting_importer/proposition'
require 'hdo/storting_importer/vote'

require 'hdo/storting_importer/cli'
