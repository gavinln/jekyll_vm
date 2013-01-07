require 'rubygems' 
require 'selenium-webdriver' 
require 'test/unit'

class BrowserPage
    def initialize(browser, wait)
        @browser = browser
        @wait = wait
    end
end

class YahooSearchPage < BrowserPage
    @@url = 'http://www.yahoo.com' 
    @@searchField = 'p'
    def search(searchKeyword)
        @browser.get @@url
        elem = @browser.find_element :name, @@searchField
        elem.send_keys searchKeyword
        elem.send_keys :return
        @wait.until { @browser.title.include? searchKeyword }
        YahooSearchResultsPage.new @browser, @wait
    end
end

class YahooSearchResultsPage < BrowserPage
    @@searchResultsField = "//a[contains(@href,'%s')]"
    def results_contains?(url)
        @browser.find_element :xpath, @@searchResultsField % [url]
    end
end

class YahooSeleniumSearchTests < Test::Unit::TestCase
    def setup
        # create selenium objects
        @wait = Selenium::WebDriver::Wait.new :timeout => 10
        @browser = Selenium::WebDriver.for :firefox 
    end
    def test_search
        assert_nothing_raised do
            searchPage = YahooSearchPage.new @browser, @wait
            searchResultsPage = searchPage.search 'seleniumhq'
            searchResultsPage.results_contains? 'http://seleniumhq.org'
        end
    end
    def teardown
        @browser.close  
    end
end
