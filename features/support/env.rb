ENV['RAILS_ENV'] = 'test'
puts "RAILS_ENV is set to #{ENV['RAILS_ENV']}"
raise MustBeTest unless ENV['RAILS_ENV'] == 'test'  # bug workaround
require 'spinach-rails'
require_relative '../../config/environment'
require 'rspec/rails'
require 'capybara/poltergeist'
require 'database_cleaner'


DatabaseCleaner.strategy = :truncation

# Clean the DB before starting so we can examine the DB after failures.
Spinach.hooks.before_scenario do
  DatabaseCleaner.clean
end

#Spinach.config.save_and_open_page_on_failure = true
