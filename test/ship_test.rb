require 'simplecov'
SimpleCov.start
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

  def test_the_placement_of_a_ship
    destroyer = Ship.new(2)
    cruiser   = Ship.new(3)

    destroyer.ship_placement("A1", "A2")
    cruiser.ship_placement("B1", "B3")

    d_expected_bow   = "A1"
    c_expected_bow   = "B1"
    d_expected_stern = "A2"
    c_expected_stern = "B3"

    assert_equal d_expected_bow, destroyer.head_of_ship
    assert_equal c_expected_bow, cruiser.head_of_ship

    assert_equal d_expected_stern, destroyer.tail_of_ship
    assert_equal c_expected_stern, cruiser.tail_of_ship
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

  def test_whether_destroyer_is_sunken_after_two_hits
    destroyer  = Ship.new(2)
    cruiser    = Ship.new(3)

    no_damage  = destroyer.sunken?
    assert_equal 0, destroyer.damage
    refute no_damage

    one_hit    = destroyer.sunken?
    destroyer.hit
    assert_equal 1, destroyer.damage
    refute one_hit

    destroyer.hit
    second_hit = destroyer.sunken?
    assert_equal 2, destroyer.damage
    assert_equal true, second_hit
  end

end
