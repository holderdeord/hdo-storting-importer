require 'spec_helper'

module Hdo
  module StortingImporter
    describe Proposition do

      it_behaves_like 'type with JSON schema'
      it_behaves_like 'type with #short_inspect'

    end
  end
end
