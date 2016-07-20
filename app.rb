require 'sinatra/base'
require 'shotgun'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  get '/' do
    "player_1 = " << session[:player_1].inspect
    "player_2 = " << session[:player_2].inspect
    erb(:index)
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb(:play)
  end

  post '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb(:play)
  end

  post '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.attack(@player_2)
    erb(:attack)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
