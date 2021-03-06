lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap-select-rails/version'

Gem::Specification.new do |spec|
  spec.name        = 'bootstrap-select-rails'
  spec.version     = BootstrapSelect::Rails::VERSION
  spec.licenses    = ['MIT']
  spec.authors     = ['HappyRenting']
  spec.email       = ['contact@happyrenting.com']

  spec.summary     = 'none'
  spec.description = 'none'
  spec.homepage    = 'https://github.com/HappyRenting/bootstrap-select-rails'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", ">= 2.2.10"
end
