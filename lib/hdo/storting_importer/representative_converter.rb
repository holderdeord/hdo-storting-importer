module Hdo
  module StortingImporter
    class RepresentativeConverter < Converter

      def self.handles?(name)
        %w[dagensrepresentanter_oversikt representanter_oversikt].include? name
      end

      def representatives
        nodes = @doc.css("dagensrepresentant")
        nodes += @doc.css("representant")

        nodes.map do |node|
          RepresentativeBuilder.new(node).build
        end
      end

      def template_name
        'representatives'
      end

    end
  end
end