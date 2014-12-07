When(/^I enter edit <%= generator.file_name %> info$/) do
  enter_form(edited_<%= generator.file_name %>_params)
end

When(/^I enter invalid edit <%= generator.file_name %> info$/) do
  enter_form(invalid_edited_<%= generator.file_name %>_params)
end

