require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'

Capybara.default_driver = :selenium
Capybara.app_host = 'http://www.google.co.in'

World(Capybara)
