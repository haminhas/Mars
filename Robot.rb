require_relative('Scent') 
class Robot
  attr_accessor :x
  attr_accessor :y
  attr_accessor :direction
  attr_accessor :commands
  attr_accessor :on_board
  @on_board
  @last_position
  @@scent  = []
  def initialize(x, y, direction, commands)
	@x = x
	@y = y
	@direction = direction
	@commands = commands.split("")
   end

  def left 
  	case @direction
  	when 'N'
	  @direction = 'W'
  	when 'E'
	  @direction = 'N'
  	when 'S'
	  @direction = 'E'
  	when 'W'
	  @direction = 'S'
  	end
  end

  def right 
	case @direction
	when 'N'
	  @direction = 'E'
	when 'E'
	  @direction = 'S'
	when 'S'
	  @direction = 'W'
	when 'W'
 	  @direction = 'N'
	end
  end

  def foward
    @last_position = Scent.new(@x, @y, @direction) 
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
  end

  def check_on_board
  	if $top_right[0] >= @x && @x >= 0 && $top_right[1] >= @y && @y >= 0
  	  @on_board = true
  	else
  	  @on_board = false
  	  @@scent.push(@last_position)
  	end
  end
end