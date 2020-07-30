# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chroma-js/version'

Gem::Specification.new do |s|
  s.name          = "chroma-js"
  s.version       = Chroma::VERSION
  s.authors       = ["Elton Schivei Costa"]
  s.email         = ["costa@elton.schivei.nom.br"]
  s.summary       = "A Gem for Chroma.js library"
  s.description   = "This Gem is made to support the use of Chroma.js library with Rails Assets"
  s.homepage      = "https://github.com/schivei/chroma.js-rails"
  s.license       = "MIT"

  s.add_runtime_dependency 'autoprefixer-rails', '~> 5.0'
  s.add_development_dependency 'actionpack', '~> 4.1'
  s.add_development_dependency 'activesupport', '~> 4.1'
  s.add_development_dependency 'json', '~> 2.3.0'
  s.add_development_dependency 'sprockets-rails', '~> 2.1'
  s.add_development_dependency 'slim-rails', '~> 0'
  s.add_development_dependency 'uglifier', '~> 0'
  # Converter
  s.add_development_dependency 'term-ansicolor', '~> 0'

  s.rubyforge_project         = "chroma-js"

  s.files      = `git ls-files`.split("\n")
end
