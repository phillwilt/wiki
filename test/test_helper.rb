puts "Current Environment: #{Rails.env}"

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/pride'

# To add Capybara feature tests add `gem 'minitest-rails-capybara'`
# to the test group in the Gemfile and uncomment the following:
require 'minitest/rails/capybara'

module ActiveSupport
  class TestCase
    ActiveRecord::Migration.check_pending!

    # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in
    # alphabetical order.
    # Note: You'll currently still have to declare fixtures explicitly in
    # integration tests -- they do not yet inherit this setting
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end

def sign_in(user)
  visit new_user_session_path
  fill_in 'Email', with: users(user).email
  fill_in 'Password', with: '12345678'
  click_on 'Log in'
end
