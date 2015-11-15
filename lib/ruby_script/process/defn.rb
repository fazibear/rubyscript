module RubyScript
  module Process
    module Defn
      def process_defn(exp)
        name = exp.shift
        args = process(exp.shift)
        block = process(exp.shift)
        %{ var #{name} = function(#{args}){
         return #{block};
       }
        }
      end
    end
  end
end
