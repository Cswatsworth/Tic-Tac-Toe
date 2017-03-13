require 'sinatra'

class TicTacToeApp < Sinatra::Base
		
	get '/' do
		erb :greeting
	end

	post '/greeting' do
		greeting = params[:greeting_input]
		erb :greeting, locals: {greeting: greeting}
	end
end
