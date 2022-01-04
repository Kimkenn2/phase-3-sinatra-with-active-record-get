class ApplicationController < Sinatra::Base

  get '/' do
    { message: "Hello world" }.to_json
  end

  get '/games' do
    games = Game.all
    games.to_json
  end

  get '/games/:id' do
    game = Game.find(params[:id])
    game.to_json(include: :reviews)
  end
end
