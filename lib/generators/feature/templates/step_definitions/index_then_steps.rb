Then(/^I should see <%= generator.send :table_name %> content$/) do
  pending
end

Then(/^I should be on the <%= generator.send :table_name %> page$/) do
  expect(current_path).to eq(<%= generator.send :table_name %>_path)
end

