class Scent
  attr_accessor :s_x
  attr_accessor :s_y 
  attr_accessor :s_direction
  def initialize(x, y, direction)
  	@s_x = x
  	@s_y = y
  	@s_direction = direction
  end

  def self.same?(this, other)
  	if this.s_x == other.s_x && this.s_y == other.s_y && this.s_direction == other.s_direction
  		true
      #puts 'Found matching scnet'
  	else
  		false
  	end
  end

end