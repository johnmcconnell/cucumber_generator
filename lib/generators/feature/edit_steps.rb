require_relative 'templator'

class EditSteps
  include Templator

  attr_reader :generator, :user, :file
  def initialize(generator, user, file)
    @generator = generator
    @user = user
    @file = file
  end

  def create
    create_methods
    create_steps
  end

  def create_methods
    generator.prepend_to_file file do
      render File.join('step_definitions', 'edit_methods.rb')
    end
  end

  def create_steps
    generator.insert_into_file file, after: "### WHEN ###\n\n" do
      render File.join('step_definitions', 'edit_when_steps.rb')
    end
  end
end
