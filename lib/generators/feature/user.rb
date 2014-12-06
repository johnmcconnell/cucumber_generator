class User < Thor::Group
  include Thor::Actions
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

  private

  def render(file_path)
    root = File.expand_path('../templates', __FILE__)
    template = File.read File.join(root, file_path)
    ERB.new(template, nil, '-').result binding
  end
end
