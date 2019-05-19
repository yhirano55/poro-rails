# frozen_string_literal: true

lib = File.expand_path("./lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = 'poro-rails'
  s.version       = '0.2.1'
  s.authors       = ['Yoshiyuki Hirano']
  s.email         = ['yhirano@me.com']
  s.homepage      = 'https://github.com/yhirano55/poro-rails'
  s.summary       = %(Simple Rails Generators for Plain Old Ruby Objects, Form Objects, and Service Objects)
  s.description   = %(This gem provides generators of Plain Old Ruby Objects, Form Objects, and Service Objects for Ruby on Rails.)
  s.license       = 'MIT'
  s.files         = Dir.chdir(File.expand_path('.', __dir__)) do
    `git ls-files -z`.split("\x0")
  end
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.2.2'
  s.required_rubygems_version = '>= 1.8.11'

  s.add_development_dependency 'bundler', '~> 2.0'
  s.add_development_dependency 'rake', '~> 10.0'
end
