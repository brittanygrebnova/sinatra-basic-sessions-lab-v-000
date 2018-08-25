require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    @session = session
    binding.pry
    erb :index
  end
  
  get '/checkout' do
    @item = params[:item]
    erb :checkout
  end
    
  
end