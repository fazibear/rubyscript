module RubyScript
  module Process
    module Args
      def process_args(exp)
        args = []
        until exp.empty? do
          args << exp.shift
        end
        args.join(', ')
      end
    end
  end
end
