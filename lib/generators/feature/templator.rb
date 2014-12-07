
module Templator
  def render(file_path)
    root = File.expand_path('../templates', __FILE__)
    template = File.read File.join(root, file_path)
    ERB.new(template, nil, '-').result binding
  end
end
