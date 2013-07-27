# coding: utf-8
require 'rubinius/bridge/version'

Gem::Specification.new do |spec|
  spec.name          = "rubinius-bridge"
  spec.version       = Rubinius::Bridge::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.description   = <<-EOD
Classes and methods to run other Rubinius tools under MRI.

Rubinius needs to bootstrap building its core library and code tools
because they are written in Ruby. One way to do this is to run the
code tools under MRI. To do so requires adding some classes and methods
that are built into Rubinius.
  EOD
  spec.summary       = %q{Classes and methods to run other Rubinius tools under MRI.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
