require './environment'
require_relative './app/models/pirate.rb'
require_relative './app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base
  
    get '/' do 
      erb :root
    end 
    
    
    post '/pirates' do
      @a = params
      erb :show
    end 

  end
end
