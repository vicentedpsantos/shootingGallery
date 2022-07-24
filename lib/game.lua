game = {}

game.timer = 100
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
