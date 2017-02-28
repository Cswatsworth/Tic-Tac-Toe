class AI
	attr_accessor :AI_selection

	def determine_player(player)
    if player == :X
      return :X.to_s
    elsif player == :O
      return :O.to_s
    end
  end