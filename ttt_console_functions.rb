def ask_to_play
	puts "Would you like to play?"
	player_choice = gets.chomp.upcase

	if player_choice == "YES"
	
	else
		puts "Good Bye!"
		exit
	end
end

def marker_choice
	puts "Player 1 would you like to be X or O"
	player_choice = gets.chomp.upcase  


	if player_choice == "X"
	
		puts "Player 1 is #{player_choice} and Player 2 is O" 
	elsif player_choice == "O"

		puts "Player 1 is O and Player 2 is X"
	else
		puts "Please enter valid character"
		player_choice = marker_choice
	end
	player_choice
end

def player_two_marker_set(p1)
	if p1 == "X"
		 "O"
	else
		 "X"
	end

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def player_one_move(board, marker)
	puts "Player 1 pick a spot you would like."
	player_input = gets.chomp.to_i
	board_input = player_input - 1

	if player_input >= 1 && player_input <= 9 && board[board_input] == "#{player_input}"
		board[board_input] = marker
		# puts "#{(board[player_input] = marker)}"
		board
	else
		puts "Please enter a valid spot"
		player_one_move(board, marker)
	end

end

def player_two_move(board, marker)
	puts "Player 2 pick a spot you would like."
	player_input = gets.chomp.to_i
	board_input = player_input - 1


	if player_input >= 1 && player_input <= 9 && board[board_input] == "#{player_input}"
		board[board_input] = marker
			# puts "#{(board[player_input] = marker)}"
		board
	else
		puts "Please enter a valid spot"
		player_two_move(board, marker)
	end

end

def check_for_win?(board, marker)
		
		winning_combinations = [[board[0],board[1],board[2]],
								[board[3],board[4],board[5]],
								[board[6],board[7],board[8]],
								[board[0],board[3],board[6]],
								[board[1],board[4],board[7]],
								[board[2],board[5],board[8]], 
								[board[0],board[4],board[8]],
								[board[2],board[4],board[6]]]
		
		winning_combinations.each do |winner|
			if winner.count(marker) == 3
				puts "#{marker} is the WINNER!!!"
				exit
			end
		end
end

def check_for_tie?(board)
	if board.count(" ") == 0
		puts "The game is a TIE!!!"
	end
end
