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


end       #This end closes Rover class details.


def instruct_rover_1
  puts "What is the size of your plateau?"
  puts "Enter two integers, separated by a space, ex: 5 10"
  size = gets.chomp.split(" ")

  puts "What is the position of the first rover?"
  puts "Input an x and y coordinate, and a orientation, with spaces."
  puts "ex: 1 1 N"
  position_r1 = gets.chomp.split(" ")
end     #End instructions for second rover method.S


def instruct_rover_2
end     #End instructions for second rover method.

instruct_rover_1
instruct_rover_2
