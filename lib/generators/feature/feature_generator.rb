require_relative 'user'

class FeatureGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  ALL_ACTIONS = %w(index new show edit delete)
  desc 'Creates feature files and step definitions'
  argument :actions, type: :array, default: ALL_ACTIONS, banner: 'actions'
  class_option :user, type: :string, default: nil, desc: 'add user steps'

  def feature
    validate
    @user = User.new self, options[:user]
    create_steps
    actions.each do |action|
      @action = action
      create_feature(table_name, action)
      method("create_#{action}_steps").call(file_name)
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

  def create_steps
    create_file steps_file_path
  end

  def steps_file_path
    "features/step_definitions/#{file_name}_steps.rb"
  end

  def inject_steps(opts = {})
    inject_into_file steps_file_path, opts do
      yield
    end
  end

  def create_index_steps(name)
    inject_steps(after: '') do
      <<-'RUBY'
      puts "Hello World"
      RUBY
    end
  end

  def create_new_steps(name)
    inject_steps(after: '') do
      <<-'RUBY'
      puts "Hello World"
      RUBY
    end
  end

  def create_edit_steps(name)
    inject_steps(after: '') do
      <<-'RUBY'
      puts "Hello World"
      RUBY
    end
  end

  def create_show_steps(name)
    inject_steps(after: '') do
      <<-'RUBY'
      puts "Hello World"
      RUBY
    end
  end

  def create_delete_steps(name)
    inject_steps(after: '') do
      <<-'RUBY'
      puts "Hello World"
      RUBY
    end
  end
end
