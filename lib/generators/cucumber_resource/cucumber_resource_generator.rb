class CucumberResourceGenerator < Rails::Generators::NamedBase
  ALL_ACTIONS = [:index, :new, :show, :edit]
  source_root File.expand_path('../templates', __FILE__)

  desc "cucumber MODEL", "create cukes for MODEL"
  def cucumber(model, actions = ALL_ACTIONS)
    actions.each do |action|
      method("create_#{action}_feature").call(model)
      method("create_#{action}_steps").call(model)
    end
  end

  private

  def create_index_feature(model)
    create_file "features/#{model}/index.feature", '# hello world'
  end

  def create_index_steps(model)
    create_file "features/step_definitions/#{model}_steps.rb", '# hello world'
  end
end
