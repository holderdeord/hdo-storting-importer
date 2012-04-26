require 'pathname'

module Hdo
  module StortingImporter

    class DataSource
      class NotFoundError < StandardError
      end

      DEFAULT_SESSION = '2011-2012'
      DEFAULT_PERIOD = '2009-2013'

      private

      def parse(str)
        doc = Nokogiri.XML(str)
        doc.remove_namespaces!

        doc.first_element_child
      end
    end

    class DiskDataSource < DataSource

      def initialize(root)
        @root = Pathname.new(root)
      end

      def parties(session_id = DEFAULT_SESSION)
        parse @root.join("eksport/partier/index.html?sesjonid=#{session_id}").read
      end

      def committees(session_id = DEFAULT_SESSION)
        parse @root.join("eksport/komiteer/index.html?SesjonId=#{session_id}").read
      end

      def districts
        parse @root.join("eksport/fylker/index.html").read
      end

      def topics
        parse @root.join("eksport/emner/index.html").read
      end

      def issues(session_id = DEFAULT_SESSION)
        parse @root.join("eksport/saker/index.html?sesjonid=#{session_id}").read
      end

      def representatives(period = DEFAULT_PERIOD)
        %W[
          eksport/representanter/index.html?StortingsPeriodeId=#{period}
          eksport/dagensrepresentanter/index.html
        ].map { |path| parse @root.join(path).read }
      end

      def votes
        glob = @root.join("eksport/voteringer/index.html*")
        Pathname.glob(glob).sort.map { |e| parse e.read }
      end

      def propositions_for(vote_id)
        propositions_path = @root.join("eksport/voteringsforslag/index.html?voteringid=#{vote_id}")

        unless propositions_path.exist?
          raise NotFoundError, "propositions data not found at #{propositions_path}"
        end

        parse propositions_path.read
      end

      def vote_results_for(vote_id)
        vote_result_path = @root.join("eksport/voteringsresultat/index.html?voteringid=#{vote_id}")

        unless vote_result_path.exist?
          raise NotFoundError, "vote result file not found at #{vote_result_path.inspect}"
        end

        parse vote_result_path.read
      end
    end

    class ApiDataSource < DataSource
      def initialize
        raise NotImplementedError
      end
    end

  end
end
