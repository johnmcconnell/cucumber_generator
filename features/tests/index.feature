Feature: As a user I would like to view
  my tests

  Background:
    Given I have some example tests
    And I am signed in

  Scenario: I am viewing the tests page
    Given I am on the tests page
    Then I should see my tests content
