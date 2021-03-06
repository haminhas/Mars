require_relative('Scent') 
class Robot
  attr_accessor :x
  attr_accessor :y
  attr_accessor :direction
  attr_accessor :commands
  attr_accessor :on_board
  @on_board
  @last_position
  @@scent = []
  def initialize(x, y, direction, commands)
	@x = x
	@y = y
	@direction = direction
	@commands = commands.split("")
   end

  def turn(orientation)
    case @direction
    when 'N'
      orientation == 'R' ? @direction = 'E' : @direction = 'W'
    when 'E'
      orientation == 'R' ? @direction = 'S' : @direction = 'N'
    when 'S'
      orientation == 'R' ? @direction = 'W' : @direction = 'E'
    when 'W'
      orientation == 'R' ? @direction = 'N' : @direction = 'S'
    end
    #puts "New direction is #{@direction}"
  end

  def foward
  	# store the current positions incase the robot moves off the grid so we can leave a scent
    @last_position = Scent.new(@x, @y, @direction) 
    #check for a scent
    return if check_scent?
  	case @direction
  	when 'N'
	  @y += 1
  	when 'E'
	  @x += 1
  	when 'S'
	  @y -= 1
  	when 'W'
	  @x -= 1
    end
    #puts "Moving foward in #{@direction},new co-oridinates: #{@x}, #{@y}"
    check_on_board?
  end

  def check_scent?
  	if @@scent.empty?
  	  false
  	else
  	  @@scent.each do |s|
  		bool = true
  		Scent.same?(@last_position, s) ? bool = true : bool = false
  		return bool
  	  end
  	end
  end

  def check_on_board?
    # if the robot is not on the board then add the last postion it was on before going out
    # of the grid as scent
  	if $top_right[0] >= @x && @x >= 0 && $top_right[1] >= @y && @y >= 0
  	  @on_board = true
  	else
  	  #puts "Added scent at #{@last_position.x_value}, #{@last_position.y_value}, #{@last_position.direction}"
  	  @on_board = false
  	  @@scent.push(@last_position)
  	end
  end
end