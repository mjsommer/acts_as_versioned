ENV["RACK_ENV"] = "test"

require 'test/unit'
require 'minitest/autorun'
require 'active_record'
require 'active_support'
require 'active_support/test_case'
require 'active_record/fixtures'

require 'db_acts_as_versioned'

require 'logger'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => ':memory:')
ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Migration.verbose = false

load(File.dirname(__FILE__) + "/schema.rb")

# require 'test_help'

class ActiveSupport::TestCase #:nodoc:
  include ActiveRecord::TestFixtures

  self.fixture_path = File.dirname(__FILE__) + "/fixtures/"

  # Instantiated fixtures are slow, but give you @david where you otherwise would need people(:david)
  self.use_instantiated_fixtures  = false

  # Add more helper methods to be used by all tests here...
end
