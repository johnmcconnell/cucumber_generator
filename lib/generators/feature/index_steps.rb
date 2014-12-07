require_relative 'steps_templator'

class IndexSteps < StepsTemplator
  def initialize(generator, user, file)
    super
  end

  def create
    create_methods('index_methods.rb')
    create_step(:given, 'index_given_steps.rb')
    create_step(:then, 'index_then_steps.rb')
  end
end
