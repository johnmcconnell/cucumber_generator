$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cucumber_generator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cucumber_generator"
  s.version     = CucumberGenerator::VERSION
  s.authors     = ["John McConnell"]
  s.email       = ["johnnyillinois@gmail.com"]
  s.homepage    = "git"
  s.summary     = "Summary of CucumberGenerator."
  s.description = "Description of CucumberGenerator."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.8"

  s.add_development_dependency "sqlite3"
end
