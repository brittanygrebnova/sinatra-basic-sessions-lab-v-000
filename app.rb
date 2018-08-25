require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    @session = session
    erb :index
  end
  
  get '/checkout' do
    @item = params[:item]
    binding.pry
    erb :checkout
  end
    
  
end