# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rest-segment/version'

Gem::Specification.new do |gem|
  gem.name          = "rest-segment"
  gem.version       = Segment::VERSION
  gem.authors       = ["Florian Guenther"]
  gem.email         = ["me@florianguenther.com"]
  gem.description   = %q{REST API wrapper for segment.io}
  gem.summary       = %q{Simply wraps the JSON RESTP API calls to segment.io}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency "httparty"

end
