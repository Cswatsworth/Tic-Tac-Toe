require_relative 'board.rb'
require_relative 'sequential_AI.rb'
require_relative 'random_AI.rb'

class Display_board
	attr_reader :board

	def initialize() 



	def display_board() 


 	board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  	puts " #{board[0]} | #{board[1]} | #{board[2]} "
  	puts "-----------"
  	puts " #{board[3]} | #{board[4]} | #{board[5]} "
  	puts "-----------"
  	puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

display_board








# print this to the screen to
#pass in player 1 and 2
#player 1 random player two sequential
#print board to the screen
 