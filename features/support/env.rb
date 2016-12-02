ENV['RAILS_ENV'] = 'test'
require './config/environment'

# require 'minitest/spec'
require 'rspec/rails'

require 'database_cleaner'
DatabaseCleaner.strategy = :truncation

# Clean the DB before starting so we can examine the DB after failures.
Spinach.hooks.before_scenario do
  DatabaseCleaner.clean
end

#Spinach.config.save_and_open_page_on_failure = true
