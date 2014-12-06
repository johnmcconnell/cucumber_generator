Feature: As a user I would like to view
  my tests

  Scenario: I am deleting a test
    Given I am on the tests page
    When I destroy one test
    Then I should see one less test content
