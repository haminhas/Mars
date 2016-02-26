require_relative('Robot')
$top_right = [5, 3]
class Parser
  def initialize
    r1 = Robot.new(1, 1, 'E', 'RFRFRFRF')
    r2 = Robot.new(3, 2, 'N', 'FRRFLLFFRRFLL')
    r3 = Robot.new(0, 3, 'W', 'LLFFFLFLFL')
  end
 end

 def parse_instructions(robot)
   robot.commands.each do |command|
     case command
     when 'R'
       robot.right
     when 'L'
       robot.left
     when 'F'
       robot.foward
     end
   end
 end

 t = Parser.new