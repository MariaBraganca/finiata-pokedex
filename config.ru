# require 'rubygems'
# require 'bundler/setup'
# require 'json'

# Bundler.require

# Dir.glob('./lib/**/*.rb') { |f| require f }
# require 'apps/controllers/application_controller.rb'

# require 'securerandom'
# set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

require_relative 'config/environment.rb'

use Rack::MethodOverride

# use PokemonsController

run ApplicationController
