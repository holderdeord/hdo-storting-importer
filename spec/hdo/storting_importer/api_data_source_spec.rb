# encoding: UTF-8
require 'spec_helper'

module Hdo
  module StortingImporter
    describe ApiDataSource do

      it 'caches requests if :cache => true' do
        res = mock(RestClient::Resource)

        # this is too knowledgable about the implementation.
        RestClient::Resource.stub(:===).with(res).and_return(true)

        res.should_receive(:[]).and_return(res)
        res.should_receive(:get).once.and_return("<response></response>")

        ads = ApiDataSource.new(res, cache: true)

        ads.representatives # not cached
        ads.representatives # cached
      end

    end
  end
end
