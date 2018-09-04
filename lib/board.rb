require './lib/space'

class Board
  def initialize(length)
    @length = length
  end

  def row_titles
    ("A".."D").to_a.shift(@length)
  end

  def column_titles
    ("1".."4").to_a.shift(@length)
  end

  def unique_space_id
    row_titles.map do |row|
      column_titles.map do |num|
        row + num
      end
    end
  end

end
