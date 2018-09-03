class Ship
  attr_reader :length, :damage,
              :head_of_ship, :tail_of_ship

  def initialize(length)
    @length = length
    @damage = 0
    @head_of_ship = nil
    @tail_of_ship = nil
  end

  def ship_placement(bow, stern)
    @head_of_ship = bow
    @tail_of_ship = stern
  end

  def hit
    @damage += 1
  end
end
