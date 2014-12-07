Feature: As a user I would like to view
  my models

  Scenario: I am deleting the model
    Given I am on the models page
    When I destroy one model
    Then I should see one less model content
