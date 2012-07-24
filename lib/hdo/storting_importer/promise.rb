# encoding: UTF-8

require 'csv'

module Hdo
  module StortingImporter
    class Promise
      attr_reader :party, :body, :general, :categories, :source, :page
      alias_method :general?, :general

      def self.type_name
        'promise'
      end

      def self.description
        'a party promise'
      end

      def self.fields
        [
          Field.new(:party, true, :string, 'The external id of the party.'),
          Field.new(:general, true, :boolean, "Whether this is considered a general promise (i.e. can be ambigious whether it has been fulfilled)."),
          Field.new(:categories, true, :list, "List of category names (matching names imported in <a href='#input-format-category'>&lt;category&gt;</a>)"),
          Field.new(:source, true, :string, "The source of the promise. (TODO: this should always be a URL)"),
          Field.new(:body, true, :string, "The body text of the promise."),
        ]
      end

      def self.example
        new("H", "Stille strengere krav til orden og oppførsel for å hindre at uro ødelegger undervisningen.", true, ["GRUNNSKOLE"], "PP", 8)
      end

      def self.xml_example(builder = Util.builder)
        example.to_hdo_xml(builder)
      end

      def self.from_hdo_doc(doc)
        doc.css("promises > promise").map { |e| from_hdo_node(e) }
      end

      def self.from_hdo_node(node)
        source, page = node.css("source").first.text.split(":")

        new node.css("party").first.text,
            node.css("body").first.text,
            node.css("general").first.text == "true",
            node.css("categories > category").map { |e| e.text },
            source,
            page
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
            pr[:categories].to_s.split(",").map(&:upcase).map(&:strip),
            pr[:source].to_s.strip,
            pr[:page].to_s.strip
            )
        end.compact
      end

      def initialize(party, body, general, categories, source, page)
        @party      = party
        @body       = body
        @general    = general
        @categories = categories
        @source     = source
        @page       = page
      end

      def to_hdo_xml(builder = Util.builder)
        builder.promise do |promise|
          promise.party party
          promise.general general?
          promise.categories do |cats|
            categories.each { |e| cats.category e }
          end
          promise.source [source, page].join(":")
          promise.body body
        end
      end

    end
  end
end