require "bundler/gem_tasks"

task :default => [:test]

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end


# require "rake/testtask"
# require "sinatra/activerecord/rake"
# require "./app"

# task :default => :test

# TEST_FILES = FileList["test/**/test*.rb"]

# desc "Run all of the tests for redFish"
# Rake::TestTask.new do |t|
#   t.libs << "test"
#   t.test_files = TEST_FILES
#   t.verbose = true
# end

# task :default => "test"