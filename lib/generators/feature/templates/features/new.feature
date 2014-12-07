Feature: As a user I would like to create
  a new <%= file_name %>

<%- if @user.set? -%>
<%= @user.background_steps(:new) %>
<%- end -%>
  @Happy
  Scenario: I create the <%= class_name %>
    Given I am on the <%= table_name %> page
    When I click "New <%= class_name %>"
    And I enter new <%= file_name %> info
    And I click "Save"
    Then I should see the new <%= file_name %> info

  @Sad
  Scenario: I create the <%= class_name %>
    Given I am on the <%= table_name %> page
    When I click "New <%= class_name %>"
    And I enter invalid new <%= file_name %> info
    And I click "Save"
    Then I should see <%= file_name %> errors

