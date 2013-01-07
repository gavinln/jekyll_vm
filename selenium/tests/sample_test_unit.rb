# Test::Unit code to get the index page of a website - in this case 'google.co.in' and 
# check if "Google" is in the title.
# There are conditions I have delibrately ignored - namely redirection. For example for 'yahoo.com' there is 
# a redirection as well as for - google.com redirected to 'google.co.in'

require 'rubygems'
require 'net/http'
require 'nokogiri'
require 'test/unit'
require 'shoulda'

class WebPage
  attr_accessor :url
  def initialize(url)
    @url = url
  end
  
  def get_page
    Net::HTTP.get(URI(url))
  end
  
  def title
    Nokogiri.parse(self.get_page).title
  end
end

class TestWebPage < Test::Unit::TestCase
  should "return 'Google' in the title element of the page" do
    page = WebPage.new('http://www.google.com/')
    assert_equal "Google2", page.title
  end
end
