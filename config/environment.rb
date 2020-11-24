require 'bundler'
require 'bundler/setup'
require 'require_all'
Bundler.require

ActiveRecord::Base.establish_connection(

adapter: 'sqlite3',

database: 'db/development.sqlite'

)
require_all './apps/controllers/application_controller.rb'
