-- Major variables are declared in this function
function love.load()
  gameFont = love.graphics.newFont("assets/chocolate_covered_raindrops.ttf", 40)
  target = {}
  target.x = 300
  target.y = 300
  target.radius = 50

  score = 0
  timer = 0
end

-- dt = Delta Time
-- This function is updated with every frame update in the
-- game. So in a 60 FPS game, this function would be called
-- 60 times
function love.update(dt)
end

-- This function is responsible for drawing things on the screen
function love.draw()
  drawScore()
  drawTarget( target.x, target.y, target.radius )
end

-- drawCircle( x, y, radius, { 1, 0, 0 } )
function drawCircle(x, y, radius, color)
  love.graphics.setColor(color)
  love.graphics.circle( "fill", x, y, radius, 100 )
end

local red = { 1, 0, 0 }
local white = { 1, 1, 1 }
function drawTarget(x, y, radius)
  drawCircle( x, y, radius, red )
  drawCircle( x, y, radius - ( radius / 5 ), white )
  drawCircle( x, y, radius - ( radius / 5 * 2 ), red )
  drawCircle( x, y, radius - ( radius / 5 * 3 ), white )
  drawCircle( x, y, radius - ( radius / 5 * 4 ), red )
end
function drawScore()
  love.graphics.setColor(white)
  love.graphics.setFont(gameFont)
  love.graphics.print("Score: " .. score, 10, 10)
end
