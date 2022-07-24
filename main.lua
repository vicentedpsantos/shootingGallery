require("lib.drawings")
require("lib.sprites")
require("lib.target")
require("lib.game")
require("lib.sounds")

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

  if game.isRunning() and game.timeOver() then
    game.finish()
  end
end

function love.mousepressed(x, y, button, istouch, presses)
  if (game.isPaused() or game.isOver()) and menu.newGame.hasBeenClicked(x, y) then
    game.run()

    return
  end

  if button == 1 and game.isRunning() then -- 1 is the primary mouse button
    if target.hasBeenShot( { x, y } ) then
      game.addScore(1)

      target.reposition()
      blast()
    else
      miss()
    end
  end
end

-- This function is responsible for drawing things on the screen
function love.draw()
  drawBackground()

  if game.isRunning() then
    drawScore()
    drawTimer()
    drawTarget( target.x, target.y, target.radius )
  else
    if game.isOver() then
      drawLastScores()
    end

    drawMenu()
  end

  drawCrosshairs()
end

