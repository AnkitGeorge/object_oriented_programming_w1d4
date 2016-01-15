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
      puts "ERROR."
    end

  end   #Logic for modifying coordinates based on direction.

  def turn(n_direction)

    case n_direction
    when "L"
      if @direction == "N"
        @direction = "W"
      elsif @direction == "W"
        @direction = "S"
      elsif @direction == "S"
        @direction = "E"
      elsif @direction == "E"
        @direction = "N"
      else
        puts "Not a valid input for direction"
      end

    when "R"
      if @direction == "N"
        @direction = "E"
      elsif @direction == "E"
        @direction = "S"
      elsif @direction == "S"
        @direction = "W"
      elsif @direction == "W"
        @direction = "N"
      else
        puts "not a direction"
      end #This end closes if statement

    end   #This end closes case statement.

  end     #This end closes turn method.

  def position
    puts "#{x}, #{y}, #{direction}"
  end

end       #This end closes Rover class details.
