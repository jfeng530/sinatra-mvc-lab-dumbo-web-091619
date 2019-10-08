require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end 
  
  post '/piglatin' do
    pl = PigLatinizer.new
    @phrase = pl.piglatinize(params[:words])
    erb :result
  end
end