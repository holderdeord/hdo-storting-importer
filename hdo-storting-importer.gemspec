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
  gem.add_runtime_dependency "aruba"
  gem.add_runtime_dependency "rake"
  gem.add_runtime_dependency "rest-client"
  gem.add_runtime_dependency "unicode_utils"
end
