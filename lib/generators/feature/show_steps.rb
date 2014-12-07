require_relative 'steps_templator'

class ShowSteps < StepsTemplator
  def initialize(generator, user, file)
    super
  end

  def create
    create_methods('show_methods.rb')
    create_step(:given, 'show_given_steps.rb')
    create_step(:then, 'show_then_steps.rb')
  end
end
