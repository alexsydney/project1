# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

*

Uncomment gem use for this prject:
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

Add Gem file
#use for Heroku production server for live app
gem 'rails_12factor', group: :production
# use for debugger
gem 'pry-rails'
gem 'annotate'
gem 'jquery-rails'
