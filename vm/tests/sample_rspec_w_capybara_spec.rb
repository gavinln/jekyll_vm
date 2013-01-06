# Rspec with Capybara code to get the index page of a website - in this case 'google.co.in' and 
# check if "Google" is in the title.
# There are conditions I have delibrately ignored - namely redirection. For example for 'yahoo.com' there is 
# a redirection as well as for - google.com redirected to 'google.co.in'
#
# IMPORTANT - Code to run this file.
# rspec sample_rspec_w_capybara_spec.rb --format nested
#
# Normally people do not test external websites. Capybara with Rspec generally entails having your own Rack application.
# To get this to work outside a Rack application was real pain.

require 'rubygems'
require 'capybara/mechanize'
require 'nokogiri'

Capybara.app_host = "http://www.google.co.in"

describe "WebPage" do
  describe "title of the webpage visited" do
    it "should get the title of the web page" do
      session = Capybara::Session.new(:mechanize)
      session.visit('/')
      Nokogiri.parse(session.body).title.should eq('Google')
    end
  end
end
