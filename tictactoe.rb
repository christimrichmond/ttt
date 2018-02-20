def board(a1, a2, a3, a4, a5, a6, a7, a8, a9)
	board_hash = {1 => a1, 2 => a2, 3 => a3, 4 => a4, 5 => a5, 6 => a6, 7 => a7, 8 => a8, 9 => a9}
	 blank_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
	 completed_moves = []
	 (1..9).each do |i|
	 	if board_hash[i] != ""
	 		completed_moves.push(i)
	 	end
end

	remaining_moves = blank_board - completed_moves
	random_remaining_moves = remaining_moves.shuffle.pop.to_s
	
	a = "a"
	out = a<<random_remaining_moves
	return out
	# puts out
	end




def winner(a1, a2, a3, a4, a5, a6, a7, a8, a9)
	x_winner = ["X", "X", "X"]
	o_winner = ["O", "O", "O"]
	# board_hash = {a1 => 1, a2 => 2, a3 => 3, a4 => 4, a5 => 5, a6 => 6, a7 => 7, a8 => 8, a9 => 9}
	win_pattern = [[a1,a2,a3],[a4,a5,a6],[a7,a8,a9],[a1,a4,a7],[a2,a5,a8],[a3,a6,a9],[a1,a5,a9],[a3,a5,a7]]

	(0..7).each do |i|
		moves = win_pattern[i]
			if moves == x_winner 
				$result = "X wins!"
				break
			elsif moves == o_winner
				$result = "O wins!"
				break
			else
				$result = "No winner"
			end

	end
return $result	
end

