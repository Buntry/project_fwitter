require "require_all" #comment test

require_relative "../../config/environment"
require_all "app/models/*.rb"

class ApplicationController < Sinatra::Base
  
  set :views, "app/views"
  
  get "/" do
    @tweet = Tweet.new("Richard Stamina", "Rold Gold makes me feel like cold mold.")
    erb :tweets
  end
  
end