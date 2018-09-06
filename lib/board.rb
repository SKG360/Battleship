require './lib/space'
require './lib/ship'

class Board
  attr_reader :space_array
  def initialize(length)
    @length = length
    @space_array = creates_spaces
  end

  def row_titles
    # ("A".."D").to_a.shift(@length)
    [*"A".."D"]
  end

  def column_titles
    # ("1".."4").to_a.shift(@length)
    [*"1".."4"]
  end

  def creates_spaces
    row_titles.map do |row|
      column_titles.map do |num|
        Space.new(row + num)
      end
    end
  end

  def place_a_ship(bow, stern, type)

    if bow[0] == stern[0]
      [*bow..stern].map.with_index do |coordinate, idx|
        if coordinate == @space_array[0][idx].coordinate
          @space_array[0][idx].occupied = true
        end
      end

    elsif bow[1] == stern[1]
      vertical_placement = [*bow..stern].find_all do |char|
        char[1] == "1"
      end
      vertical_placement.map.with_index do |coordinate, idx|
        if coordinate == @space_array[idx][0].coordinate
          @space_array[idx][0].occupied = true
        end
      end
    else puts "Invalid Placement!"
    end

  end

end
