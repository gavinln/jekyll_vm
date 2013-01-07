require 'rubygems' 
require 'selenium-webdriver' 
require 'rspec'

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

describe YahooSearchPage do
    it "should have seleniumhq url when searching for seleniumhq" do
        wait = Selenium::WebDriver::Wait.new :timeout => 10
        browser = Selenium::WebDriver.for :firefox 
        searchPage = YahooSearchPage.new browser, wait
        searchResultsPage = searchPage.search 'seleniumhq'
        element = searchResultsPage.results_contains? 'http://seleniumhq.org'
        browser.close  
    end
end
