# Set up simplecov
require 'simplecov'
SimpleCov.start { add_filter '/spec/' }

# Set up the load path and RSpec
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'magician'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

# RSpec configuration
RSpec.configure do |config|
  
end
