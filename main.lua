-- Major variables are declared in this function
function love.load()
  number = 0
end

-- dt = Delta Time
-- This function is updated with every frame update in the
-- game. So in a 60 FPS game, this function would be called
-- 60 times
function love.update(dt)
  number = number + 1
end

-- This function is responsible for drawing things on the screen
function love.draw()
  love.graphics.print(number)
end
