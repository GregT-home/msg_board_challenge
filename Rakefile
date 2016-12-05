# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

task :test_environment do
  ENV['RAILS_ENV'] = 'test'
end

task spec: [:test_environment]
task spinach: [:test_environment]
