require_relative 'console_game.rb'

player1 = ('X') #Sequential_AI.new('X')
player2 = ('O') #Random_AI.new('O')

game = ConsoleGame.new(player1, player2)

game.intro

until game.board.winner? || game.full_board

	game.change_player
	game.get_move
	game.update_position
	game.display_board
end

if game.check_winner
	puts "#{game.active_player.marker} WINS!"
else

puts "ITS A TIE!"
end