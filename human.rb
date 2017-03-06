class Human

	attr_accessor :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(board)
		
		print 'Please Enter 1-9 to choose a move:
		7|8|9
		4|5|6
		1|2|3
		Move-'
		get_move = gets.chomp.to_i

	end
end