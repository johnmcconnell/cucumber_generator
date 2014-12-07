Feature: As a user I would like to view
  a <%= file_name %>

<%- if @user.set? -%>
<%= @user.background_steps(:show) %>
<%- end -%>
  Scenario: I am viewing the <%= file_name %> page
    Given I am on the <%= file_name %> page
    Then I should see the <%= file_name %> content
