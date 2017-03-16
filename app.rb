require 'sinatra'
require_relative 'board.rb'
require_relative 'random_AI.rb'
require_relative 'sequential_AI.rb'
require_relative 'unbeatable.rb'


class TicTacToeApp < Sinatra::Base
		
		get '/' do
		
		erb :greeting

	end

	post '/play_game' do
		session[:opponent] = params[:opponent]
		board = Board.new
		
		erb :play_game, :locals => {opponent: session[:opponent], board: board}

	end


	# get '/' do
	# 	erb :greeting
	# end

	# post '/greeting' do
	# 	greeting = params[:greeting_input]
	# 	redirect '/play_game?'
	# end

	# get '/play_game' do 
	# 	greeting = params[:greeting]
	# 	erb :play_game, locals: {greeting: greeting, board: board}
	# end

	# post '/play_game' do
	# 	greeting = params[:greeting]
	# 	play_game = params[:play_game]
	# 	opponent = params[:opponent]
		
		
	# end
end
