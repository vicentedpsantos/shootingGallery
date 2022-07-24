game = {}

game.timer = 0
game.tickTime = function(dt)
  if game.timer > 0 then
    game.timer = game.timer - dt
  end

  if game.timer < 0 then
    game.timer = 0
  end
end

game.score = 0
game.addScore = function(points)
  points = points or 1

  game.score = game.score + points
end

-- 1 paused
-- 2 running
-- 3 ended
game.state = 1

game.isPaused = function()
  return game.state == 1
end

game.isRunning = function()
  return game.state == 2
end

game.isOver = function()
  return game.state == 3
end

game.finish = function()
  game.state = 3
end

game.run = function()
  game.state = 2
  game.timer = 5
  game.score = 0
end

game.pause = function()
  game.state = 1
end

game.timeOver = function()
  return game.timer <= 0
end
