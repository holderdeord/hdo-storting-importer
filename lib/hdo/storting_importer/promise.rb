# encoding: UTF-8

require 'roo'

module Hdo
  module StortingImporter
    class Promise
      include HasJsonSchema
      include IvarEquality

      attr_reader :external_id, :promisor, :body, :general, :categories, :source, :page, :period
      alias_method :general?, :general
      alias_method :short_inspect, :inspect

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/promise.json").to_s

      def self.example(overrides = nil)
        obj = new(
          "1",
          "H",
          "Stille strengere krav til orden og oppførsel for å hindre at uro ødelegger undervisningen.",
          true,
          ["GRUNNSKOLE"],
          "PP",
          8,
          '2009-2013'
        )

        if overrides
          obj = from_hash(obj.to_hash.merge(overrides))
        end

        obj
      end

      def self.json_example
        Util.json_pretty example
      end

      def self.from_xlsx(path)
        from_spreadsheet Roo::Excelx.new(path)
      end

      def self.from_xls(path)
        from_spreadsheet Roo::Excel.new(path)
      end

      def self.from_spreadsheet(table)
        raise "empty spreadsheet" unless table.first_row

        errors = []

        # 0 is empty, 1 is header
        promises = 2.upto(table.last_row).map { |idx|
          data = table.row(idx)

          Hdo::StortingImporter.logger.info "promise row: #{data.inspect}"

          external_id = data.fetch(0).to_i.to_s
          period      = data.fetch(1)
          promisor    = data.fetch(2)
          body        = data.fetch(3)
          general     = data.fetch(4).to_s.strip.downcase
          categories  = data.fetch(5)
          source      = data.fetch(6)
          page        = data.fetch(7)

          unless %w[ja nei].include?(general)
            errors << "row #{external_id}: unexpected value #{general.inspect} for general"
          end

          if page.to_s !~ /^\d+(\.\d+)?$/ || page.to_i == 0
            errors << "row #{external_id}: unexpected value #{page.inspect} for page"
          end

          if promisor.nil? || promisor.empty?
            errors << "row #{external_id}: promisor missing"
          elsif promise.include?(",")
            errors << "row #{external_id}: comma not allowed in promisor id/name"
          end
          
          if categories.nil? || categories.empty?
            errors << "row #{external_id}: categories missing"
          end

          unless period
            errors << "row #{external_id}: period is missing"
          end

          next if errors.any?

          unless body.strip =~ /\.$/
            body = "#{body.strip}."
          end

          clean_invalid_unicode = lambda do |str|
            str.gsub("\u00c5\u030a", 'Å').
                gsub("\u00e5\u030a", 'å').
                gsub("\u0041\u030a", 'Å').
                gsub("\u0061\u030a", 'å')
          end

          promise = new external_id,
                        promisor.strip,
                        clean_invalid_unicode.call(body.strip),
                        general.downcase == "ja",
                        clean_invalid_unicode.call(categories),
                        source.strip,
                        Integer(page),
                        period

          begin
            promise.validate!
          rescue Hdo::StortingImporter::ValidationError => ex
            errors << "row #{external_id}: #{ex.message}"
            next
          end

          promise
        }.compact

        if errors.any?
          raise "found errors:\n#{errors.join("\n")}"
        end

        promises
      end

      def self.from_hash(hash)
        pr = new hash['external_id'],
                 hash['promisor'],
                 hash['body'],
                 hash['general'],
                 hash['categories'],
                 hash['source'],
                 hash['page'],
                 hash['period']

        pr
      end

      def initialize(external_id, promisor, body, general, categories, source, page, period)
        @external_id = external_id
        @promisor    = promisor
        @body        = strip_if_string(body)
        @general     = general
        @categories  = clean_array(categories).map { |e| UnicodeUtils.upcase(e) }
        @source      = strip_if_string(source)
        @page        = page
        @period      = period
      end

      def to_hash
        {
          'kind'        => self.class.kind,
          'external_id' => @external_id,
          'promisor'    => @promisor,
          'general'     => @general,
          'categories'  => @categories,
          'source'      => @source,
          'page'        => @page,
          'body'        => @body,
          'period'      => @period
        }
      end

      private

      def clean_array(categories)
        categories = categories.split(",") if categories.kind_of?(String)
        Array(categories).map(&:strip).reject(&:empty?)
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
