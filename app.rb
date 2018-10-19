require "./lib/player"
require 'sinatra/base'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    #@player_2_hp = $player_2.hp.to_s
    erb :play
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  post '/attack' do
    redirect '/attack'
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    Game.new.attack($player_2)
    @player_2_hp = $player_2.hp.to_s
    erb :attack
  end

  run! if app_file == $0
end
