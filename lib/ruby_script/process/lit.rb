module RubyScript
  module Process
    module Lit
      def process_lit(exp)
        exp.shift.to_s
      end
    end
  end
end
