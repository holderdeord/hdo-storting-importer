module Hdo
  module StortingImporter
    def self.root
      @root ||= File.expand_path("../../..", __FILE__)
    end
  end
end

require 'nokogiri'
require 'restclient'
require 'tempfile'
require 'pathname'
require 'open-uri'
require 'erb'
require 'logger'

require 'hdo/storting_importer/util'
require 'hdo/storting_importer/data_source'
require 'hdo/storting_importer/disk_data_source'
require 'hdo/storting_importer/api_data_source'
require 'hdo/storting_importer/script_importer'
require 'hdo/storting_importer/http_importer'

require 'hdo/storting_importer/category'
require 'hdo/storting_importer/committee'
require 'hdo/storting_importer/district'
require 'hdo/storting_importer/issue'
require 'hdo/storting_importer/party'

require 'hdo/storting_importer/representative_builder'
require 'hdo/storting_importer/converters/converter'
require 'hdo/storting_importer/converters/promise_converter'
require 'hdo/storting_importer/converters/party_converter'
require 'hdo/storting_importer/converters/representative_converter'
require 'hdo/storting_importer/converters/committee_converter'
require 'hdo/storting_importer/converters/category_converter'
require 'hdo/storting_importer/converters/district_converter'
require 'hdo/storting_importer/converters/issue_converter'
require 'hdo/storting_importer/converters/vote_converter'

require 'hdo/storting_importer/cli'


