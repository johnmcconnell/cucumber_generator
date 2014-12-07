Feature: As a user I would like to edit
  a model

  @Happy
  Scenario: I edit the model
    Given I am on the model page
    When I click "Edit"
    And I enter edit model info
    And I click "Save"
    Then I should see edited model info

  @Sad
  Scenario: I edit the model
    Given I am on the model page
    When I click "Edit"
    And I enter invalid edit model info
    And I click "Save"
    Then I should see invalid model input message

