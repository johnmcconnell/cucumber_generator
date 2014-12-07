def edited_question_params
  pending
end

def question
  @question ||= pending
end

def new_question_params
  pending
end

def user_with_questions
  @session_user ||= pending
end

### GIVEN ###

Given(/^I am on the questions page$/) do
  visit(question_path(question))
end

Given(/^I have some questions$/) do
  user_with_questions
end

Given(/^I am on the questions page$/) do
  visit(questions_path)
end

### WHEN ###

When(/^I destroy one question$/) do
  pending
end

When(/^I edit question info$/) do
  enter_form(edited_question_params)
end

When(/^I enter new question info$/) do
  enter_form(new_question_params)
end

### THEN ###
