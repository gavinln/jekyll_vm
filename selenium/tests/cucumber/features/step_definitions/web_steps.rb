Given /^I am on the home page$/ do
  visit('/')
end

Then /^I should see "(.*?)" in the title of the browser$/ do |title|
  page.should have_xpath('//title', :text => title)
end
