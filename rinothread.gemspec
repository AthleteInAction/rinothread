# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rinothread/version'

Gem::Specification.new do |gem|
  gem.name          = "rinothread"
  gem.version       = '0.0.2'
  gem.authors       = ["onlyexcellence"]
  gem.email         = ["will.robinson@myphotodynamic.com"]
  gem.description   = %q{Thread Limiter}
  gem.summary       = %q{Queue and Limit concurrent Threads}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end