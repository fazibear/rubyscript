module RubyScript
  module Process
    module Block
      def process_block(exp)
        result = []
        until exp.empty? do
          code = exp.shift
          if code.nil? or code.first == :nil then
            result << "# do nothing\n"
          else
            result << process(code)
          end
        end
        result.join("\n")
      end
    end
  end
end

