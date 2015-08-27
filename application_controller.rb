require 'bundler'
Bundler.require
require './config/environment'
require './models/model'

class MyApp < Sinatra::Base

  set :database, {adapter: "sqlite3", database: "db.sqlite3"}
  
  get '/' do
    erb :index
  end
 
end