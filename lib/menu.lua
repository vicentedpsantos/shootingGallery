require("config")
require("lib.game")

menu = {}

menu.lastScore = {}
menu.lastScore.x = windowWidth / 3
menu.lastScore.y = windowHeight / 2

menu.newGame = {}
menu.newGame.text = love.graphics.newText( menuFont, "New Game" )
menu.newGame.x = windowWidth / 3
menu.newGame.y = (windowHeight / 4) - 10

menu.newGame.hasBeenClicked = function(x, y)
  return x >= menu.newGame.x and x <= menu.newGame.x + menu.newGame.text:getWidth() and
         y >= menu.newGame.y and y <= menu.newGame.y + menu.newGame.text:getHeight()
end
