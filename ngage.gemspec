# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ngage/version"

Gem::Specification.new do |spec|
  spec.name        = "ngage"
  spec.version     = NGage::VERSION
  spec.authors     = ["Ashwin Maroli"]
  spec.email       = ["ashmaroli@gmail.com"]

  spec.summary     = "An enhanced fork of the Jekyll project, NGage is yet another static site generator in Ruby."
  spec.homepage    = "https://github.com/ashmaroli/ngage"
  spec.license     = "MIT"

  all_files        = `git ls-files -z`.split("\x0")
  spec.files       = all_files.select { |e| e.start_with?("lib") || e == "LICENSE" }
  spec.executables = all_files.grep(%r!^exe/ngage!) { |f| File.basename(f) }
  spec.bindir      = "exe"

  spec.metadata      = { "allowed_push_host" => "https://rubygems.org" }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 2.3.0"

  spec.add_runtime_dependency("addressable",           "~> 2.4")
  spec.add_runtime_dependency("colorator",             "~> 1.0")
  spec.add_runtime_dependency("em-websocket",          "~> 0.5")
  spec.add_runtime_dependency("i18n",                  ">= 0.9.5", "< 2")
  spec.add_runtime_dependency("jekyll-sass-converter", "~> 1.0")
  spec.add_runtime_dependency("jekyll-watch",          "~> 2.0")
  spec.add_runtime_dependency("kramdown",              "~> 1.14")
  spec.add_runtime_dependency("liquid",                "~> 4.0")
  spec.add_runtime_dependency("mercenary",             "~> 0.3.3")
  spec.add_runtime_dependency("pathutil",              "~> 0.9")
  spec.add_runtime_dependency("rouge",                 "~> 3.0")
  spec.add_runtime_dependency("safe_yaml",             "~> 1.0")
end
