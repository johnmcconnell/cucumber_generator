Feature: As a user I would like to edit
  a model_with_login

  Background:
Given I am signed in

  @Happy
  Scenario: I edit the model_with_login
    Given I am on the model_with_login page
    When I click "Edit"
    And I enter edit model_with_login info
    And I click "Save"
    Then I should see edited model_with_login info

  @Sad
  Scenario: I edit the model_with_login
    Given I am on the model_with_login page
    When I click "Edit"
    And I enter invalid edit model_with_login info
    And I click "Save"
    Then I should see invalid model_with_login input message

