# encoding: utf-8

require 'csv'
require 'builder'

module Hdo
  module StortingImporter
    class PromiseConverter
      def initialize(exported_spreadsheet)
        content = File.read(File.expand_path(exported_spreadsheet), encoding: "ISO-8859-1").encode("UTF-8")
        @promises = Promise.from_csv(content)
      end

      def xml
        builder = Builder::XmlMarkup.new :indent => 2
        builder.instruct!

        builder.promises do |promises|
          @promises.each do |data|
            next if data.body == "Løftetekst" || data.body.nil? || data.body.empty?
            add_promise(promises, data)
          end
        end

        builder.target!
      end

      def add_promise(promises, data)
        promises.promise do |promise|
          promise.party data.party.strip
          promise.general data.general
          promise.categories do |categories|
            data.categories.each do |name|
              categories.category name
            end
          end

          promise.source [data.source, data.page].join(":")
          promise.body data.body.strip
        end
      rescue
        STDERR.puts data.inspect
        raise
      end
    end

  end
end
