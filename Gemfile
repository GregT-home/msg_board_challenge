source 'https://rubygems.org'

ruby '2.4.2'

gem 'bootstrap', '~> 4.0.0.alpha3'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'faker'        # enable creation of fake data in factories
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.1.0'
gem 'sass-rails', '~> 5.0'
gem 'slim-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'factory_girl_rails'
  gem 'pry-byebug'
  gem 'rspec-rails', '~> 3.6'
  gem 'spinach-rails'
  gem 'sqlite3'
end

group :test do
  gem 'capybara'
  gem 'chromedriver-helper'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'poltergeist'
  gem 'selenium-webdriver'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'       # Dynamic reloading in development
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console'  # Enable <% =console %> to generate an IRB console
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
