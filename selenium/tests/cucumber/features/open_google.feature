Feature: Open Google
  Checking the title of the Google home page.
  
  Scenario: Title in the Google home page.
    Given I am on the home page
    Then I should see "Google" in the title of the browser
