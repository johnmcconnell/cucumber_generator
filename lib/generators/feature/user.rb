require_relative 'templator'

class User
  include Templator
  attr_reader :name, :generator

  def initialize(generator, name)
    @generator = generator
    @name = name
  end

  def background_steps(action = nil)
    @action = action
    render File.join('features', 'users', 'background_steps.feature')
  end

  def set?
    !@name.nil?
  end

end
