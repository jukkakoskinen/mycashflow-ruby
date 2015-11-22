# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mycashflow/version'

Gem::Specification.new do |spec|
  spec.name          = "mycashflow"
  spec.version       = MyCashflow::VERSION
  spec.authors       = ["Jukka Koskinen"]
  spec.email         = ["jukka@koskinen.io"]

  spec.summary       = %q{MyCashflow API Client}
  spec.description   = %q{A simple client for the MyCashflow API}
  spec.homepage      = "https://github.com/jukkakoskinen/mycashflow-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.13.5"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 0"
end
