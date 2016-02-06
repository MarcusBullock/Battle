require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb :play
  end

  get '/attack' do
    $game.switch_attack
    @turn = $game.turn
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    @game = $game
    p @game
    p @game.game_over?
    p @game.loser
    @game.game_over? ? (redirect  '/game_over' ) : ( redirect '/attack' )
    erb :attack
  end

  get '/game_over' do
    @game = $game
    @game.find_loser
    @loser = @game.loser
    erb :game_over
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
