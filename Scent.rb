class Scent
  attr_accessor :scent_x
  attr_accessor :scent_y 
  attr_accessor :scent_direction
  def initialize(x, y, direction)
  	@scent_x = x
  	@scent_y = y
  	@scent_direction = direction
  end

end