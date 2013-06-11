require "bundler"
Bundler.require

# 1. Establish a connection to the specific database we're using.
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'johnhattori', # Change the username to yours.
  :password => '',
  :database => 'potluck', # Make sure your new DB name matches.
  :encoding => 'utf8'
)

require_relative "models/item"
require_relative "models/potluck"
require_relative "models/tag"
require_relative "models/person"

require_relative "controllers/items"
require_relative "controllers/potlucks"
require_relative "controllers/tags"
require_relative "controllers/people"

require_relative "helpers/form_helpers"

get "/" do
  @potlucks = Potluck.all

  erb :index
end