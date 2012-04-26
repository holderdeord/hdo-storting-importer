# encoding: utf-8

require 'csv'
require 'builder'

module Hdo
  module StortingImporter

    class PromiseConverter
      def initialize(exported_spreadsheet)
        content = File.read(File.expand_path(exported_spreadsheet), encoding: "ISO-8859-1").encode("UTF-8")
        @table = CSV.parse(
          content,
          headers: [:party, :body, :general, :topics, :source, :page],
          col_sep: ";",
          skip_blanks: true,
          return_headers: false
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
        topic_names = data[:topics].split(",").map(&:upcase).map(&:strip)

        promises.promise do |promise|
          promise.party data[:party]
          promise.general data[:general].downcase.strip == "ja"
          promise.topics do |topics|
            topic_names.each do |name|
              topics.topic name
            end
          end

          promise.source [data[:source].strip, data[:page].to_s.strip].join(":")
          promise.body data[:body]
        end
      rescue
        STDERR.puts data.inspect
        raise
      end

    end
  end
end