module WinningBoards 

	WINNING = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1, 4, 7], [2, 5, 8], [0,4,8], [2,4,6]]
	#puts winning_array

	def self.winner?(arr)

		WINNING.each do |x|
			return true if (x - arr).empty?
		end

		false
	end


end