Feature: As a user I would like to create
  a new model

  @Happy
  Scenario: I create the model
    Given I am on the models page
    When I click "New Model"
    And I enter new model info
    And I click "Save"
    Then I should see the new model info

  @Sad
  Scenario: I create the model
    Given I am on the models page
    When I click "New Model"
    And I enter invalid new model info
    And I click "Save"
    Then I should see invalid model input message

