# ----------------------Story---------------------
# You have a mobile robot that moves on a plane.
# The robot follows a command string consisting of letters: G, L, and R.
# G instructs the robot to move forward one step.
# L instructs the robot to turn left.
# R instructs the robot to turn right.
# The robot cannot go backward.
# After executing all the movement commands, you need to determine if the robot returns to its original starting location.
# ------------------------------------------------
# ---------------Questions/edgecase's-------------
# What if the robot is given an empty string?
# when turing left or right, does it move forward?
# what if the robot gets somthing other than a string?
# ------------------------------------------------
# ----------------------Notes---------------------
# method takes one argument (string)
# method must track robot's location (x, y)
# method returns true or false (does x == 0 && y == 0)
# method must parse string into an array of letters (each_char enumerable)
# method responds to G, L, and R ( G = +1, L = )
# ------------------------------------------------

def return_to_origin(command_string)
  x = 0 # horizontal position
  y = 0 # vertical position
  derection = 0 # 0 = north, 1 = east, 2 = south, 3 = west

  command_string.each_char do |command|
    if command == "G"
      if derection == 0 # move north
        y += 1
      elsif derection == 1 # move east
        x += 1 
      elsif derection == 2 # move south
        y -= 1
      elsif derection == 3 # move west
        x -= 1 
      end
    elsif command == "L"
      derection = (derection - 1) % 4 # % 4 to keep derection between 0 and 3 and rotate left
    elsif command == "R"
      derection = (derection + 1) % 4 # % 4 to keep derection between 0 and 3 and rotate right
    end
  end

  x == 0 && y == 0 # check if robot is at origin
end

