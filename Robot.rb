class Robot
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

end