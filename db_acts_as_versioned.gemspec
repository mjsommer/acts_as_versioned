# frozen_string_literal: true

require "English"

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "db_acts_as_versioned/version"

Gem::Specification.new do |spec|
  spec.name          = "db_acts_as_versioned"
  spec.version       = DbActsAsVersioned::VERSION
  spec.authors       = ["Sommer Systems, LLC"]
  spec.email         = ["sommerm@vmware.com"]
  spec.summary       = "Active Record model versioning"
  spec.description   = "Active Record model versioning, with adjustments made for Rails 4 and PostgreSQL."
  spec.homepage      = "https://github.com/mjsommer/acts_as_versioned"
  spec.license       = "MIT"

  spec.required_ruby_version = Gem::Requirement.new(">= 2.7")

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", "~> 5", "< 7"
  spec.metadata["rubygems_mfa_required"] = "true"
end
