module Hdo
  module StortingImporter
    def self.root
      @root ||= File.expand_path("../../..", __FILE__)
    end
  end
end

require 'nokogiri'
require 'builder'
require 'tempfile'
require 'open-uri'
require 'erb'

require 'hdo/storting_importer/converter'
require 'hdo/storting_importer/representative_builder'
require 'hdo/storting_importer/importer'
require 'hdo/storting_importer/promise_converter'

require 'hdo/storting_importer/party_converter'
require 'hdo/storting_importer/representative_converter'
require 'hdo/storting_importer/committee_converter'
require 'hdo/storting_importer/topic_converter'



