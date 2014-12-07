Feature: As a user I would like to view
  my model_with_logins

  Background:
    Given I have some example model_with_logins
    And I am signed in

  Scenario: I am viewing the model_with_logins page
    Given I am on the model_with_logins page
    Then I should see model_with_logins content
