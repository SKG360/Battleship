class Space
  attr_reader :coordinate
  attr_accessor :attacked, :occupied 

  def initialize(coordinate)
    @coordinate = coordinate
    @attacked   = false
    @occupied   = false
  end
end
