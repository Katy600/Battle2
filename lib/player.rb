class Player
  attr_reader :name
  attr_accessor :points  
  HIT_POINTS = 60

  def initialize(name, points=HIT_POINTS)
    @name = name
    @points = points
  end

  def reduce
    @points -=10
  end


end
