module Hdo
  module StortingImporter
    module Inspectable
      def short_inspect_string(opts)
        if excluded_ivars = opts[:exclude]
          excluded_ivars.map! { |ivar| ivar.to_sym }
          all_ivars = instance_variables.map { |e| e.to_sym }
          ivars = all_ivars - excluded_ivars
        elsif included_ivars = opts[:include]
          included_ivars.map! { |ivar| "@#{ivar}".to_sym }
          ivars = included_ivars
        else
          raise ArgumentError, "unknown arg: #{opts.inspect}"
        end

        ivars.map! do |ivar|
          val = instance_variable_get(ivar)
          str = val.respond_to?(:short_inspect) ? val.short_inspect : val.inspect

          "#{ivar}=#{str}"
        end

        '#<%s:0x%s %s>' % [self.class.name, self.hash.to_s(16), ivars.join(" ").strip]
      end
    end
  end
end