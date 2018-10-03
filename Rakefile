# frozen_string_literal: true

require "rake"
Dir.glob("rake/**.rake").each { |f| import f }

task :default => :test
task :spec => :test
require "rake/testtask"
Rake::TestTask.new(:test) do |test|
  test.libs << "lib" << "test"
  test.pattern = "test/**/test_*.rb"
  test.verbose = true
end

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -rubygems -r ./lib/ngage.rb"
end
