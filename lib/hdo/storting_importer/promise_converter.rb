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
            data.to_hdo_xml(promises)
          end
        end

        builder.target!
      end
    end
  end
end
