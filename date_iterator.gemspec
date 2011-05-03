# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "date_iterator/version"

Gem::Specification.new do |s|
  s.name        = "date_iterator"
  s.version     = DateIterator::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jonathan Otto"]
  s.email       = ["jonathan.otto@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{iterate by day, week, or month on the date class}
  s.description = %q{iterate by day, week, or month on the date class}

  s.rubyforge_project = "date_iterator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
