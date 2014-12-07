Given(/^I have some <%= generator.send :table_name %>$/) do
  user_with_<%= generator.send :table_name %>
end

Given(/^I am on the <%= generator.send :table_name %> page$/) do
  visit(<%= generator.send :table_name %>_path)
end

