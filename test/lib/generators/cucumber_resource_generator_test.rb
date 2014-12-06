require 'test_helper'
require 'generators/cucumber_resource/cucumber_resource_generator'

class CucumberResourceGeneratorTest < Rails::Generators::TestCase
  tests CucumberResourceGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
