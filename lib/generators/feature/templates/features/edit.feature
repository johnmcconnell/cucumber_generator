Feature: As a user I would like to edit
  a <%= file_name %>

<%- if @user.set? -%>
<%= @user.background_steps(:edit) %>
<%- end -%>
  @Happy
  Scenario: I edit the <%= class_name %>
    Given I am on the <%= file_name %> page
    When I click "Edit"
    And I enter edit <%= file_name %> info
    And I click "Save"
    Then I should see edited <%= file_name %> info

  @Sad
  Scenario: I edit the <%= class_name %>
    Given I am on the <%= file_name %> page
    When I click "Edit"
    And I enter invalid edit <%= file_name %> info
    And I click "Save"
    Then I should see edited <%= file_name %> info

