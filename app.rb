require 'sinatra'

class TicTacToeApp < Sinatra::Base
		
	get '/' do
		erb :name
	end

	post '/name' do
	end
end
