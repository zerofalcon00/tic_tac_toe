# def display_board(board)
#   puts " #{board[0]} | #{board[1]} | #{board[2]} "
#   puts "-----------"
#   puts " #{board[3]} | #{board[4]} | #{board[5]} "
#   puts "-----------"
#   puts " #{board[6]} | #{board[7]} | #{board[8]} "
# end
# def board
# 	board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
# end	
# display_board(board)

def update_board(board_arr, position, marker)
	board_arr[position] = marker
	board_arr
end

def test_if_valid_spot?(board, position)
	board[position] == " "



end

def test_if_game_is_tied?(board)
	if board.include? (" ") 
		false
	else
		true
	end
end
athill16