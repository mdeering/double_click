# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'double_click/version'

Gem::Specification.new do |spec|
  spec.name          = 'double_click'
  spec.version       = DoubleClick::VERSION
  spec.authors       = ['Michael Deering']
  spec.email         = ['mdeering@mdeering.com']

  spec.summary       = %q{Rack application for the client side JavaScript integration with Google DFP}
  spec.description   = %q{Rack application for Google DFP. Comes packaged with optional and independant Rails and ad placeholder integrations.}
  spec.homepage      = 'https://github.com/mdeering/double_click'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = 'TODO: Set to "http://mygemserver.com"'
  # else
  #   raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'rspec',   '~> 3'
end
