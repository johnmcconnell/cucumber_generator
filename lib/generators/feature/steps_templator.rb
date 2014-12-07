require_relative 'templator'

class StepsTemplator
  include Templator
  attr_reader :generator, :file
  VALID_TYPES = %w(given, when, then).map(:to_sym)

  def initialize(generator, user, file)
    @generator = generator
    @user = user
    @file = file
  end

  def create_methods(template)
    generator.prepend_to_file step_def_file do
      render File.join('step_definitions', template)
    end if File.exists? file
  end

  def create_step(type, template)
    fail "type '#{type}' must be one of #{VALID_TYPES}" unless VALID_TYPES.any? type
    generator.insert_into_file step_def_file, after: "### #{type.to_s.upcase} ###\n\n" do
      render File.join('step_definitions', template)
    end if File.exists? file
  end
end
