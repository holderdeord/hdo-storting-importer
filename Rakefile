require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

require 'cucumber/rake/task'
Cucumber::Rake::Task.new

task :default => [:spec, :cucumber]

require "bundler/gem_tasks"
