require "bundler/gem_tasks"

# require 'active_record'
# require 'active_support'

task :default => [:test]

require_relative 'test/test_helper'

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