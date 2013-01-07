require 'rubygems' 
require 'capybara/rspec'
require 'headless'


describe "Yahoo search for seleniumhq", :type => :feature do
    it "should have seleniumhq url when searching for seleniumhq" do
        headless = Headless.new
        headless.start

        session = Capybara::Session.new(:selenium)
        session.visit 'http://www.yahoo.com'
        session.within 'form.search-form' do
            session.fill_in 'p', :with => 'seleniumhq'
            session.click_button 'search-submit'
        end
        session.find 'a[href="http://seleniumhq.org/"]'

        headless.destroy
    end
end


