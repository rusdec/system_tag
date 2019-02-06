$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "system_tag/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "system_tag"
  s.version     = SystemTag::VERSION
  s.authors     = ["Alexey Mekhonoshin"]
  s.email       = ["am@strahovkaru.ru"]
  s.homepage    = "https://bitbucket.org/godsofms/"
  s.summary     = "Provides optional keys/values from application.yml to frontend"
  s.description = "Empty description"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.7"
end
