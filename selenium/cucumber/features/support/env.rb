require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'

if ENV['HEADLESS'] == 'true'
    require 'headless'
    headless = Headless.new
    headless.start
    at_exit do
        headless.destroy
    end
end


Capybara.default_driver = :selenium

World(Capybara)
