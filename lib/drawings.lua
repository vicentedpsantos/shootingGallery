require("config")
require("lib.game")
require("lib.sprites")
require("lib.menu")

-- Colors
red = { 1, 0, 0 }
white = { 1, 1, 1 }
yellow = { 1, 1, 0 }

function drawCrosshairs()
  love.graphics.setColor( yellow )
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
  love.graphics.setColor( white )
  love.graphics.setFont( regularFont )
  love.graphics.print( math.ceil(game.timer) .. "s",  (windowWidth / 2) - 20, 10 )
end

function drawScore()
  love.graphics.setColor( white )
  love.graphics.setFont( regularFont )
  love.graphics.print( "Score: " .. game.score, 10, 10 )
end

function drawBackground()
  love.graphics.setColor( white )
  love.graphics.draw( sprites.sky, 0, 0 )
end

function drawMenu()
  love.graphics.setColor( white )
  love.graphics.setFont( menuFont )
  love.graphics.draw( menu.newGame.text, menu.newGame.y, menu.newGame.y )
end

function drawLastScores()
  love.graphics.setColor( white )
  love.graphics.setFont( menuFont )
  love.graphics.print("Your score was " .. game.score, menu.lastScore.x, menu.lastScore.y)
end
