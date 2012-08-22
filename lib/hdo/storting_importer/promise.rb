# encoding: UTF-8

require 'roo'

module Hdo
  module StortingImporter
    class Promise
      include HasJsonSchema
      include IvarEquality

      attr_reader :external_id, :parties, :body, :general, :categories, :source, :page, :date
      alias_method :general?, :general
      alias_method :short_inspect, :inspect

      schema_path StortingImporter.lib.join("hdo/storting_importer/schema/promise.json").to_s

      def self.example
        new(
          "1",
          ["H"],
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
          parties     = data.fetch(2)
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

          unless parties
            errors << "row #{external_id}: parties missing"
            next
          end

          unless body.strip =~ /\.$/
            body = "#{body.strip}."
          end

          clean_invalid_unicode = lambda do |str|
            str.gsub("\u00c5\u030a", 'Å').gsub("\u00e5\u030a", 'å')
          end

          promise = new external_id,
                        parties.strip,
                        clean_invalid_unicode.call(body.strip),
                        general.downcase == "ja",
                        clean_invalid_unicode.call(categories),
                        source.strip,
                        Integer(page),
                        date.strip

          begin
            promise.validate!
          rescue Hdo::StortingImporter::ValidationError => ex
            errors << "row #{external_id}: #{ex.message}"
            next
          end

          promise
        }.compact

        if errors.any?
          puts errors
          # raise "found errors:\n#{errors.join("\n")}"
        end

        promises
      end

      def self.from_hash(hash)
        pr = new hash['externalId'],
                 hash['parties'],
                 hash['body'],
                 hash['general'],
                 hash['categories'],
                 hash['source'],
                 hash['page'],
                 hash['date']

        pr
      end

      def initialize(external_id, parties, body, general, categories, source, page, date)
        @external_id = external_id
        @parties     = clean_array(parties)
        @body        = strip_if_string(body)
        @general     = general
        @categories  = clean_array(categories).map { |e| UnicodeUtils.upcase(e) }
        @source      = strip_if_string(source)
        @page        = page
        @date        = date
      end

      def to_hash
        {
          'kind'       => self.class.kind,
          'externalId' => @external_id,
          'parties'    => @parties,
          'general'    => @general,
          'categories' => @categories,
          'source'     => @source,
          'page'       => @page,
          'body'       => @body,
          'date'       => @date
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