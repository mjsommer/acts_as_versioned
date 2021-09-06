ENV["RACK_ENV"] = "test"

puts("FOOOOOOOOOOO!!!!!!!!")

# require "rack/test"

require 'test/unit'
require 'minitest/autorun'
require 'active_record'
require 'active_support'
require 'active_support/test_case'
require 'active_record/fixtures'
