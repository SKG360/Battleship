require './lib/space'

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
        row + num
      end
    end
  end

  def create_spaces
    unique_space_id.map.with_index do |coordinate, idx|
      [coordinate[idx], Space.new(coordinate[idx])]
    end.to_h
  end

end
