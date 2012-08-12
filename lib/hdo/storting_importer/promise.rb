# encoding: UTF-8

require 'csv'

module Hdo
  module StortingImporter
    class Promise
      include HasJsonSchema
      include IvarEquality

      attr_reader :party, :body, :general, :categories, :source, :page
      attr_accessor :external_id
      alias_method :general?, :general
      alias_method :short_inspect, :inspect

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/promise.json").to_s

      def self.example
        new(
          "1",
          "H",
          "Stille strengere krav til orden og oppførsel for å hindre at uro ødelegger undervisningen.",
          true,
          ["GRUNNSKOLE"],
          "PP",
          8
        )
      end

      def self.json_example
        Util.json_pretty example
      end

      # doesn't really belong here - data source?
      def self.from_fusion_table(table_id, api_key)
        table = FusionTable.new(api_key)

        column_names = table.columns_for(table_id).map { |e| e['name'] }.map { |e| e.inspect }.join(",")
        row_count = Integer(table.query("select count(rowid) from #{table_id}", :rows => true).flatten.first)

        # do this in batches of 100
        limit = 100
        result = []

        (0..row_count).step(limit) do |offset|
          sql = "SELECT #{column_names},\"rowid\" FROM #{table_id} OFFSET #{offset} LIMIT #{limit}"
          result.concat table.query(sql, :rows => true).map { |data| new(*data) }
        end

        result
      end

      def self.from_hash(hash)
        pr = new hash['externalId'],
                 hash['party'],
                 hash['body'],
                 hash['general'],
                 hash['categories'],
                 hash['source'],
                 hash['page']

        pr
      end

      def initialize(external_id, party, body, general, categories, source, page)
        @external_id = external_id
        @party       = strip_if_string(party)
        @body        = strip_if_string(body)
        @general     = general
        @categories  = clean_categories(categories)
        @source      = strip_if_string(source)
        @page        = page
      end

      def to_hash
        h = {
          'kind'       => self.class.kind,
          'externalId' => @external_id,
          'party'      => @party,
          'general'    => @general,
          'categories' => @categories,
          'source'     => @source,
          'page'       => @page,
          'body'       => @body
        }

        h
      end

      private

      def clean_categories(categories)
        categories = categories.split(",") if categories.kind_of?(String)

        Array(categories).map(&:strip).
                          reject(&:empty?).
                          map { |e| UnicodeUtils.upcase(e) }
      end

      def strip_if_string(str)
        if str.respond_to? :strip
          str.strip
        else
          str
        end
      end

    end
  end
end