# Custom Communication Message Board Challenge

## Problem

This is a message board system where posts are on the front page and one clicks through to see the original post with the discussion displayed below.

The program has the following featues:

* Self-serve user sign-up, sign-in, and sign-out
* Latest postings displayed on main page
* User postings displayed on User Profile pages
* Postings can be replied to by any user
* A list of Users can be displayed

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

command | action
------- | ------
`RAILS_ENV=test rake` | run all tests
`rspec` | unit tests only
`spinach` | end-to-end tests only

Both `rspec` and `spinach` tests can be run individually by specifying the name of the test file as an argument to the command.

Both `rspec` and `spinach` commands may need to be prefaced with `bundle exec` to ensure the proper versions are run.
