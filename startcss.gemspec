$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "startcss/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "startcss"
  s.version     = Startcss::VERSION
  s.authors     = ["Adam Kochanowicz"]
  s.email       = ["adam@neo.com"]
  s.homepage    = "http://adamux.com"
  s.summary     = "A semantic, small, and modern CSS Framework from the creator of Kickstrap"
  s.description = "Start is a CSS framework that can be used semantically through Rails or statically as a class-based bootstrap framework."

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"
  s.add_dependency "sass", ">=3.3.0.rc.2"

  # s.add_development_dependency "sqlite3"
end
