Feature: As a user I would like to create
  a new question

  @Happy
  Scenario: I create the question
    Given I am on the questions page
    When I click "New Question"
    And I enter new question info
    And I click "Save"
    Then I should see the new question info

  @Sad
  Scenario: I create the question
    Given I am on the questions page
    When I click "New Question"
    And I enter invalid new question info
    And I click "Save"
    Then I should see invalid question input message

