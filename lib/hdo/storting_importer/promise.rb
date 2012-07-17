require 'csv'

module Hdo
  module StortingImporter
    class Promise
      attr_reader :party, :body, :general, :categories, :source, :page
      alias_method :general?, :general

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
            pr[:categories].split(",").map(&:upcase).map(&:strip),
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

    end
  end
end