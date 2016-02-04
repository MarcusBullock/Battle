require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  set :port, 8080
  set :static, true
  set :public_folder, "static"
  set :views, "views"

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hit_points = $player_1.hit_points
    @player_2_hit_points = $player_2.hit_points
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hit_points = $player_1.hit_points
    @player_2_hit_points = $player_2.hit_points
    $player_1.attack($player_2)
    erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
