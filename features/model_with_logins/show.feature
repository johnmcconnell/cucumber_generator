Feature: As a user I would like to view
  a model_with_login

  Background:
Given I am signed in

  Scenario: I am viewing the model_with_login page
    Given I am on the model_with_login page
    Then I should see the model_with_login content
