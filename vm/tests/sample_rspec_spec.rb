# Rspec code to get the index page of a website - in this case 'google.co.in' and 
# check if "Google" is in the title.
# There are conditions I have delibrately ignored - namely redirection. For example for 'yahoo.com' there is 
# a redirection as well as for - google.com redirected to 'google.co.in'
#
# IMPORTANT - Code to run this file.
# rspec sample_rspec_spec.rb --format nested
#
require 'rubygems'
require 'net/http'
require 'nokogiri'
require 'rspec'

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

describe WebPage, '#title' do
  it "returns 'Google' in the title element of the web page" do
    page = WebPage.new('http://www.google.co.in/')
    page.title.should eq('Google')
  end
end
