class Rover
  attr_accessor :x, :y, :direction

  def initialize(x , y, direction)
    @x = x.to_i
    @y = y.to_i
    @direction = direction.to_s
    @direction = @direction.upcase
  end   #Assigns values to three states of rover.


  def move_rover

    if @direction == "N"
      @y += @y
    elsif @direction == "W"
      @x -= @x
    elsif @direction == "S"
      @y -= @y
    elsif @direction == "E"
      @x += @x
    else
      puts "ERROR in input."
    end

  end   #Logic for modifying coordinates based on direction.





end
