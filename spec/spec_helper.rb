ENV['RACK_ENV'] = 'test'
require File.expand_path("../../config/environment", __FILE__)

require 'sinatra'
require 'sinatra/activerecord/rake'
require 'bundler'
Bundler.require

# require testing components
require 'rack/test'
require 'minitest/autorun'

# require application components
require './app/controllers/application_controller.rb'
require 'json'

class BaseSpec < Minitest::Spec
  def self.expand_path(path)
    File.expand_path(path, __FILE__)
  end
end

class ApplicationControllerSpec < BaseSpec
  include Rack::Test::Methods

  before { app.views = './app/views' }

  def app
    ApplicationController
  end
end
