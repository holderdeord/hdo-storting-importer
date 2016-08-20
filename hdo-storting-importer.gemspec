# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hdo/storting_importer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jari Bakken"]
  gem.email         = ["jari.bakken@gmail.com"]
  gem.description   = %q{Gem to process data from data.stortinget.no}
  gem.summary       = %q{Gem to process data from data.stortinget.no}
  gem.homepage      = "http://github.com/holderdeord/hdo-storting-importer"

  gem.files         = `git ls-files`.split($\).reject { |e| e =~ /^(data|folketingparser)/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "hdo-storting-importer"
  gem.require_paths = ["lib"]
  gem.version       = Hdo::StortingImporter::VERSION

  gem.add_runtime_dependency "builder"
  gem.add_runtime_dependency "nokogiri"
  gem.add_runtime_dependency "aruba", "0.6.2"
  gem.add_runtime_dependency "rake"
  gem.add_runtime_dependency "faraday"
  gem.add_runtime_dependency "net-http-persistent"
  gem.add_runtime_dependency "unicode_utils"
  gem.add_runtime_dependency "multi_json"
  gem.add_runtime_dependency "yajl-ruby"
  gem.add_runtime_dependency "roo"
  gem.add_runtime_dependency "jschematic", ">= 0.1.0"

  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'guard'
  gem.add_development_dependency 'guard-rspec'
  gem.add_development_dependency 'rspec', '~> 2.99'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'coveralls'
end
