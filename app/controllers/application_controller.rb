class ApplicationController < Sinatra::Base
  configure do
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
  end

  get '/' do
    # define variable pokemon to acces a rand pokemon instance
    @pokemon = Pokemon.find(rand(1..Pokemon.count))

    display_page :index
  end

  def display_page(location, locals = {})
    options = {
      layout_options: { views: 'app/views/layouts' },
      layout: locals.fetch(:layout) { :default },
      locals: locals
    }

    haml location.to_sym, options
  end

  def display_partial(location, locals = {})
    haml location.to_sym, layout: false, locals: locals
  end
end
