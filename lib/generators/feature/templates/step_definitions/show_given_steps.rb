Given(/^I am on the <%= generator.send :table_name %> page$/) do
  visit(<%= generator.file_name %>_path(<%= generator.file_name %>))
end

