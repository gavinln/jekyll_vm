require 'rubygems' 
require 'selenium-webdriver' 
require 'test/unit'

class YahooSeleniumSearchTests < Test::Unit::TestCase
    def setup
        # create selenium objects
        @wait = Selenium::WebDriver::Wait.new :timeout => 10
        @browser = Selenium::WebDriver.for :firefox 
    end

    def test_search
        @browser.get 'http://www.yahoo.com' 

        assert_nothing_raised do
            elem = @browser.find_element :name, 'p1'
            elem.send_keys 'seleniumhq'
            elem.send_keys :return
            @wait.until { @browser.title.include? 'seleniumhq' }
            @browser.find_element :xpath, "//a[contains(@href,'http://seleniumhq.org')]"
        end
    end
    def teardown
        @browser.close  
    end
end
