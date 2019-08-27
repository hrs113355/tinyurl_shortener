# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tinyurl_shortener/version'

Gem::Specification.new do |spec|
  spec.name          = "tinyurl_shortener"
  spec.version       = TinyurlShortener::VERSION
  spec.authors       = ["hrs"]
  spec.email         = ["hrs113355@gmail.com"]
  spec.summary       = %q{tinyurl shortener and expander.}
  spec.description   = %q{URL shortener and expander with tinyurl.com service. }
  spec.homepage      = "https://github.com/hrs113355/tinyurl_shortener"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rake', '~> 12.3', '>= 12.3.3'
  spec.add_development_dependency 'rspec', '~> 3.8', '>= 3.8.0'

  spec.add_dependency "rest-client", ">= 1.7", "< 2"
end
