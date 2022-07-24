sounds = {
  blast = love.audio.newSource( "assets/sounds/blast.ogg", "stream" ),
  miss = love.audio.newSource( "assets/sounds/miss.ogg", "stream" )
}

function blast()
  love.audio.play(sounds.blast)
end

function miss()
  love.audio.play(sounds.miss)
end
