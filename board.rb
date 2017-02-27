class  Board
	attr_accessor :ttt_board #allows them to read + WRITE #:attatches to what you initilized
	
	def initialize()
		@ttt_board = Array.new(9, '')#instance varable

	end

	def update_position(position, marker)
		ttt_board[position] = marker

	end

	def valid_position?(position)
		if ttt_board[position] == ''
			true
		else
			false
		end
	end

	def game_tie?
		if ttt_board.include?('')
			false
		else
			true
		end
	end
end