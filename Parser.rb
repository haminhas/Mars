require_relative('Robot')
$top_right = [5, 3]
class Parser
  def initialize
    r1 = Robot.new(1, 1, 'E', 'RFRFRFRF')
    r2 = Robot.new(3, 2, 'N', 'FRRFLLFFRRFLL')
    r3 = Robot.new(0, 3, 'W', 'LLFFFLFLFL')
    parse_instructions(r1)
    parse_instructions(r2)
    parse_instructions(r3)
  end
 end

 def parse_instructions(robot)
   robot.commands.each do |command|
   	 next if command.to_s.empty?
     case command
     when 'R'
       robot.turn('R')
     when 'L'
       robot.turn('L')
     when 'F'
       robot.foward
     end
     break if robot.on_board == false
   end
   if robot.on_board == true
      puts "#{robot.x}, #{robot.y}, #{robot.direction}"
    else
      puts "#{robot.x}, #{robot.y}, #{robot.direction} LOST"
    end
 end

 t = Parser.new
