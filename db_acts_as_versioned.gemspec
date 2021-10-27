# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'db_acts_as_versioned/version'

Gem::Specification.new do |spec|
  spec.name          = "db_acts_as_versioned"
  spec.version       = DbActsAsVersioned::VERSION
  spec.authors       = ["Sommer Systems, LLC"]
  spec.email         = ["sommerm@vmware.com"]
  spec.summary       = %q{Active Record model versioning}
  spec.description   = %q{Active Record model versioning, with adjustments made for Rails 4 and PostgreSQL.}
  spec.homepage      = "https://github.com/mjsommer/acts_as_versioned"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'activerecord', '~> 4.2'
  spec.add_dependency 'activesupport', '~> 4.2'
  spec.add_dependency 'bigdecimal', '= 1.3.5'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'test-unit'
  spec.add_development_dependency 'sqlite3', '~> 1.3.0'
end
