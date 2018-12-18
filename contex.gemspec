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

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/devato/contex"
  spec.metadata["changelog_uri"] = "https://github.com/devato/contex"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency 'wisper', '~> 2.0'
  spec.add_dependency 'draper', '~> 3.0'
end
