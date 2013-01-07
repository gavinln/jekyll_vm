Feature: Search Yahoo
    Use the Yahoo home page to search the web
  
    Scenario: Search for seleniumhq
        Given I am on the Yahoo home page
        Then I should see "Yahoo!" in the title of the browser
        When I search for "seleniumhq"
        Then I should see "http://seleniumhq.org/" in the search results
