require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
  erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    p $player1
    @player1 = $player1.name
    @player2 = $player2.name
    @points = $player1.points
    @points = $player2.points
   erb(:play)
  end

get '/attack' do
  game = Game.new
  game.attack($player2)
  erb(:attack)
end


  run! if app_file == $0
end
