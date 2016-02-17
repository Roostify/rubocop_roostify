# encoding: utf-8

require 'bundler'
require 'bundler/gem_tasks'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts 'Run `bundle install` to install missing gems'
  exit e.status_code
end

desc 'Run RuboCop over this gem'
task :internal_investigation do
  require 'rubocop_roostify'

  result = RuboCop::CLI.new.run
  abort('RuboCop failed!') unless result == 0
end

task default: [:internal_investigation]
