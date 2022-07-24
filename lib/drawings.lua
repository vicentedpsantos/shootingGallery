require("lib.game")
require("config")

-- Colors
red = { 1, 0, 0 }
white = { 1, 1, 1 }

function drawCrosshairs()
  love.graphics.draw( sprites.crosshairs, love.mouse.getX() - 20, love.mouse.getY() - 20 )
end

-- drawCircle( x, y, radius, { 1, 0, 0 } )
function drawCircle( x, y, radius, color )
  love.graphics.setColor( color )
  love.graphics.circle( "fill", x, y, radius, 100 )
end

function drawTarget(x, y, radius)
  drawCircle( x, y, radius, red )
  drawCircle( x, y, radius - ( radius / 5 ), white )
  drawCircle( x, y, radius - ( radius / 5 * 2 ), red )
  drawCircle( x, y, radius - ( radius / 5 * 3 ), white )
  drawCircle( x, y, radius - ( radius / 5 * 4 ), red )
end

function drawTimer()
  windowWidth = love.graphics.getWidth()

  love.graphics.setColor( white )
  love.graphics.setFont( gameFont )
  love.graphics.print( math.ceil(game.timer) .. "s",  (windowWidth / 2) - 20, 10 )
end

function drawScore()
  love.graphics.setColor( white )
  love.graphics.setFont( gameFont )
  love.graphics.print( "Score: " .. game.score, 10, 10 )
end
