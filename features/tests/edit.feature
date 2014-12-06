Feature: As a user I would like to edit
  a test

  @Happy
  Scenario: I edit an Test
    Given I am on a test page
    When I click "Edit"
    And I enter edit test info
    And I click "Save"
    Then I should see edited test info

  @Sad
  Scenario: I edit an Test
    Given I am on a test page
    When I click "Edit"
    And I enter invalid edit test info
    And I click "Save"
    Then I should see edited test info

