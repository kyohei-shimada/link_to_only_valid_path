# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'link_to_only_valid_path/version'

Gem::Specification.new do |gem|
  gem.name          = "link_to_only_valid_path"
  gem.version       = LinkToOnlyValidPath::VERSION
  gem.authors       = ["wishid"]
  gem.email         = ["fl95to03pj30sq12@gmail.com"]
  gem.description   = %q{link to only valid path}
  gem.summary       = %q{link to only valid path}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
