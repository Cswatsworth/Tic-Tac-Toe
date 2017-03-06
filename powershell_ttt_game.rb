require_relative 'console_game.rb'


game = ConsoleGame.new

game.intro

#until game.check_winner || game.full_board?
	#game.change_player
	game.display_board
	game.get_move
	game.update_position
#end

# if game.check_winner?
# 	puts "#{game.active_player.marker} WINS!"
# else

# puts "ITS A TIE!"
# end