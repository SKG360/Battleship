require 'minitest/autorun'
require 'minitest/pride'
require './lib/space'

class SpaceTest < Minitest::Test
  def test_if_it_exits
    space = Space.new("A1")
    assert_instance_of Space, space
  end

  def test_the_coordinate
    space = Space.new("A1")
    assert_equal "A1", space.coordinate
  end

  # board[0][0] == "A1".chars
  #
  # board = {["A1", "A2"]}

end
