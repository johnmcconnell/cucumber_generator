Feature: As a user I would like to view
  my <%= table_name %>

<%- if @user.set? -%>
<%= @user.background_steps(:delete) %>
<%- end -%>
  Scenario: I am deleting the <%= file_name %>
    Given I am on the <%= table_name %> page
    When I destroy one <%= file_name %>
    Then I should see one less <%= file_name %> content
