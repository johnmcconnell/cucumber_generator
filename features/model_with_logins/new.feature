Feature: As a user I would like to create
  a new model_with_login

  Background:
Given I am signed in


  @Happy
  Scenario: I create the model_with_login
    Given I am on the model_with_logins page
    When I click "New ModelWithLogin"
    And I enter new model_with_login info
    And I click "Save"
    Then I should see the new model_with_login info

  @Sad
  Scenario: I create the model_with_login
    Given I am on the model_with_logins page
    When I click "New ModelWithLogin"
    And I enter invalid new model_with_login info
    And I click "Save"
    Then I should see invalid model_with_login input message

