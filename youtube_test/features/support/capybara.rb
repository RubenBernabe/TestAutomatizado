require 'capybara/cucumber'

require 'selenium-webdriver'
Capybara.default_driver = :selenium_chrome

Capybara.ignore_hidden_elements = false

Capybara.default_selector = :css

