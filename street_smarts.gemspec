# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'street_smarts/version'

Gem::Specification.new do |spec|
  spec.name          = "street_smarts"
  spec.version       = StreetSmarts::VERSION
  spec.authors       = ["Kareem Grant"]
  spec.email         = ["kareem@getuserwise.com"]
  spec.description   = %q{Wrapper gem for SmartyStreets API}
  spec.summary       = %q{Wrapper gem for SmartyStreets API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "faraday"
  spec.add_development_dependency "json"
  spec.add_development_dependency "activemodel"
end
