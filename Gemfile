source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'thin'
gem 'api_taster'

# Gems used only for assets and not required
# in production environments by default.
# group :assets do
#   gem 'sass-rails',   '~> 3.2.3'
#   gem 'coffee-rails', '~> 3.2.1'

#   # See https://github.com/sstephenson/execjs#readme for more supported runtimes
#   # gem 'therubyracer', :platforms => :ruby

#   gem 'uglifier', '>= 1.0.3'
# end

group :test do
  gem 'shoulda'
  gem "factory_girl_rails", "~> 4.0"
  gem 'spork-rails'
  # gem 'guard-spork'
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'guard-migrate'
  gem 'migration_test_helper'
  gem 'json_spec'
end

group :test, :development do
  gem "api_taster"
  gem "rspec-rails", "~> 2.0"
  gem 'guard'
  gem 'rb-readline'
  gem 'pry'
  gem 'pry-doc'
  gem 'sextant'
  gem 'pry_debug'
end

#gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
#gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'