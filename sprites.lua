sprites = {}

spritePaths = {
  sky = "assets/sprites/sky.png",
  target ="assets/sprites/target.png",
  crosshairs = "assets/sprites/crosshairs.png"
}

for spriteName, spritePath in pairs(spritePaths) do
  sprites[spriteName] = love.graphics.newImage(spritePath)
end
