  Background:
    <%- if @action == :index -%>
    Given I have some example <%= generator.send :table_name %>
    And <% else %>    Given <% end %>I am signed in
