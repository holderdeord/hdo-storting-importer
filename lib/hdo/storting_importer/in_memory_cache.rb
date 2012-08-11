module Hdo
  module StortingImporter
    class InMemoryCache
      def initialize
        @cache = {}
      end

      def fetch(key, &blk)
        @cache[key] ||= yield
      end
    end
  end
end