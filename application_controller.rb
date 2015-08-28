require 'bundler'
Bundler.require
require './config/environment'
require_relative 'models/model2.rb'

class MyApp < Sinatra::Base

  set :database, {adapter: "sqlite3", database: "db.sqlite3"}

  get '/' do
    erb :index
  end

  post '/' do
     erb :search_keyword
   end

  get '/resources' do
    erb :resources
  end

  post  '/respond' do
    puts params
    @search = Search.new
    @list = @search.search(params[:mydropdown], params[:location])

    erb :respond


  end
end


