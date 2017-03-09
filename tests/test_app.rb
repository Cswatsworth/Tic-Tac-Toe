require 'minitest/autorun'
require 'rack/test'
require_relative '../app.rb'

class TestTicTacToe < Minitest::Test
	include Rack::Test::Methods

	def app
		TicTacToeApp
	end

end
