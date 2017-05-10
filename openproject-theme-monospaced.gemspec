$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "open_project/themes/monospaced/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openproject-theme-monospaced"
  s.version     = OpenProject::Themes::Monospaced::VERSION
  s.authors     = ["OpenProject GmbH"]
  s.email       = ["info@openproject.com"]
  s.homepage    = "https://github.com/davidmehren/openproject-theme-monospaced"
  s.summary     = "Dark theme for OpenProject"
  s.description = "Theme with more dark blue colors for your OpenProject installation"

  s.files = Dir["{app,lib}/**/*", "Rakefile", "README.rdoc"]

  s.add_dependency 'rails', '~> 5.0'
end
