require 'sinatra/base'
require 'sinatra'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new
    $game.player_one.name = params[:player_1_name]
    $game.player_two.name = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_one.name
    @player_2_name = $game.player_two.name
    erb :play
  end

  get '/attack' do
    @player_1_name = $game.player_one.name
    @player_2_name = $game.player_two.name
    $game.attack($game.player_two)
    @score = $game.player_two.score
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
