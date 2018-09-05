require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require './lib/space'
require './lib/ship'
require './lib/battleship'


class GameflowTest < Minitest::Test
  def test_if_it_exits
    gf = Gameflow.new
    assert_instance_of Gameflow, gf
  end
end
