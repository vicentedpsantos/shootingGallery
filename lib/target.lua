target = {}

target.x = 300
target.y = 300
target.radius = 50

target.reposition = function()
  local padding = 50
  local gap = target.radius + padding
  width, height = love.graphics.getDimensions()

  target.x = math.random(gap, width - gap)
  target.y = math.random(gap, height - gap)
end

target.hasBeenShot = function(atCoord)
  local mouseToTarget = math.sqrt( (atCoord[1] - target.x)^2 + (atCoord[2] - target.y)^2 )

  return mouseToTarget < target.radius
end
