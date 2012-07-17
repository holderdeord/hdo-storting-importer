module Hdo
  module StortingImporter
    class Party
      attr_reader :external_id, :name
      
      def self.from_storting_doc(doc)
        doc.css("partier_liste parti").map do |node|
          new node.css("id").first.text, node.css("navn").first.text
        end
      end
      
      def initialize(external_id, name)
        @external_id = external_id
        @name        = name
      end
    end
  end
end