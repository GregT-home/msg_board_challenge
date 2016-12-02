# Local override
dotenv = File.expand_path('../.env_overrides.rb', __FILE__)
require dotenv if File.exist?(dotenv)

ENV['RAILS_ENV']        ||= 'development'
ENV['DATABASE_NAME']    ||= "msg_board_#{ENV['RAILS_ENV']}"
ENV['DATABASE_ADAPTER'] ||= 'sqlite3'
ENV['DATABASE_POOL']    ||= '5'
ENV['DATABASE_TIMEOUT'] ||= '5000'

ENV['SECRET_KEY_BASE']  ||= 'define in environment'
ENV['STARTER_PASSWORD'] ||= 'secretpw'
