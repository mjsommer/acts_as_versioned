ENV["RACK_ENV"] = "test"

require "rack/test"

require 'test/unit'
require 'minitest/autorun'
require 'active_record'
require 'active_support'
require 'active_support/test_case'
require 'active_record/fixtures'
