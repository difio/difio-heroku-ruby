# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "difio-heroku-ruby/version"

Gem::Specification.new do |s|
  s.name        = "difio-heroku-ruby"
  s.version     = Difio::Heroku::VERSION
  s.authors     = ["Alexander Todorov"]
  s.email       = ["atodorov@dif.io"]
  s.homepage    = "https://github.com/difio/difio-heroku-ruby"
  s.summary     = %q{Difio registration agent for Heroku / Ruby applications}
  s.description = %q{Difio registration agent for Heroku / Ruby applications. See the README for usage.}

  s.rubyforge_project = "difio-heroku-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "common-ruby-difio"
end
