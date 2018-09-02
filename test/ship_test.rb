require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'

class ShipTest < Minitest::Test
  def test_if_it_exits
    ship = Ship.new(2)

    assert_instance_of Ship, ship
  end

  def test_the_length_of_ships
    destroyer = Ship.new(2)
    cruiser   = Ship.new(3)

    assert_equal 2, destroyer.length
    assert_equal 3, cruiser.length
  end

  def test_the_starting_damage_of_ships
    destroyer = Ship.new(2)
    cruiser   = Ship.new(3)

    assert_equal 0, destroyer.damage
    assert_equal 0, cruiser.damage
  end

  def test_if_a_hit_causes_damage
    destroyer = Ship.new(2)
    cruiser   = Ship.new(3)

    destroyer.hit
    cruiser.hit

    assert_equal 1, destroyer.damage
    assert_equal 1, cruiser.damage
  end

end
