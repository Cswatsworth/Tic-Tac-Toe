require 'minitest/autorun'
require_relative 'player_classes.rb'

class TestPlayerClass < Minitest::Test

	def test_player_move
		player = Human.new('X')
		assert_equal(0, player.get_move(''))
	end
end