# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'timetraveller/version'

Gem::Specification.new do |spec|
  spec.name          = 'timetraveller'
  spec.version       = Timetraveller::VERSION
  spec.authors       = ['Ashley Towns']
  spec.email         = ['ashley.towns@rea-group.com']
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'rugged', '~> 0.21.4'
  spec.add_dependency 'slop', '~> 4.0.0'
end
