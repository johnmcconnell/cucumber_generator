require_relative 'templator'

class User
  include Templator
  attr_reader :name, :generator

  def initialize(generator, name)
    @generator = generator
    @name = name
  end

  def background_steps(action = nil)
    if action == :new
      render File.join('features', 'users', "background_steps.feature")
    else
      render File.join('features', 'users', "background_steps_with_models.feature")
    end
  end

  def set?
    !@name.nil?
  end

end
