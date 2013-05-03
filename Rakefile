require 'rubygems'  
require 'rake'  
require 'echoe'  
  
Echoe.new('acts_as_versioned', '3.2.1') do |p|  
  p.description     = "Active Record model versioning"  
  p.url             = "http://github.com/jwhitehorn/acts_as_versioned"  
  p.author          = "Jason Whitehorn"  
  p.email           = "jason.whitehorn@gmail.com"  
  p.ignore_pattern  = ["test/*.rb", "test/**/*", "RUNNING_UNIT_TESTS", "*.db"]
  p.test_pattern    = ''
  p.dependencies = ['activerecord']  
end  
  
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }  