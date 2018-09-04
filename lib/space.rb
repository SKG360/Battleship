class Space
  attr_reader :coordinate

  def initialize(coordinate)
    @coordinate = coordinate
    @attacked   = false
    @occupied   = false
  end
end
