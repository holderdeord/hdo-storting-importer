module Hdo
  module StortingImporter
    class ScriptImporter
      
      def initialize(app_root)
        @app_root = app_root 
      end
      
      def import(xml)
        Tempfile.open("storting2hdo") do |f|
          f << xml
          f.close

          Dir.chdir(@app_root) { system "script/import", f.path }
        end
      end
      
    end
  end
end