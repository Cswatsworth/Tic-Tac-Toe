require 'minitest/autorun'
require_relative 'unbeatable.rb'

class TestUnbeatable < Minitest::Test

	def test_create_player_1
		player = Unbeatable.new('X')
		assert_equal('X', player.marker)
	end

	def test_win_at_second_pos_with_x_2
		player = Unbeatable.new('X')
		board_array = ['X','X','','','','','','','']
		assert_equal(2, player.get_win(board_array))
	end

	def test_win_at_last_position_with_x_3
		player = Unbeatable.new('X')
		board_array = ['','','','','','','','X','X']
		assert_equal(6, player.get_win(board_array))
	end

	def test_win_at_4__4
		player = Unbeatable.new('X')
		board_array = ['X','','','','','','','','X']
		assert_equal(4, player.get_win(board_array))
	end

	def test_win_at_5__5
		player = Unbeatable.new('O')
		board_array = ['','','','O','O','','','','']
		assert_equal(5, player.get_win(board_array))
		
	end

	def test_win_at_last_with_o__6
		player = Unbeatable.new('O')
		board_array = ['','','','','','','','O','O']
		assert_equal(6, player.get_win(board_array))
	end

	#BLOCK

	def test_block1__7
		player = Unbeatable.new('O')
		board_array = ['X','X','','','','','','','']
		assert_equal(2, player.block(board_array))
	end

	def test_block2__8
		player = Unbeatable.new('X')
		board_array = ['O','','','','O','','','X','']
		assert_equal(8, player.block(board_array))
	end

	def test_block3__9
		player = Unbeatable.new('X')
		board_array = ['','','O','','','O','','X','']
		assert_equal(8, player.block(board_array))
	end

	def test_block4__10
		player = Unbeatable.new('O')
		board_array = ['X','','X','','X','O','','X','O']
		assert_equal(6, player.block(board_array))
	end

	#FORK

	def test_fork_1__11
		player = Unbeatable.new('X')
		board_array = ['X','O','','O','','','X','','']
		assert_equal(4, player.check_for_fork(board_array))
	end

	def test_fork_2__12
		player = Unbeatable.new('O')
		board_array = ['','x','','','O','X','','O','']
		assert_equal(6, player.check_for_fork(board_array))
	end

	#BLOCK FORK

	def test_block_fork__13
		player = Unbeatable.new('O')
		board_array = ['', 'X', '', '', 'O', 'X', '', 'O', '']
		assert_equal(2, player.block_fork(board_array))
	end

	def test_block_fork_2__14
		player = Unbeatable.new('X')
		board_array = ['O', 'X', '', 'X', '', '', 'O', '', '']
		assert_equal(4, player.block_fork(board_array))
	end

	def test_for_block_3__15
		player = Unbeatable.new('X')
		board_array = ['X', 'O', '', 'O', '', '', '', '', 'X']
		assert_equal(4, player.block_fork(board_array))
	end

	def test_block_fork_4___16
		player = Unbeatable.new('O')
		board_array = ['', 'O', '', 'X', 'O', '', '', 'X', '']
		assert_equal(6, player.block_fork(board_array))
	end

	#TAKE CENTER

	def test_take_center___17
		player = Unbeatable.new('O')
		board_array = ['', '', '', '', '', '', '', '', '']
		assert_equal(4, player.take_center(board_array))
	end

	def test_take_center_2___18
		player = Unbeatable.new('X')
		board_array = ['', '', 'X', 'O', '', '', 'X', 'O', '']
		assert_equal(4, player.take_center(board_array))
	end

	def test_take_filled_center_return_10___19
		player = Unbeatable.new('X')
		board_array = ['', '', 'X', 'O', 'O', '', 'X', 'O', '']
		assert_equal(10, player.take_center(board_array))
		
	end

	#TAKE CORNER

	def test_take_corner___20
		player = Unbeatable.new('X')
		board_array = ['O', '', '', '', '', '', '', '', '']
		assert_equal(8, player.opposite_corner(board_array))
		
	end

	def test_take_corner_2___21
		player = Unbeatable.new('O')
		board_array = ['', '', '', '', '', '', '', '', 'X']
		assert_equal(0, player.opposite_corner(board_array))
	end

	#TAKE EMPTY CORNER

	def test_take_empty_corner___22
		player = Unbeatable.new('X')
		board_array = ['X', '', '', '', '', '', '', '', 'X']
		assert_equal(2, player.empty_corner(board_array))
	end

	def test_take_empty_corner_2___23
		player = Unbeatable.new('O')
		board_array = ['X', '', 'O', '', '', '', '', '', 'X']
		assert_equal(6, player.empty_corner(board_array))
	end

	def test_take_empty_side___24
		player = Unbeatable.new('O')
		board_array = ['X', 'O', 'O', '', '', '', '', 'X', 'X']
		assert_equal(3, player.empty_side(board_array))
	end

	#TEST GET_MOVE FUNCTION, MAIN FUNCTION

	def test_the_win___25
		player = Unbeatable.new('X')
		board_array = ['X', 'X', '', 'O', 'X', 'O', 'X', '', 'O']
		assert_equal(2, player.get_move(board_array))
	end

	def test_for_block___26
		player = Unbeatable.new('X')
		board_array = ['', 'X', '', '', 'X', '', 'O', '', 'O']
		assert_equal(7, player.get_move(board_array))
		
	end

	def test_for_block_get_move___27
		player = Unbeatable.new('X')
		board_array = ['O', 'X', '', '', '', 'X', '', '', 'O']
		assert_equal(4, player.get_move(board_array))
	end


	def test_fork_win___28
		player = Unbeatable.new('X')
		board_array = ['X', 'O', '', 'O', '', '','X', '', '']
		assert_equal(4, player.get_move(board_array))
	end


	def test_x_takes_center_empty___29
		player = Unbeatable.new('X')
		board_array = ['X', 'O', '', '', '', '', '', '', '']
		assert_equal(4, player.get_move(board_array))
	end

	def test_opposite_corner___30
		player = Unbeatable.new('X')
		board_array = ['O', '', '', '', 'X', '', '', '', '']
		assert_equal(8, player.get_move(board_array))
	end

	def test_empty_corner___31
		player = Unbeatable.new('8')
		board_array = ['X', 'T', 'T', 'Y', 'Y', 'W', 'W', 'D', '']
		assert_equal(8, player.get_move(board_array))
	end

	def test_empty_side___32
		player = Unbeatable.new('X')
		board_array = ['X', 'O', 'T', 'D', 'S', '', 'F', 'G', 'J']
		assert_equal(5, player.get_move(board_array))
	end

end
