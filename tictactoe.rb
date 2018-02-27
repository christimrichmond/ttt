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
	$ai_move = a<<random_remaining_moves
	return $ai_move
	end

def ai(a1, a2, a3, a4, a5, a6, a7, a8, a9)
	board_hash = {1 => a1, 2 => a2, 3 => a3, 4 => a4, 5 => a5, 6 => a6, 7 => a7, 8 => a8, 9 => a9}
	blank_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
	
	#Below are the 8 possible winning scenarios:
	horizontal1 = {1 => a1, 2 => a2, 3 =>a3}	
	horizontal2 = {4 => a4, 5 => a5, 6 =>a6}
	horizontal3 = {7 => a7, 8 => a8, 9 => a9}
	
	vertical1 = {1 => a1, 4 => a4, 7 => a7}
	vertical2 = {2 => a2, 5 => a5, 8 => a8}
	vertical3 = {3 => a3, 6 => a6, 9 => a9}
	
	diagonal1 = {1 => a1, 5 => a5, 9 => a9}
	diagonal2 = {3 => a3, 5 => a5, 7 => a7}

	#Below are the descriptions of the spaces on the board
	corners = {1 => a1, 3 => a3, 7 => a7, 9 => a9}
	center = a5
	edges = {2 => a2, 4 => a4, 6 => a6, 8 => a8}

	corners.each do |key, value|
		if value == ""
			$ai_move = key
		else
			$ai_move = ""
		end
	end

	if $ai_move == ""
		edges.each do |key, value|
		if value == ""
		$ai_move = key
		end
		end
	end
return $ai_move

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

	win_pattern = [[a1,a2,a3],[a4,a5,a6],[a7,a8,a9],[a1,a4,a7],[a2,a5,a8],[a3,a6,a9],[a1,a5,a9],[a3,a5,a7]]
	(0..7).each do |i|
		three = win_pattern[i]
		x_num = three.select {|k,v| v == "X"}
		o_num = three.select {|k,v| v == "O"}
		no_num = three.select {|k,v| v == ""}
		if x_num.length == 2
			if o_num.length < 1
				$ai_move = no_num.key("")
			end
		end
	end

	(0..7).each do |i|
		three = win_pattern[i]
		x_num = three.select {|k,v| v == "X"}
		o_num = three.select {|k,v| v == "O"}
		no_num = three.select {|k,v| v == ""}
		if o_num.length == 2
			if x_num.length < 1
				$ai_move = no_num.key("")
		end
			end
	end

	if blank_board[5] == ""
		$ai_move = 5.to_s
	end

	if blank_board == ["X","","","","O","","","","X"]
		$ai_move  = 2
		elsif	blank_board == ["","","X","","O","","X","",""]
		$ai_move  = 2
	end
		
	a = "square"
	 out = a<<$ai_pick.to_s 
	return out

end