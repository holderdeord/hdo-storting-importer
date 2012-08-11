# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe CachingDataSource do

      it 'caches requests' do
        delegate = mock(DataSource)
        ads = CachingDataSource.new(delegate)

        delegate.should_receive(:representatives).once.and_return "data"

        ads.representatives # not cached
        ads.representatives # cached
      end

    end
  end
end
