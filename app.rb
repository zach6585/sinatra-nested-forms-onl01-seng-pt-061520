require './environment'
require_relative './app/models/pirate.rb'
require_relative './app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base
  
    get '/' do 
      erb :root
    end 
    
    get '/new' do
      erb :'pirates/new'
    end 
    
    post '/pirates' do
      @a = params
      erb :'pirates/show'
    end 

  end
end

Okay should be all set. THank you very much!
