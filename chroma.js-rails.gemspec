# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chroma.js/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "chroma-js"
  spec.version       = ChromaJS::Rails::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Elton Schivei Costa"]
  spec.email         = ["costa@elton.schivei.nom.br"]
  spec.summary       = "A Gem for Chroma.js library"
  spec.description   = "This Gem is made to support the use of Chroma.js library with Rails Assets"
  spec.homepage      = "https://github.com/schivei/chroma.js-rails"
  spec.license       = "MIT"

  spec.required_rubygems_version = ">= 1.3.6"
  spec.rubyforge_project         = "chroma-js"

  spec.add_dependency "railties", ">= 3.1"
  spec.add_development_dependency "rails", ">= 3.1"

  spec.files        = `git ls-files`.split("\n")
  spec.require_path = "lib"
end
