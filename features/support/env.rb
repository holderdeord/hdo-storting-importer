require 'aruba'
require 'aruba/cucumber'

Before do
  @aruba_timeout_seconds = 10
  ENV['VOTE_COUNT'] = '5'
end
