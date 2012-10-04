module Hdo
  module StortingImporter
    class DiskDataSource < DataSource

      def initialize(root)
        @root = Pathname.new(root)
      end

      def parties(session_id)
        fetch "eksport/partier/index.html?sesjonid=#{session_id}"
      end

      def committees(session_id)
        fetch "eksport/komiteer/index.html?SesjonId=#{session_id}"
      end

      def districts
        fetch "eksport/fylker/index.html"
      end

      def categories
        fetch "eksport/emner/index.html"
      end

      def parliament_issues(session_id)
        fetch "eksport/saker/index.html?sesjonid=#{session_id}"
      end

      def representatives(period)
        fetch "eksport/representanter/index.html?StortingsPeriodeId=#{period}"
      end

      def representatives_today
        fetch 'eksport/dagensrepresentanter/index.html'
      end

      def votes_for(issue_id)
        fetch "eksport/voteringer/index.html?sakid=#{issue_id}"
      end

      def propositions_for(vote_id)
        fetch "eksport/voteringsforslag/index.html?voteringid=#{vote_id}"
      end

      def vote_results_for(vote_id)
        fetch "eksport/voteringsresultat/index.html?voteringid=#{vote_id}"
      end

      private

      def fetch(path)
        subpath = @root.join(path)
        Hdo::StortingImporter.logger.info "parsing #{subpath}"

        parse subpath.read
      end

    end
  end
end