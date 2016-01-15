class Rover
  attr_accessor :x, :y, :direction

  def initialize(x , y, direction)
    @x = x.to_i
    @y = y.to_i
    @direction = direction.upcase
  end

end
