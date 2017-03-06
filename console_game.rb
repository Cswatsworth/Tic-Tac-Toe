require_relative 'board.rb'
require_relative 'sequential_AI.rb'
require_relative 'random_AI.rb'
require_relative 'human.rb'

class ConsoleGame
	attr_accessor :board, :player1, :player2, :active_player, :input1, :input2

	def initialize()
		@player1 = get_player1
		@player2 = get_player2 
		@board = Board.new
		@active_player = player1
	end

	def intro
		puts 'Welcome to Tic Tac Toe!'

	end

	def display_board

  	puts " #{board.ttt_board[7]} | #{board.ttt_board[8]} | #{board.ttt_board[9]} "
  	puts "-----------"
  	puts " #{board.ttt_board[4]} | #{board.ttt_board[5]} | #{board.ttt_board[6]} "
  	puts "-----------"
  	puts " #{board.ttt_board[1]} | #{board.ttt_board[2]} | #{board.ttt_board[3]} "
	puts "                                                                       "
	puts	"It is #{active_player.marker}'s turn."
	puts"                                                                        "
	end



	def get_move
		active_player.get_move(board.ttt_board)
	end

	def update_position
		move = get_move
		marker = active_player.marker
		board.update_position(move, marker)
		


	end

	def change_player
		if active_player == player1
			@active_player = player2
		else
			@active_player = player1
		end
		 
	end
	
	def check_winner
		if board.winner?(active_player.marker)
				true
		else				
			false
		end
	end

	def full_board?
		if board.full_board?()
			
			true
		else
			 false
		end
	end
	
	def get_player1

	puts "Select player 1 mode by entering the following;"
	puts "1 - For Easy AI"
	puts "2 - For Pro AI"
	puts "3 - For User Play"
	puts "-----------------"
	@input1 = gets.chomp.to_i

			if input1 == 1
				@player1 = Sequential_AI.new('X')

			elsif input1 == 2
				@player1 =  Random_AI.new('X')

			else input1 == 3
				@player1 = Human.new('X')
			end
		
	end

	def get_player2

	puts "Select player 2 mode by entering the following;"
	puts "1 - For Easy AI"
	puts "2 - For Pro AI"
	puts "3 - For User Play"
	puts "-----------------"

		@input2 = gets.chomp.to_i
			
			if input2 == 1 
				@player2 = Sequential_AI.new('O')
			
			elsif input2 == 2
				@player2 = Random_AI.new('O')

			else input2 == 3
				@player2 = Human.new('O')
			end

	end				

end
