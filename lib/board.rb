require './lib/space'

class Board
  def initialize(length)
    @length = length

  end

  def create_each_space
    require "pry"; binding.pry
    space.occupied
  end
end
