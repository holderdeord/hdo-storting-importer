# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe CachingDataSource do

      it 'caches requests' do
        delegate = double(DataSource)

        ads = CachingDataSource.new(delegate)

        delegate.should_receive(:representatives).twice.and_return "data"

        ads.representatives('2011-2012') # not cached
        ads.representatives('2011-2012') # cached
        ads.representatives('2012-2013') # not cached
        ads.representatives('2012-2013') # cached
      end

    end
  end
end
