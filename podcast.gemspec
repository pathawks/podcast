# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "podcast"
  spec.version       = "0.0.1"
  spec.authors       = ["Pat Hawks"]
  spec.email         = ["pat@pathawks.com"]
  spec.summary       = "Create a podcast powered by Jekyll"
  spec.homepage      = "https://github.com/pathawks/podcast"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r!^bin/!) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r!^(test|spec|features)/!)
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3.0"

  spec.add_dependency "jekyll", "~> 3.3"
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "nokogiri", "~> 1.6"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.57.2"
  spec.add_development_dependency "typhoeus", ">= 0.7", "< 2.0"
end
