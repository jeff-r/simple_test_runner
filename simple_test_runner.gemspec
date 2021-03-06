# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "simple_test_runner/version"

Gem::Specification.new do |s|
  s.name        = "simple_test_runner"
  s.version     = SimpleTestRunner::VERSION
  s.platform    = Gem::Platform::CURRENT
  s.authors     = ["Jeff Roush"]
  s.email       = ["jeff@jeffroush.com"]
  s.homepage    = "https://github.com/Jeff-R/simple_test_runner"
  s.summary     = %q{Monitors directories; runs a command when it sees a change.}
  s.description = %q{Very simple command-line program for Linux to monitor directories and run tests.}

  s.rubyforge_project = "simple_test_runner"

  s.add_dependency 'rb-inotify', '> 0.8.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = ["simple_test_runner"]
  s.require_paths = ["lib"]
end
