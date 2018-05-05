require "bundler/gem_tasks"
require "rspec/core/rake_task"
require 'coveralls/rake/task'
require 'rake'

RSpec::Core::RakeTask.new(:spec)
Coveralls::RakeTask.new

task :default => :spec
