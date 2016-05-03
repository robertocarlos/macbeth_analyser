# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'macbeth_analyser/version'

Gem::Specification.new do |spec|
  spec.name          = "macbeth_analyser"
  spec.version       = MacbethAnalyser::VERSION
  spec.authors       = ["Roberto Carlos de Oliveira"]
  spec.email         = ["mr_rco@yahoo.com.br"]
  spec.summary       = "This analyses Macbeth play, counting speechs by persona"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "nokogiri"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
end
