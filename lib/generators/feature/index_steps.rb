require_relative 'templator'
require_relative 'steps_templator'

class IndexSteps < StepsTemplator

  def initialize(generator, user, file)
    super
  end

  def create
    create_methods
    create_steps
  end

  def create_methods
    generator.prepend_to_file file do
      render File.join('step_definitions', 'index_methods.rb')
    end
  end

  def create_steps
    generator.insert_into_file file, after: "### GIVEN ###\n\n" do
      render File.join('step_definitions', 'index_given_steps.rb')
    end

    generator.insert_into_file file, after: "### THEN ###\n\n" do
      render File.join('step_definitions', 'index_then_steps.rb')
    end
  end
end
