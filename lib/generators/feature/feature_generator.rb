require_relative 'user'
require_relative 'index_steps'
require_relative 'new_steps'
require_relative 'show_steps'
require_relative 'delete_steps'
require_relative 'edit_steps'
require_relative 'templator'

class FeatureGenerator < Rails::Generators::NamedBase
  include Templator
  source_root File.expand_path('../templates', __FILE__)

  ALL_ACTIONS = %w(index new show edit delete)
  desc 'Creates feature files and step definitions'
  argument :actions, type: :array, default: ALL_ACTIONS, banner: 'actions'
  class_option :user, type: :string, default: nil, desc: 'add user steps'

  def feature
    validate
    @user = User.new self, options[:user]
    create_steps_file
    actions.each do |action|
      @action = action
      create_feature(table_name, action)
      create_steps(action)
    end
  end

  private

  def validate
    actions.each do |action|
      fail "'#{action}' is not valid must " \
        "be one of #{ALL_ACTIONS}" unless ALL_ACTIONS.include? action
    end
  end

  def create_feature(name, action)
    template File.join('features',"#{action}.feature"),
      "features/#{name}/#{action}.feature"
  end

  def create_steps_file
    template File.join('step_definitions', 'blank_steps_file.rb'),
      steps_file_path
  end

  def steps_file_path
    "features/step_definitions/#{file_name}_steps.rb"
  end

  def create_steps(action)
    Object.const_get("#{action.capitalize}Steps").new(
      self, @user, steps_file_path
    ).create
  end
end
