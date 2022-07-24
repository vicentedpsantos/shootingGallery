-- Major variables are declared in this function
function love.load()
  gameFont = love.graphics.newFont("assets/chocolate_covered_raindrops.ttf", 40)

  red = { 1, 0, 0 }
  white = { 1, 1, 1 }

  target = {}
  target.x = 300
  target.y = 300
  target.radius = 50

  score = 0
  timer = 10
end

-- dt = Delta Time
-- This function is updated with every frame update in the
-- game. So in a 60 FPS game, this function would be called
-- 60 times
function love.update(dt)
  tickTime(dt)
end

function tickTime(dt)
  if timer > 0 then
    timer = timer - dt
  end

  if timer < 0 then
    timer = 0
  end
end

-- This function is responsible for drawing things on the screen
function love.draw()
  drawScore()
  drawTimer()
  drawTarget( target.x, target.y, target.radius )
end

-- drawCircle( x, y, radius, { 1, 0, 0 } )
function drawCircle(x, y, radius, color)
  love.graphics.setColor(color)
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

  love.graphics.setColor(white)
  love.graphics.setFont(gameFont)
  love.graphics.print(math.ceil(timer) .. "s",  (windowWidth / 2) - 20, 10)
end

function drawScore()
  love.graphics.setColor(white)
  love.graphics.setFont(gameFont)
  love.graphics.print("Score: " .. score, 10, 10)
end

function love.mousepressed(x, y, button, istouch, presses)
  if button == 1 then -- 1 is the primary mouse button
    local mouseToTarget = distanceBetween( { target.x, target.y }, { x, y } )

    if mouseToTarget < target.radius then
      score = score + 1

      repositionTarget()
    end
  end
end

-- distanceBetween({ x1, y1 }, { x2, y2 })
function distanceBetween(coord1, coord2)
  return math.sqrt( (coord2[1] - coord1[1])^2 + (coord2[2] - coord1[2])^2 )
end

function repositionTarget()
  local padding = 50
  local gap = target.radius + padding
  width, height = love.graphics.getDimensions()

  target.x = math.random(gap, width - gap)
  target.y = math.random(gap, height - gap)
end
