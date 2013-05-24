# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'magician/version'

Gem::Specification.new do |spec|
  spec.name          = "magician"
  spec.version       = Magician::VERSION
  spec.authors       = ["Nicolas McCurdy"]
  spec.email         = ["thenickperson@gmail.com"]
  spec.description   = "A suite of handy methods for doing calculations in irb."
  spec.summary       = "A suite of handy methods for doing calculations in irb."
  spec.homepage      = "http://github.com/thenickperson/magician"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.13"

  spec.add_development_dependency "yard", "~> 0.7"
  spec.add_development_dependency "rdoc", "~> 4.0"
  spec.add_development_dependency "simplecov", "~> 0.7"
end
