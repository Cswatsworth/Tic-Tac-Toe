require 'sinatra'

class TicTacToeApp < Sinatra::Base
		
	get '/' do
		erb :greeting
	end

	post '/greeting' do
		greeting = params[:greeting_input]
		redirect '/play_game?greeting'
	end

	get '/play_game' do 
		greeting = params[:greeting]
		erb :play_game, locals: {greeting: greeting}
	end

	post '/play_game' do
		greeting = params[:greeting]
		play_game = params[:play_game_input]
	end
end
