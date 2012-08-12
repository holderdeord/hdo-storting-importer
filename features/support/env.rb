require 'aruba'
require 'aruba/cucumber'

require 'simplecov'
SimpleCov.start
SimpleCov.command_name 'cucumber'

Before do
  @aruba_timeout_seconds = 10
  ENV['VOTE_COUNT'] = '5'
end
