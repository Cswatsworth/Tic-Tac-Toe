class Unbeatable
		attr_accessor :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(ttt_board)
		if get_win(ttt_board) < 9
			move = get_win(ttt_board)
		elsif 
			block(ttt_board) < 9
			move = block(ttt_board)
		elsif
			check_for_fork(ttt_board) < 9
			move = check_for_fork(ttt_board)
		elsif 
			block_fork(ttt_board) < 9
			move = block_fork(ttt_board)
		elsif 
			take_center(ttt_board) < 9
			move = take_center(ttt_board)
		elsif 
			opposite_corner(ttt_board) < 9
			move = opposite_corner(ttt_board)
		elsif
			empty_corner(ttt_board) < 9
			move = empty_corner(ttt_board)
		elsif
			empty_side(ttt_board) < 9
			move = empty_side(ttt_board)
		else 
			move = ttt_board.index = ("")
		end
		

	end


	def get_win(ttt_board)
		win_array = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
		#win_array.each do |win|
		 board_position = [
			[ttt_board[0], ttt_board[1], ttt_board[2]],
			[ttt_board[3], ttt_board[4], ttt_board[5]],
			[ttt_board[6], ttt_board[7], ttt_board[8]],
			[ttt_board[0], ttt_board[3], ttt_board[6]],
			[ttt_board[1], ttt_board[4], ttt_board[7]],
			[ttt_board[2], ttt_board[5], ttt_board[8]],
			[ttt_board[0], ttt_board[4], ttt_board[8]],
			[ttt_board[2], ttt_board[4], ttt_board[6]]
					]
			
				
				marker_1 = 'X'
				marker_2 = 'O'

				if marker == marker_1
					opponent = marker_2
				else
					opponent = marker_1
				end

				results = 10

			
			board_position.each_with_index do |win_combo, index|
				
				if  win_combo.count(marker) == 2 &&win_combo.count('') == 1
					winning_pos = win_combo.index('') 
					results = win_array[index][winning_pos]
				else 
					results

				end
			end
		results
	end

	def block(ttt_board)

		win_array = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
		
		 board_position = [
			[ttt_board[0], ttt_board[1], ttt_board[2]],
			[ttt_board[3], ttt_board[4], ttt_board[5]],
			[ttt_board[6], ttt_board[7], ttt_board[8]],
			[ttt_board[0], ttt_board[3], ttt_board[6]],
			[ttt_board[1], ttt_board[4], ttt_board[7]],
			[ttt_board[2], ttt_board[5], ttt_board[8]],
			[ttt_board[0], ttt_board[4], ttt_board[8]],
			[ttt_board[2], ttt_board[4], ttt_board[6]]
					]
			
				
				marker_1 = 'X'
				marker_2 = 'O'

				if marker == marker_1
					opponent = marker_2
				else
					opponent = marker_1
				end

			

				results = 10

			board_position.each_with_index do |win_combo, index|
				
				if win_combo.count(opponent) == 2 && win_combo.count('') == 1
					winning_pos = win_combo.index('')
					results = win_array[index][winning_pos] 
				else 
					results

				end
			end
		results
		
	end


	def check_for_fork(ttt_board)

		fork_combinations = [
							[ttt_board[0],ttt_board[1],ttt_board[2]],
							[ttt_board[3],ttt_board[4],ttt_board[5]],
							[ttt_board[6], ttt_board[7], ttt_board[8]],
							[ttt_board[0], ttt_board[3], ttt_board[6]],
							[ttt_board[1],ttt_board[4], ttt_board[7]],
							[ttt_board[2],ttt_board[5],ttt_board[8]], 
							[ttt_board[0], ttt_board[4], ttt_board[8]],
							[ttt_board[2],ttt_board[4],ttt_board[6]]
							]

		fork_positions = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

		fork_line = []
		fork_spot = [] # new array for when you flatten
		i = []  #index positions

		fork_combinations.each_with_index do |forking_line, index|
			if forking_line.count(marker) == 1 && forking_line.count("") == 2
				fork_line = forking_line
				i.push(index)
			end
		end 

		i.each do |index|
			fork_spot << fork_positions[index]
		end
		
		fork_spot = fork_spot.flatten.sort #flattens array, takes forks position arrays, puts in fork positions array
		
		intersections = []
		fork_spot.each do |spot| 
			if ttt_board[spot] == ""
				intersections.push(spot)
			end

		end
		
		
		if intersections.detect { |match| intersections.count(match) > 1 } == nil
			
			move = 10

		else
			move = intersections.detect { |match| intersections.count(match) > 1}
		end
		move
	end


	def block_fork(ttt_board)


		marker_1 = 'X'
		marker_2 = 'O'

				if marker == marker_1
					opponent = marker_2
				else
					opponent = marker_1
				end
				 

		fork_combinations = [
							[ttt_board[0],ttt_board[1],ttt_board[2]],
							[ttt_board[3],ttt_board[4],ttt_board[5]],
							[ttt_board[6], ttt_board[7], ttt_board[8]],
							[ttt_board[0], ttt_board[3], ttt_board[6]],
							[ttt_board[1],ttt_board[4], ttt_board[7]],
							[ttt_board[2],ttt_board[5],ttt_board[8]], 
							[ttt_board[0], ttt_board[4], ttt_board[8]],
							[ttt_board[2],ttt_board[4],ttt_board[6]]
							]

		fork_positions = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

		

		fork_spot = []
		i = []  #index

		fork_combinations.each_with_index do |forking_line, index|
		
			if forking_line.count(opponent) == 1 && forking_line.count("") == 2
					i.push(index)
			end
		end

		i.each do |index|
			fork_spot << fork_positions[index]
		end
		
		fork_spot = fork_spot.flatten.sort #flattens array, takes forks position arrays, puts in fork positions array
		
		intersections = []
		fork_spot.each do |spot| 
				if ttt_board[spot] == ""
						intersections.push(spot)
				end

		end

		if ttt_board == ['', '', opponent, '', marker, '', opponent, '', '']
			move = 3

		elsif ttt_board == [opponent, '', '', '', marker, '', '', '', opponent]
			move = 3 
		
		
		elsif intersections.detect { |match| intersections.count(match) > 1 } == nil
			
			move = 10

		else
			
			move = intersections.detect { |match| intersections.count(match) > 1}
		end
		
		move
	
	end

	def take_center(ttt_board)
		if ttt_board[4] == ""
			move = 4
		else
			move = 10
		end
	end

	def opposite_corner(ttt_board)


		marker_1 = 'X'
		marker_2 = 'O'

				if marker == marker_1
					opponent = marker_2
				else
					opponent = marker_1
				end

		if ttt_board[0] == opponent && ttt_board[8] == ""
			move = 8

		elsif ttt_board[2] == opponent && ttt_board[6] == ""
			move = 6

		elsif ttt_board[6] == opponent && ttt_board[2] == ""
			move = 2

		elsif ttt_board[8] == opponent && ttt_board[0] == ""
			move = 0

		else
			move = 10
		end

	end

	def empty_corner(ttt_board)

		corners = [0,2,6,8]
		empty_corner = []

		corners.each do |pos|
			if ttt_board[pos] == ""
				empty_corner << pos
			end
		end

		if empty_corner.length > 0
			move = empty_corner.shift
		else
			move = 10
		end
		
	end

	def empty_side(ttt_board)

		sides = [1,3,5,7]
		empty = []

		sides.each do |pos|
			if ttt_board[pos] == ''
				empty << pos
			end
		end

		if empty.length > 0
			move = empty.shift
		else
			move = 10
		end
		move

	end


end