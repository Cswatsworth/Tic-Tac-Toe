require 'minitest/autorun'
require_relative 'board.rb'

class TestTicTacToe < Minitest::Test
	
	def test_new_board
		board = Board.new
		assert_equal(Array.new(9, ''), board.ttt_board)
	end

	def test_update_first_position_x_or_o
		board = Board.new
		board.update_position(0, 'X')
		assert_equal(['X','','','','','','','',''], board.ttt_board)
	end

	def test_first_position_x_second_position_o
		board = Board.new
		board.update_position(0, 'X')
		board.update_position(1, 'O')
		assert_equal(['X','O','','','','','','',''], board.ttt_board)
	end

	def test_update_partial_board_at_last_position
		board = Board.new
		board.ttt_board = ['X','O','','O','','','','','']
		board.update_position(8, 'X')
		assert_equal(['X','O','','O','','','','','X'], board.ttt_board)
	end

	def test_check_if_position_is_avaliable
		board = Board.new
		board.ttt_board = ['X','O','','O','','','','','']
		assert_equal(true, board.valid_position?(6))
	end
end	