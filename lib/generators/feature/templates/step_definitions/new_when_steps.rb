When(/^I enter new <%= generator.file_name %> info$/) do
  enter_form(new_<%= generator.file_name %>_params)
end

When(/^I enter invalid new <%= generator.file_name %> info$/) do
  enter_form(new_<%= generator.file_name %>_params)
end

