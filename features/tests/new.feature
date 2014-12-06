Feature: As a user I would like to create
  a new test

  @Happy
  Scenario: I create an Test
    Given I am on the tests page
    When I click "New Test"
    And I enter new test info
    And I click "Save"
    Then I should see the new test info

  @Sad
  Scenario: I create an Test
    Given I am on the tests page
    When I click "New Test"
    And I enter invalid new test info
    And I click "Save"
    Then I should see test errors

