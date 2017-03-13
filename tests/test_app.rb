require 'minitest/autorun'
require 'rack/test'
require_relative '../app.rb'

class TestTicTacToe < Minitest::Test
	include Rack::Test::Methods

	def app
		TicTacToeApp
	end

	def test_greeting_on_entry_page
		get '/'
		assert(last_response.ok?)
		assert(last_response.body.include?('WELCOME TO TIC-TAC-TOE!'))
		assert(last_response.body.include?('<form method = "post" action = "/greeting">'))
		assert(last_response.body.include?("<input type='submit' value= 'PLAY NOW'>"))
	end
end
