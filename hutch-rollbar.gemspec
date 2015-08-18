# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hutch/rollbar/version'

Gem::Specification.new do |spec|
  spec.name          = "hutch-rollbar"
  spec.version       = Hutch::Rollbar::VERSION
  spec.authors       = ["Derek Kastner"]
  spec.email         = ["dkastner@gmail.com"]

  spec.summary       = %q{Rollbar error logging for Hutch consumers}
  spec.description   = %q{A Rollbar error_handler class for hutch}
  spec.homepage      = "http://github.com/dkastner/hutch-rollbar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'hutch', '~> 0.15'
  spec.add_runtime_dependency 'rollbar', '~> 2.1'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
