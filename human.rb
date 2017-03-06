class Human

	attr_accessor :marker

	def initialize(makrer)
		@marker = marker
	end

	def get_move(board)
		puts 'enter 1-9 to choose your move:'
		puts "1 | 2 | 3"
		puts "---------"
		puts "4 | 5 | 6"
		puts "---------"
		puts "7 | 8 | 9"

		move = gets.chomp.to_i - 1
	end
end