require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require './lib/space'
require './lib/ship'

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

    assert_instance_of Space, board.unique_space_id[0][0]
    assert_equal "A1",        board.unique_space_id[0][0].coordinate
  end

  def test_the_placement_of_a_ship

    board   = Board.new(4)
    cruiser = Ship.new(3)

    board.place_a_ship("A1", "A3", cruiser)

    assert_equal "A1", cruiser.head_of_ship
    assert_equal "A3", cruiser.tail_of_ship

    assert_equal [true, true, true], board.check_if_occupied(cruiser)

    assert board.unique_space_id[0][0].occupied
    assert board.unique_space_id[0][1].occupied
    assert board.unique_space_id[0][2].occupied
  end



end
