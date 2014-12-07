require_relative 'steps_templator'

class NewSteps < StepsTemplator
  def initialize(generator, user, file)
    super
  end

  def create
    create_step(:when, 'delete_when_steps.rb')
    create_step(:then, 'delete_then_steps.rb')
  end
end
