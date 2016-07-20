require 'sinatra/base'
require 'shotgun'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  get '/' do
    erb(:index)
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/play' do
  @game = $game
    erb(:play)
  end

  post '/attack' do
    @game = $game
    @game.attack(@game.current_opponent)
    @game.switch_turns
    erb(:attack)
  end

  post '/names' do
    $game = Game.new(params[:player_1], params[:player_2])
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
