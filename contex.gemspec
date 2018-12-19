lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "contex/version"

Gem::Specification.new do |spec|
  spec.name          = "contex"
  spec.version       = Contex::VERSION
  spec.authors       = ["Troy Martin"]
  spec.email         = ["troy@devato.com"]

  spec.summary       = %q{An opinionated, bounded context library for Rails.}
  spec.description   = %q{An opinionated, bounded context library for Rails.}
  spec.homepage      = "https://github.com/devato/contex"
  spec.license       = "MIT"

  spec.require_paths = ["lib"]
  spec.files         = ['lib/contex.rb', *Dir.glob('lib/**/*')]
  spec.test_files    = Dir.glob('spec/**/*')

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency 'wisper', '~> 2.0'
  spec.add_dependency 'draper', '~> 3.0'
end
