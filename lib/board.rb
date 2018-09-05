require './lib/space'
require './lib/ship'

class Board
  def initialize(length)
    @length = length
  end

  def row_titles
    # ("A".."D").to_a.shift(@length)
    [*"A".."D"]
  end

  def column_titles
    # ("1".."4").to_a.shift(@length)
    [*"1".."4"]
  end

  def unique_space_id
    row_titles.map do |row|
      column_titles.map do |num|
        Space.new(row + num)
      end
    end
  end

  def place_a_ship(bow, stern, type)
    type.ship_placement(bow, stern)

  end

  def check_if_occupied(type)
    [*type.head_of_ship..type.tail_of_ship].map.with_index do |coordinate, idx|
      if coordinate == unique_space_id[0][idx].coordinate
      unique_space_id[0][idx].occupied ^ true
      require "pry"; binding.pry
      end
    end

  end



end
