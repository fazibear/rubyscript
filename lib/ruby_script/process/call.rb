module RubyScript
  module Process
    module Call
      def process_call(exp)
        receiver_node_type = exp.first.nil? ? nil : exp.first.first
        receiver = process(exp.shift)
        method = exp.shift
        block = process(exp.shift)
        if receiver
          "#{receiver}.#{method}(#{block})"
        else
          "#{method}(#{block})"
        end
      end
    end
  end
end
