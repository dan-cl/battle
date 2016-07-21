
require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class BattleMon < Sinatra::Base
 enable :sessions

 get '/' do
   erb :index
 end

 post '/names' do
   player_1 = Player.new(params[:player_1_name])
   player_2 = Player.new(params[:player_2_name])
   @game = Game.create(player_1,player_2)
   redirect '/play'
 end

 before do
   @game = Game.instance
 end

 get '/play' do
   erb :play
 end

 get '/attack' do
   @game.attack
   redirect '/winner'if @game.game_over?
   erb :attack

 end

 get '/winner' do
   erb :winner
 end




 # start the server if ruby file executed directly
 run! if app_file == $0
end
