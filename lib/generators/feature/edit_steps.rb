require_relative 'steps_templator'

class EditSteps < StepsTemplator
  def initialize(generator, user, file)
    super
  end

  def create
    create_methods('edit_methods.rb')
    create_step(:when, 'edit_when_steps.rb')
    create_step(:then, 'edit_then_steps.rb')
  end
end
