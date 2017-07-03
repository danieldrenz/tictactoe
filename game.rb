
require "./player"
require "./board"
require "./winners"
#require WinningBoards

puts "Hello, welcome to tic tac toe!"

=begin
	
Logic needs to be the following: 

1. Introdduce Game & Pick Players
2. Start Game by entering the loop
3. Exit Look once we have a winner
4. Ask player if they want to play again
	
=end

#set our variables: (1) players, (2) board
puts "Please give us player 1's name:"
p1 = Player.new(gets.chomp, 1)

puts "Please give us player 2's name:"
p2 = Player.new(gets.chomp, 2)

board = Board.new

#display board for player
puts "Here's the original game board..."
puts "---------------------------------"
board.display


#move into game
turn = 1

while true

	player = (turn == 1 ? p1 : p2)

	puts "#{player.name}, here is the current board"
	board.display
	puts "Make your choice"

	#check if choice if valid--i.e. 0-8 and not taken already
	while true
		choice = gets.chomp.to_i
		break if (0..8) === choice
		break if !board.spot_taken?(choice)
		puts "That choice was invalid; please select digit within 0 to 8"
	end

	board.play(player, choice)

	#check if move made player win
	player_spots = board.game_board.each_index.select { |i| board.game_board[i] == player.symbol}
	if WinningBoards::winner?(player_spots)
		puts "#{player.name}, you have vanquished your foe! You have earned the favor of the king."
		board.display
		puts '--------------------------------'
		break
	end

	#check if stalemate...
	if !board.game_board.include?(" ")
		puts "Stalemate...that's never fun. Better luck next time."
		break
	end

	#toggle turn
 	turn = (turn == 1 ? 2 : 1)

end

puts "The game is over. Thanks for playing."

