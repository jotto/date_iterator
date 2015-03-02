# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date_iterator/version'

Gem::Specification.new do |s|
  s.name        = 'date_iterator'
  s.version     = DateIterator::VERSION
  s.authors     = ['Jonathan Otto']
  s.email       = ['jonathan.otto@gmail.com']
  s.homepage    = 'https://github.com/jotto/date_iterator'
  s.summary     = 'iterate by day, week, or month on the date class'
  s.description = 'iterate by day, week, or month on the date class'

  s.files         = `git ls-files`.split($/)
  s.test_files    = s.files.grep(%r{^(test)/})
  s.require_paths = ['lib']

  s.add_development_dependency 'bundler', '~> 1.5'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
end
