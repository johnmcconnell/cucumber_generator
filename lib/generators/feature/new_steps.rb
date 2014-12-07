require_relative 'steps_templator'

class NewSteps < StepsTemplator
  def initialize(generator, user, file)
    super
  end

  def create
    create_methods('new_methods.rb')
    create_step(:when, 'new_when_steps.rb')
    create_step(:then, 'new_then_steps.rb')
  end
end
