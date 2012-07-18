module Hdo
  module StortingImporter
    module IvarEquality

      def ==(other)
        other.kind_of?(self.class) && __ivars__ == other.__ivars__
      end
      alias_method :eql?, :==

      def hash
        __ivars__.hash ^ self.class.hash
      end

      def __ivars__
        res = {}
        instance_variables.each { |e| res[e] = instance_variable_get(e) }

        res
      end
    end
  end
end