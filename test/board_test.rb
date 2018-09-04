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

end
