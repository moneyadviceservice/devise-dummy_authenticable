lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devise/dummy_authenticable/version'

Gem::Specification.new do |spec|
  spec.name        = 'devise-dummy_authenticable'
  spec.version     = Devise::DummyAuthenticable::Version::STRING
  spec.authors     = ['Andrew Garner', 'Gareth Visagie']
  spec.email       = ['Andrew.Garner@moneyadviceservice.org.uk',
                      'Gareth.Visagie@moneyadviceservice.org.uk']
  spec.description = %q{Devise strategy for use with your Rails engine}
  spec.summary     = %q{Devise strategy for use with your Rails engine}
  spec.homepage    = 'https://github.com/moneyadviceservice/devise-dummy_authenticable'
  spec.license     = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
