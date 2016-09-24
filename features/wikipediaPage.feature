Feature: Wikipedia search

  As an user i want
  to search in wikipedia site

  Scenario: Search
   Given Im on wikipedia portal
   When I search for "furry rabbits" and i click on the suggestion
   Then I click on the first result
