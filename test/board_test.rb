require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require './lib/space'

class BoardTest < Minitest::Test
  def test_if_it_create_each_space
    board = Board.new
    space = Space.new("A1")
    assert_equal 5, board.create_each_space
  end
end
