module Hdo
  module StortingImporter
    class HttpImporter
      
      def initialize(app_url)
        @app_url = app_url 
      end
      
      def import(xml)
        raise NotImplementedError
      end
      
    end
  end
end
