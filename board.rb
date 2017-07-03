class Board

	@@init_board = Array.new(9) { |i| " " }

	attr_accessor :game_board

	def initialize

		@game_board = @@init_board

	end


	def display

		puts " #{@game_board[0]} | #{@game_board[1]} | #{@game_board[2]} "
		puts "-----------"
		puts " #{@game_board[3]} | #{@game_board[4]} | #{@game_board[5]} "
		puts "-----------"
		puts " #{@game_board[6]} | #{@game_board[7]} | #{@game_board[8]} "

	end

	
	def spot_taken?(num)

		return true if @game_board[num] != " "
		return false

	end

	
	def play(player, num)

		if spot_taken?(num)
			puts "spot taken already"
			return
		end 

		@game_board[num] = player.symbol


	end


end

