module Hdo
  module StortingImporter
    class RepresentativeConverter < Converter

      def self.type_name
        :representatives
      end

      def representatives
        docs.map do |doc|
          nodes = doc.css("dagensrepresentant")
          nodes += doc.css("representant")

          nodes.map { |node| RepresentativeBuilder.new(node).build }
        end.flatten
      end

    end
  end
end