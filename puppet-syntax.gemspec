# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'puppet-syntax/version'

Gem::Specification.new do |spec|
  spec.name          = "puppet-syntax"
  spec.version       = PuppetSyntax::VERSION
  spec.authors       = ["Dan Carley"]
  spec.email         = ["dan.carley@gmail.com"]
  spec.description   = %q{Syntax checks for Puppet manifests and templates}
  spec.summary       = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rake"
  spec.add_dependency "puppet", ">= 2.7.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
