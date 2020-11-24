require 'rake/testtask'

require_relative 'config/environment.rb'
require 'sinatra/activerecord/rake'
require 'pry'

task :default => :test

Rake::TestTask.new do |t|
  t.libs << "spec"
  t.test_files = FileList['spec/**/*_spec.rb']
  t.verbose = true
end

task :console do
    Pry.start
end
