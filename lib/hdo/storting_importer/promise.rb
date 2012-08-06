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
        pr = new("H", "Stille strengere krav til orden og oppførsel for å hindre at uro ødelegger undervisningen.", true, ["GRUNNSKOLE"], "PP", 8)
        pr.external_id = "1"

        pr
      end

      def self.json_example
        Util.json_pretty example
      end

      def self.from_csv(str)
        # cleanup
        str.gsub!(/\bFrp\b/, "FrP")
        str.gsub!(/\bKrf\b/, "KrF")
        str.gsub!(/\bSP\b/, "Sp")

        rows = CSV.parse(
          str,
          headers: [:party, :body, :general, :categories, :source, :page],
          col_sep: ";",
          skip_blanks: true,
          return_headers: false,
        )

        rows.map do |e|
          pr = e.to_hash
          next if pr[:party].to_s.strip == "Parti" # header row

          new(
            pr[:party].to_s.strip,
            pr[:body].to_s.strip,
            pr[:general].to_s.downcase == 'ja',
            pr[:categories].to_s.split(","),
            pr[:source].to_s.strip,
            pr[:page].to_s.strip
            )
        end.compact
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
        pr = new hash.fetch('party'),
                 hash.fetch('body'),
                 hash.fetch('general'),
                 hash.fetch('categories'),
                 hash.fetch('source'),
                 hash.fetch('page')

        pr.external_id = hash['externalId']

        pr
      end

      def initialize(party, body, general, categories, source, page)
        @party       = party.strip
        @body        = body.strip
        @general     = general
        @categories  = clean_categories(categories)
        @source      = source.strip
        @page        = page

        @external_id = nil
      end

      def to_hash
        h = {
          :kind       => self.class.kind,
          :party      => @party,
          :general    => @general,
          :categories => @categories,
          :source     => @source,
          :page       => @page,
          :body       => @body
        }

        h[:externalId] = @external_id if @external_id

        h
      end

      private

      def clean_categories(categories)
        categories = categories.split(",") if categories.kind_of?(String)

        categories.map(&:strip).
                   reject(&:empty?).
                   map { |e| UnicodeUtils.upcase(e) }
      end

    end
  end
end