# Custom Communication Message Board Challenge

## Problem

This is a message board system where posts are on the front page and one clicks through to see the original post with the discussion displayed below.

Basic implementation will be in phases.

* Create a new rails app with a static home page
* Install Devise
* Make it pretty with Bootstrap
* Add pages to create and look at individual posts
* Make a posts index page
* Add replying
* Inline replying on a post
* Other features of your choice

# Background

## System Dependencies

* Ruby 2.3.3
* Rails 5
* Bootstrap V4
* Slim (templating language)

Tests are in Rspec and Spinach.

# Project Board
The Trello board for this project can be found [at this link](https://trello.com/b/uOlApVgS/custom-communications-message-board).

# Starting the app
* type ```rails server``` in a console window
* connect to app on localhost:3000
* Click on a message to see conversation details.


# Testing the app
This application has a set of rspec tests for the models and spinach tests for the end to end operations that you can run to validate operation and get some description of structure and operation.

* ```RAILS_ENV=test rake```
* ```RAILS_ENV=test rails spinach```
* ```RAILS_ENV=test rails spec```


