require './environment'
require_relative './app/models/pirate.rb'
require_relative './app/models/ship.rb'
require 'pry'

module FormsLab
  class App < Sinatra::Base
  
    get '/' do 
      erb :root
    end 
    
    get '/new' do
      erb :'pirates/new'
    end 
    
    post '/pirates' do
      # binding.pry
      @a = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      @b = Ship.new(params[:pirate][:ships][0][:name],params[:pirate][:ships][0][:type], params[:pirate][:ships][0][:booty])
      @c = Ship.new(params[:pirate][:ships][1][:name],params[:pirate][:ships][1][:type], params[:pirate][:ships][1][:booty])
      erb :'pirates/show'
      
    end 

  end
end


