require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# 1. Establish a connection to the specific database we're using.
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'johnhattori', # Change the username to yours.
  :password => '',
  :database => 'potluck', # Make sure your new DB name matches.
  :encoding => 'utf8'
)

require_relative "models/potluck"

require_relative "controllers/potlucks"

get "/" do
  @potlucks = Potluck.all
  erb :index
end