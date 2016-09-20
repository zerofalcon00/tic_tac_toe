require_relative "ttt_console_functions.rb"

puts "Welcome to Tic Tac Toe!"

ask_to_play

player_one_marker = marker_choice 

player_two_marker = player_two_marker_set(player_one_marker)

board = ["1","2","3","4","5","6","7","8","9"]
display_board(board)

p1_move = player_one_move(board, player_one_marker)

display_board(p1_move)

p2_move = player_two_move(p1_move, player_two_marker)

display_board(p2_move)

p1_move = player_one_move(board, player_one_marker)

display_board(p1_move)

p2_move = player_two_move(p1_move, player_two_marker)

display_board(p2_move)

p1_move = player_one_move(board, player_one_marker)

display_board(p1_move)

check_for_win?(p1_move, player_one_marker)

p2_move = player_two_move(p1_move, player_two_marker)

display_board(p2_move)

check_for_win?(p2_move, player_two_marker)

p1_move = player_one_move(board, player_one_marker)

display_board(p1_move)

check_for_win?(p1_move, player_one_marker)

p2_move = player_two_move(p1_move, player_two_marker)

display_board(p2_move)

check_for_win?(p2_move, player_two_marker)

p1_move = player_one_move(board, player_one_marker)

display_board(p1_move)

check_for_win?(p1_move, player_one_marker)

check_for_tie?(p1_move)

