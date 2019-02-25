-- Welcome to your new Castle project!
-- https://playcastle.io/get-started
-- Castle uses Love2D 11.1 for rendering and input: https://love2d.org/
-- See here for some useful Love2D documentation:
-- https://love2d-community.github.io/love-api/

local total_time_elapsed = 0
local playerPos = {
 x = 100,
 y = 100
}

function love.draw()
  local y_offset = 8 * math.sin(total_time_elapsed * 3)
  love.graphics.setColor(1.0, 0.4, 0.4, 1.0)
  --love.graphics.setColor(0.4, 0.4, 1.0, 1.0)
  love.graphics.circle("fill", playerPos.x, playerPos.y, 20, 32)
  -- love.graphics.print('Edit main.lua to get started!', 400, 300 + y_offset)
  -- love.graphics.print('Press Cmd/Ctrl + R to reload.', 400, 316 + y_offset)
end

function love.update(dt)
  total_time_elapsed = total_time_elapsed + dt
  
  local speed = 256
  
  if love.keyboard.isDown("right") then
   playerPos.x = playerPos.x + speed * dt
  end
  if love.keyboard.isDown("left") then
   playerPos.x = playerPos.x - speed * dt
  end
  if love.keyboard.isDown("up") then
   playerPos.y = playerPos.y - speed * dt
   --print("up arrow pressed at "..total_time_elapsed)
  end
  if love.keyboard.isDown("down") then
   playerPos.y = playerPos.y + speed * dt
  end
end

