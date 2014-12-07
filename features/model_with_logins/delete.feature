Feature: As a user I would like to view
  my model_with_logins

  Background:
Given I am signed in

  Scenario: I am deleting the model_with_login
    Given I am on the model_with_logins page
    When I destroy one model_with_login
    Then I should see one less model_with_login content
