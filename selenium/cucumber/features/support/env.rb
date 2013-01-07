require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'

Capybara.default_driver = :selenium

World(Capybara)
