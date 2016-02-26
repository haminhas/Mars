class Robot
	def initialize(x, y, direction, commands)
	  @x = x
	  @y = y
	  @direction = direction
	  @commands = commands.split("")
	end

end