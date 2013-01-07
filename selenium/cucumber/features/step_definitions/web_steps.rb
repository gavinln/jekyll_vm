Given /^I am on the Yahoo home page$/ do
  visit('http://www.yahoo.com/')
end

When /I search for "(.*?)"/ do |searchTerm|
    within 'form.search-form' do
        fill_in 'p', :with => searchTerm
        click_button 'search-submit'
    end
end

Then /^I should see "(.*?)" in the title of the browser$/ do |title|
  page.should have_xpath('//title', :text => title)
end

Then /^I should see "(.*?)" in the search results$/ do |url|
    page.should have_selector 'a[href="%s"]' % [url]
end
