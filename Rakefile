# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'

desc "Load fixtures data into the development database"
task :load_fixtures_to_development => :environment do
  ActiveRecord::Base.establish_connection(:development)
  require 'active_record/fixtures'
  Fixtures.create_fixtures("spec/fixtures", ActiveRecord::Base.configurations[:fixtures_load_order])
  puts "Loaded these fixtures: " + ActiveRecord::Base.configurations[:fixtures_load_order].collect { |f| f.to_s }.join(', ')
end
