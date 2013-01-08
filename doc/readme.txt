1. vagrant up

2. vagrant provision

3. Login to the GUI and run the following
startx

3. Start "System Tools/Xterm" from the menu and then run 
xterm -ls

4. Change to the directory with ruby code (type yes to trust .rvmrc file)
cd /vagrant/selenium

5. Ruby test without Test::Unit
ruby selenium.rb

6. Ruby test with Test::Unit
ruby selenium_unit.rb

7. Ruby test with page objects and Test::Unit
ruby selenium_unit_pageobject.rb

8. Rspec test with page objects
rspec selenium_rspec_pageobject.rb

9. Rspec test with capybara
rspec selenium_rspec_capybara.rb

10. Cucumber test with capybara
cd /vagrant/selenium/cucumber
cucumber

To install google-chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
sudo dpkg -i google-chrome*
Download chromedriver from http://code.google.com/p/chromedriver/downloads/list
