require_relative('Robot')
class Parser
$top_right = [5, 3]
  def initialize
  	r1 = Robot.new(1, 1, 'E', 'RFRFRFRF')
  	r2 = Robot.new(3, 2, 'N', 'FRRFLLFFRRFLL')
  	r3 = Robot.new(0, 3, 'W', 'LLFFFLFLFL')
  end
end

p = Parser.new