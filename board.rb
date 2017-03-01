class  Board
	attr_accessor :ttt_board #allows them to read + WRITE #:attaches to what you initialized
	
	def initialize()
		@ttt_board = Array.new(9, '')#instance variable

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

	def valid_input?(input)
		if input.match(/[XxOo]/)
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

	def winner?(marker)
		ttt_board[0] == marker && ttt_board[1] == marker && ttt_board[2] == marker ||
		
		 ttt_board[3] == marker && ttt_board[4] == marker && ttt_board[5] == marker ||
			 	
		 ttt_board[6] == marker && ttt_board[7]  == marker  && ttt_board[8] == marker ||
		 
		 ttt_board[0] == marker && ttt_board[3]  == marker  && ttt_board[6] == marker ||
		 
		 ttt_board[1] == marker && ttt_board[4]  == marker  && ttt_board[7] == marker ||

		 ttt_board[2] == marker && ttt_board[5]  == marker  && ttt_board[8] == marker ||

		 ttt_board[0] == marker && ttt_board[4]  == marker  && ttt_board[8] == marker ||

		ttt_board[2] == marker && ttt_board[4]  == marker  && ttt_board[6] == marker
		 end

	# 	if winners = [
	# 		[0, 1, 2],
	# 		[3, 4, 5],
	# 		[6, 7, 8],
	# 		[0, 3, 6],
	# 		[1, 4, 7],
	# 		[2, 5, 8],
	# 		[0, 4, 8],
	# 		[2, 4, 6]
	# 	]
	# 		results = true
	# 	else 
	# 		false
	# 	end
	# end
end