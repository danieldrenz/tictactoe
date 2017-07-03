
class Player

	attr_accessor :name, :symbol

	def initialize(name, player_number)

		@name = name
		@symbol = set_sym(player_number)

	end


	def set_sym(player_num)

		if player_num == 1
			return "X"
		elsif player_num == 2
			return "O"
		end
	end

end






