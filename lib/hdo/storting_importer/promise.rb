# encoding: UTF-8

require 'csv'

module Hdo
  module StortingImporter
    class Promise
      include HasJsonSchema
      include IvarEquality

      attr_reader :external_id, :party, :body, :general, :categories, :source, :page, :date
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
          8,
          '2009-06-01'
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
          sql = %{SELECT #{column_names},"rowid" FROM #{table_id} OFFSET #{offset} LIMIT #{limit}}

          table.query(sql, :rows => true).map do |data|
            Hdo::StortingImporter.logger.info "promise row: #{data.inspect}"

            party = data.fetch(0)
            body = data.fetch(1)
            general = data.fetch(2).downcase

            unless ['ja', 'nei'].include?(general.downcase)
              raise "unexpected value for general: #{general.inspect}"
            end

            categories  = data.fetch(3)
            source      = data.fetch(4)
            page        = data.fetch(5)
            date        = data.fetch(6)
            external_id = data.fetch(7)

            result << new(external_id, party, body, general == 'ja', categories, source, page, date)
          end
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
                 hash['page'],
                 hash['date']

        pr
      end

      def initialize(external_id, party, body, general, categories, source, page, date)
        @external_id = external_id
        @party       = strip_if_string(party)
        @body        = strip_if_string(body)
        @general     = general
        @categories  = clean_categories(categories)
        @source      = strip_if_string(source)
        @page        = page
        @date        = date
      end

      def to_hash
        {
          'kind'       => self.class.kind,
          'externalId' => @external_id,
          'party'      => @party,
          'general'    => @general,
          'categories' => @categories,
          'source'     => @source,
          'page'       => @page,
          'body'       => @body,
          'date'       => @date
        }
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