# encoding: utf-8
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'rubocop/roostify/version'

Gem::Specification.new do |spec|
  spec.name = 'rubocop_roostify'
  spec.summary = 'Default rubocop configuration for Roostify™ projects'
  spec.description = <<-end_description
    Enforces rubocop style consistency across Roostify projects
  end_description
  spec.homepage = 'http://github.com/roostify/rubocop_roostify'
  spec.authors = ['Zee Specer']
  spec.email = ['zee@roostify.com']
  spec.licenses = ['MIT']

  spec.version = RuboCop::Roostify::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 1.9.3'

  spec.require_paths = ['lib']
  spec.files = Dir[
    '{config,lib,spec}/**/*',
    '*.md',
    '*.gemspec',
    'Gemfile',
    'Rakefile',
    '.rubocop.yml'
  ]

  spec.extra_rdoc_files = ['MIT-LICENSE.md', 'README.md']

  spec.add_development_dependency('rubocop', '0.37.2')
  spec.add_development_dependency('rake', '~> 10.1')
end
