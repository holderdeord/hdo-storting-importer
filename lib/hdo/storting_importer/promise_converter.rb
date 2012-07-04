# encoding: utf-8

require 'csv'
require 'builder'

module Hdo
  module StortingImporter
    class PromiseConverter

      def initialize(exported_spreadsheet)
        content = File.read(File.expand_path(exported_spreadsheet), encoding: "ISO-8859-1").encode("UTF-8")

        # cleanup
        content.gsub!(/\bFrp\b/, "FrP")

        @table = CSV.parse(
          content,
          headers: [:party, :body, :general, :categories, :source, :page],
          col_sep: ";",
          skip_blanks: true,
          return_headers: false,
        )
      end

      def xml
        builder = Builder::XmlMarkup.new :indent => 2
        builder.instruct!

        builder.promises do |promises|
          @table.each do |e|
            data = e.to_hash
            next if data[:body] == "Løftetekst" || data[:body].nil? || data[:body].empty?
            add_promise(promises, data)
          end
        end

        builder.target!
      end

      def add_promise(promises, data)
        category_names = data[:categories].split(",").map(&:upcase).map(&:strip)

        promises.promise do |promise|
          promise.party data[:party].strip
          promise.general data[:general].to_s.downcase.strip == "ja"
          promise.categories do |categories|
            category_names.each do |name|
              categories.category name
            end
          end

          promise.source [data[:source].strip, data[:page].to_s.strip].join(":")
          promise.body data[:body].strip
        end
      rescue
        STDERR.puts data.inspect
        raise
      end

    end
  end
end