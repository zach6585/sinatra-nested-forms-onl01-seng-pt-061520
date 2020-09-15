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
      binding.pry
      a= params[:pirate][:name]
      erb :'pirates/show'
      
    end 

  end
end


