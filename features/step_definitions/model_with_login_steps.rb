def edited_model_with_login_params
  pending
end

def model_with_login
  @model_with_login ||= pending
end

def new_model_with_login_params
  pending
end

def user_with_model_with_logins
  @session_user ||= pending
end

### GIVEN ###

Given(/^I am on the model_with_logins page$/) do
  visit(model_with_login_path(model_with_login))
end

Given(/^I have some model_with_logins$/) do
  user_with_model_with_logins
end

Given(/^I am on the model_with_logins page$/) do
  visit(model_with_logins_path)
end

### WHEN ###

When(/^I destroy one model_with_login$/) do
  pending
end

When(/^I edit model_with_login info$/) do
  enter_form(edited_model_with_login_params)
end

When(/^I enter new model_with_login info$/) do
  enter_form(new_model_with_login_params)
end

### THEN ###

Then(/^I should see the new model_with_login info$/) do
  pending
end

Then(/^I should see model_with_logins content$/) do
  pending
end

Then(/^I should be on the model_with_logins page$/) do
  expect(current_path).to eq(model_with_logins_path)
end

