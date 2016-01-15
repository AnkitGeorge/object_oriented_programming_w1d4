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


  def turn_rover(n_direction)

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
  pos_r1 = gets.chomp.split(" ")

  rover_1 = Rover.new(pos_r1[0], pos_r1[1], pos_r1[2])

  puts "How would you like to move the rover? ex: LMRMRML"
  move_r1 = gets.chomp.split(" ")

  move_r1.each do |x|
    if ( x == "L" || x == "R")
      rover_1.turn_rover
    elsif x == "M"
      rover_1.move_rover
    else
      puts "Invalid directions given to rover."
    end
  end

  puts "The new position of your rover is: #{rover_1.x}, #{rover_1.y},
  #{rover_1.direction}"


end     #End instructions for first rover method.


def instruct_rover_2
  puts "What is the position of the second rover?"
  puts "Input an x and y coordinate, and a orientation, with spaces."
  puts "ex: 1 1 N"
  pos_r2 = gets.chomp.split(" ")

  rover_2 = Rover.new(pos_r2[0], pos_r2[1], pos_r2[2])

  puts "How would you like to move the rover? ex: LMRMRML"
  move_r2 = gets.chomp.split(" ")

  move_r2.each do |x|
    if ( x == "L" || x == "R")
      rover_2.turn_rover
    elsif x == "M"
      rover_2.move_rover
    else
      puts "Invalid directions given to rover."
    end
  end

  puts "The new position of your rover is: #{rover_2.x}, #{rover_2.y},
  #{rover_2.direction}"

end     #End instructions for second rover method.

instruct_rover_1
instruct_rover_2
