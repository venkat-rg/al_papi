def is_ruby_19?
  RUBY_VERSION == '1.9.1' or RUBY_VERSION == '1.9.2'
end

Encoding.default_internal = Encoding.default_external = "ASCII-8BIT" if is_ruby_19?

require 'rubygems'
require 'rspec'

begin
  require 'ruby-debug' 
rescue LoadError
  # No Debugging
end


require File.dirname(__FILE__) + '/../lib/al_papi.rb'

TEST_KEY = '123456htva2421eda89h'