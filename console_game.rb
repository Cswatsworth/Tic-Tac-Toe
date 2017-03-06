require_relative 'board.rb'
require_relative 'sequential_AI.rb'
require_relative 'random_AI.rb'
require_relative 'human.rb'

class ConsoleGame
	attr_accessor :board, :player1, :player2, :active_player

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2 
		@board = Board.new
		@active_player = player1
	end

	def intro
		puts 'Welcome to Tic Tac Toe!'

	end

	def display_board

  	puts " #{board.ttt_board[0]} | #{board.ttt_board[1]} | #{board.ttt_board[2]} "
  	puts "-----------"
  	puts " #{board.ttt_board[3]} | #{board.ttt_board[4]} | #{board.ttt_board[5]} "
  	puts "-----------"
  	puts " #{board.ttt_board[6]} | #{board.ttt_board[7]} | #{board.ttt_board[8]} "
	puts "                                                                       "
	end

		def player_1

	puts "Select player 1 mode by entering the following;"
	puts "1 - For Easy AI"
	puts "2 - For Pro AI"
	puts "3 - For User Play"

	@input = gets.chomp.to_i

			if input == 1
				@player1 = Sequential_AI.new('X')

			elsif input == 2
				@player1 =  Random_AI.new('X')

			else input == 3
				@player1 = Human.new('X')
			end
	end

	def player_2

	puts "Select player 1 mode by entering the following;"
	puts "1 - For Easy AI"
	puts "2 - For Pro AI"
	puts "3 - For User Play"

	@input = gets.chomp.to_i

			if input == 1 
				@player2 = Sequential_AI.new('O')
			
			elsif input == 2
				@player2 = Random_AI.new('O')

			else input == 3
				@player2 = Human.new('O')
			end
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

	def full_board
		if board.game_tie?()
			
			true
		else
			 false
		end
	end
				
end
