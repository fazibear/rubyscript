module RubyScript
  class Processor < SexpProcessor
    include Process::Defn
    include Process::Args
    include Process::Lit
    include Process::Block
    include Process::Call
    include Process::Const

    def initialize # :nodoc:
      super
      self.auto_shift_type = true
      self.strict = true
      self.expected = String
    end
  end
end
