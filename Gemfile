source 'https://rubygems.org'

ruby '2.3.3'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'slim-rails'
gem 'devise'
gem 'bootstrap', '~> 4.0.0.alpha3'

group :development, :test do
  gem 'sqlite3'
  gem 'pry-byebug'
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails'
  gem 'spinach-rails'
  gem 'faker'        # enable creation of fake data in factories
end

group :test do
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'capybara'
  gem 'poltergeist'
  gem 'launchy'
end

group :development do
  gem 'web-console'  # Enable <% =console %> to generate an IRB console
  gem 'listen', '~> 3.0.5'
  gem 'spring'       # Dynamic reloading in development
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'rails_12factor'
  gem 'pg'
end
