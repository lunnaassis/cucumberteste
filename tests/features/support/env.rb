require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome 
    config.app_host = 'https://gwcloud.company'
    config.default_max_wait_time = 10
    end