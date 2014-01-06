require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:release) do |t|
  t.cucumber_opts = '--profile release'
end

Cucumber::Rake::Task.new(:debug) do |t|
  t.cucumber_opts = '--profile debug'
end

task :default => :release