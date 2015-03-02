require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

require 'cucumber/rake/task'
Cucumber::Rake::Task.new

task :env do
  $LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
  require 'hdo/storting_importer'
end

namespace :doc do
  task :types => :env do
    Hdo::StortingImporter.print_types
  end

  desc 'Like `rake docs`, but includes JSON examples.'
  task :json => :env do
    Hdo::StortingImporter.print_types :json => true
  end
end

desc 'Print docs for each import type.'
task :doc => %w[doc:types]

desc 'Default task runs all tests.'
task :default => [:spec, :cucumber]

require "bundler/gem_tasks"
