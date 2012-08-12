# encoding: UTF-8

require 'roo'

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

      def self.from_xlsx(path)
        table  = Excelx.new(path)
        raise "empty spreadsheet" unless table.first_row

        errors = []

        # 0 is empty, 1 is header
        promises = 2.upto(table.last_row).map { |idx|
          data = table.row(idx)

          Hdo::StortingImporter.logger.info "promise row: #{data.inspect}"

          external_id = data.fetch(0).to_i.to_s
          date        = data.fetch(1)
          party       = data.fetch(2)
          body        = data.fetch(3)
          general     = data.fetch(4).to_s.strip.downcase
          categories  = data.fetch(5)
          source      = data.fetch(6)
          page        = data.fetch(7)

          unless %w[ja nei].include?(general)
            errors << "row #{external_id}: unexpected value #{general.inspect} for general"
            next
          end

          if page.to_s !~ /^\d+(\.\d+)?$/ || page.to_i == 0
            errors << "row #{external_id}: unexpected value #{page.inspect} for page"
            next
          end

          unless party
            errors << "row #{external_id}: party missing"
            next
          end

          unless body =~ /\.$/
            body << "."
          end

          promise = new external_id,
                        party,
                        body,
                        general.downcase == "ja",
                        categories,
                        source,
                        Integer(page),
                        date

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