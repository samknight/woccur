# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "woccur/version"

Gem::Specification.new do |s|
  s.name        = "woccur"
  s.version     = Woccur::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sam Knight"]
  s.email       = ["sam@samknight.co.uk"]
  s.homepage    = ""
  s.summary     = %q{Find the most commons words in a string}
  s.description = %q{Find the most commons words in a string}

  s.rubyforge_project = "woccur"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_development_dependency "rspec", "~>2.6"
end
