require("lib.drawings")
require("lib.sprites")
require("lib.target")
require("lib.game")

-- Major variables are declared in this function
function love.load()
  love.mouse.setVisible(false)
end

-- dt = Delta Time
-- This function is updated with every frame update in the
-- game. So in a 60 FPS game, this function would be called
-- 60 times
function love.update(dt)
  game.tickTime(dt)
end

function love.mousepressed(x, y, button, istouch, presses)
  if button == 1 then -- 1 is the primary mouse button
    if target.hasBeenShot({ x, y }) then
      game.addScore(1)

      target.reposition()
    end
  end
end

-- This function is responsible for drawing things on the screen
function love.draw()
  drawBackground()
  drawScore()
  drawTimer()
  drawTarget( target.x, target.y, target.radius )
  drawCrosshairs()
end

