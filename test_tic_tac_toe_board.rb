require_relative "tic_tac_toe_board.rb"
require "minitest/autorun"

class Testboard < Minitest::Test
	def test_update_new_board_with_X_at_first_position
		board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
		assert_equal(["X"," "," "," "," "," "," "," "," "], update_board(board, 0, "X"))
	end

	def test_update_new_board_with_O_at_thrid_position
		board = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
		assert_equal(["X"," ","O"," "," "," "," "," "," "], update_board(board, 2, "O"))
	end

	def test_board_if_first_position_is_false
		board = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
		assert_equal(false, test_if_valid_spot?(board, 0))
	end

	def test_board_if_first_position_is_true
		board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
		assert_equal(true, test_if_valid_spot?(board, 0))
	end

	def test_board_for_a_tie_true
		board = ["X","O","X","O","X","O","O","X","O"]
		assert_equal(true, test_if_game_is_tied?(board))
	end

	def test_board_for_a_tie_false
		board = ["X","O","X"," ","X","O","O","X","O"]
		assert_equal(false, test_if_game_is_tied?(board))
	end

end