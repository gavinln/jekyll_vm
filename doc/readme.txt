1. vagrant up

2. vagrant provision

3. Login to the GUI and run startx

3. Start "System Tools/Xterm" from the menu and then run 
xterm -ls

4. Change to the directory with ruby code
cd /vagrant/selenium

5. Ruby test without Test::Unit
ruby selenium.rb

6. Ruby test with Test::Unit
ruby selenium_unit.rb

7. Ruby test with page objects and Test::Unit
ruby selenium_unit_pageobject.rb

8. Rspec test with page objects
rspec selenium_rspec_pageobject.rb

9. Cucumber test with capybara
cd /vagrant/selenium/cucumber
cucumber
