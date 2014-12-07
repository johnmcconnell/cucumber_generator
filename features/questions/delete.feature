Feature: As a user I would like to view
  my questions

  Scenario: I am deleting the question
    Given I am on the questions page
    When I destroy one question
    Then I should see one less question content
