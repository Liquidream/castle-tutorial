-- Welcome to your new Castle project!
-- https://playcastle.io/get-started
-- Castle uses Love2D 11.1 for rendering and input: https://love2d.org/
-- See here for some useful Love2D documentation:
-- https://love2d-community.github.io/love-api/

local total_time_elapsed = 0
local player = {
 x = 100,
 y = 100,
 size = 20
}
local myColour = {44, 232, 245}

function love.draw()
 love.graphics.setColor(fromRGBtable(myColour))
 --love.graphics.setColor(fromRGB(44, 232, 245))
 --love.graphics.setColor(0.4, 0.4, 1.0, 1.0)
 love.graphics.circle("fill", player.x, player.y, player.size, 32)
 
 --local y_offset = 8 * math.sin(total_time_elapsed * 3)
  -- love.graphics.print('Edit main.lua to get started!', 400, 300 + y_offset)
  -- love.graphics.print('Press Cmd/Ctrl + R to reload.', 400, 316 + y_offset)
end

function love.update(dt)
  total_time_elapsed = total_time_elapsed + dt
  
  local speed = 256
  local y_offset = .5 * math.sin(total_time_elapsed * 3)
  
  if love.keyboard.isDown("right") then
   player.x = player.x + speed * dt
  end
  if love.keyboard.isDown("left") then
   player.x = player.x - speed * dt
  end
  if love.keyboard.isDown("up") then
   player.y = player.y - speed * dt
   --print("up arrow pressed at "..total_time_elapsed)
  end
  if love.keyboard.isDown("down") then
   player.y = player.y + speed * dt
  end

  -- playing around
  player.size = player.size + y_offset
end


-- convert a traditional RBG color table to normalised RGB table
function fromRGBtable(rgb_table)
 return {rgb_table[1]/255, rgb_table[2]/255, rgb_table[3]/255}
end

-- convert a traditional RBG color to normalised RGB
function fromRGB(red, green, blue) -- alpha?
 return {red/255, green/255, blue/255}
end