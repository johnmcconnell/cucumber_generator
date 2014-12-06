Feature: As a user I would like to view
  my <%= table_name %>

<%- if @user.set? -%>
<%= @user.background_steps(:index) %>
<%- end -%>
  Scenario: I am viewing the <%= table_name %> page
    Given I am on the <%= table_name %> page
    Then I should see my <%= table_name %> content
