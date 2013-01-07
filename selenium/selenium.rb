require 'rubygems' 
require 'selenium-webdriver' 

# navigate to the login page 
wait = Selenium::WebDriver::Wait.new :timeout => 10
browser = Selenium::WebDriver.for :firefox 
browser.get 'http://www.yahoo.com' 

raise unless browser.title.include? 'Yahoo!'

elem = browser.find_element :name, 'p'
elem.send_keys 'seleniumhq'
elem.send_keys :return

wait.until { browser.title.include? 'seleniumhq' }

begin
    browser.find_element :xpath, "//a[contains(@href,'http://seleniumhq.org')]"
rescue
    raise "can't find seleniumhq"
end

# close the browser
browser.close


