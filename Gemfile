# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem's dependencies in db_acts_as_versioned.gemspec
gemspec

# Development dependencies
group :development do
  gem "bundler"
  gem "rake"
end

group :development, :test do
  gem "rubocop"
  gem "rubocop-gitlab-security"
  gem "rubocop-minitest"
  gem "rubocop-performance"
  gem "rubocop-rspec"
end

group :test do
  gem "sqlite3"
  gem "test-unit"
end
