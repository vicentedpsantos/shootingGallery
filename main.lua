-- Major variables are declared in this function
function love.load()
end

-- dt = Delta Time
-- This function is updated with every frame update in the
-- game. So in a 60 FPS game, this function would be called
-- 60 times
function love.update(dt)
end

-- This function is responsible for drawing things on the screen
function love.draw()
  drawTarget(200, 400)
end

-- drawCircle( x, y, radius, { 1, 0, 0 } )
function drawCircle( x, y, radius, color )
  love.graphics.setColor(color)
  love.graphics.circle( "fill", x, y, radius, 100 )
end

local red = { 1, 0, 0 }
local white = { 1, 1, 1 }
function drawTarget(x, y)
  drawCircle( x, y, 50, red )
  drawCircle( x, y, 40, white )
  drawCircle( x, y, 30, red )
  drawCircle( x, y, 20, white )
  drawCircle( x, y, 10, red )
end
