module Hdo
  module StortingImporter
    def self.root
      @root ||= File.expand_path("../../..", __FILE__)
    end

    Field = Struct.new(:name, :required, :type, :description)
    EXTERNAL_ID_FIELD = Field.new(:externalId, false, :string, 'An optional external id, matching potential id fields in the input data. This is useful if you want to reimport previous data without creating duplicates.')
  end
end

require 'nokogiri'
require 'restclient'
require 'tempfile'
require 'pathname'
require 'open-uri'
require 'erb'
require 'logger'

require 'hdo/storting_importer/core_ext/enumerable'
require 'hdo/storting_importer/ivar_equality'
require 'hdo/storting_importer/util'

require 'hdo/storting_importer/data_source'
require 'hdo/storting_importer/disk_data_source'
require 'hdo/storting_importer/api_data_source'
require 'hdo/storting_importer/parsing_data_source'
require 'hdo/storting_importer/script_importer'

require 'hdo/storting_importer/category'
require 'hdo/storting_importer/committee'
require 'hdo/storting_importer/district'
require 'hdo/storting_importer/issue'
require 'hdo/storting_importer/party'
require 'hdo/storting_importer/promise'
require 'hdo/storting_importer/representative'
require 'hdo/storting_importer/vote'

require 'hdo/storting_importer/converter'
require 'hdo/storting_importer/promise_converter'

require 'hdo/storting_importer/cli'


