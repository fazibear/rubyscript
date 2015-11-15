require 'sexp_processor'
require 'ruby_parser'
require 'awesome_print'

require_relative './ruby_script/process/defn'
require_relative './ruby_script/process/args'
require_relative './ruby_script/process/lit'
require_relative './ruby_script/process/block'
require_relative './ruby_script/process/call'
require_relative './ruby_script/process/const'

require_relative './ruby_script/processor'

sexp = RubyParser.new.parse(File.read(ARGV[0]))
puts RubyScript::Processor.new.process sexp
