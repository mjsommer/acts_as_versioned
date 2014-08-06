require 'rubygems'  
require 'rake'  
require 'echoe'  
  
Echoe.new('acts_as_versioned', '3.3.9') do |p|
  p.description     = "Active Record model versioning"  
  p.url             = "http://github.com/mjsommer/acts_as_versioned"
  p.author          = "Sommer Systems, LLC"
  p.email           = "martin@sommer.net"
  p.dependencies = ['activerecord']  
end  
  
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }  