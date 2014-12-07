Feature: As a user I would like to edit
  a question

  @Happy
  Scenario: I edit the Question
    Given I am on the question page
    When I click "Edit"
    And I enter edit question info
    And I click "Save"
    Then I should see edited question info

  @Sad
  Scenario: I edit the Question
    Given I am on the question page
    When I click "Edit"
    And I enter invalid edit question info
    And I click "Save"
    Then I should see invalid question input message

