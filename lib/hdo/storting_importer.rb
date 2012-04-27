module Hdo
  module StortingImporter
    def self.root
      @root ||= File.expand_path("../../..", __FILE__)
    end
  end
end

require 'nokogiri'
require 'tempfile'
require 'pathname'
require 'open-uri'
require 'erb'

require 'hdo/storting_importer/data_source'
require 'hdo/storting_importer/disk_data_source'
require 'hdo/storting_importer/http_data_source'
require 'hdo/storting_importer/script_importer'
require 'hdo/storting_importer/http_importer'

require 'hdo/storting_importer/converter'
require 'hdo/storting_importer/promise_converter'
require 'hdo/storting_importer/party_converter'
require 'hdo/storting_importer/representative_builder'
require 'hdo/storting_importer/representative_converter'
require 'hdo/storting_importer/committee_converter'
require 'hdo/storting_importer/topic_converter'
require 'hdo/storting_importer/district_converter'
require 'hdo/storting_importer/issue_converter'
require 'hdo/storting_importer/vote_converter'

require 'hdo/storting_importer/cli'


