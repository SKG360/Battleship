require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require './lib/space'

class BoardTest < Minitest::Test
  def test_if_it_exists
    board = Board.new(4)
    assert_instance_of Board, board
  end

  def test_if_it_creates_row_titles
    board = Board.new(4)
    expected = ["A", "B", "C", "D"]
    assert_equal expected, board.row_titles
  end

  def test_if_it_creates_column_titles
    board = Board.new(4)
    expected = ["1", "2", "3", "4"]
    assert_equal expected, board.column_titles
  end

  def test_if_it_combines_titles_and_columns_labels_as_unique_space_id
    board = Board.new(4)
    expected = [["A1", "A2", "A3", "A4"],
                ["B1", "B2", "B3", "B4"],
                ["C1", "C2", "C3", "C4"],
                ["D1", "D2", "D3", "D4"]]
    assert_equal expected, board.unique_space_id
  end

  def test_if_the_board_has_created_spaces
    board = Board.new(4)
    expected = [["A1", "A2", "A3", "A4"],
                ["B1", "B2", "B3", "B4"],
                ["C1", "C2", "C3", "C4"],
                ["D1", "D2", "D3", "D4"]]
    assert_equal expected, board.create_spaces
  end

end
