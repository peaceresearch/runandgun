globals = require('globals')
stage = require('stage')
player = require('player')

love.load = function()
  love.window.setTitle('run n gun')
  container = love.graphics.newCanvas(globals.gameWidth, globals.gameHeight)
  container:setFilter('nearest', 'nearest')
  love.window.setMode(globals.gameWidth * globals.gameScale, globals.gameHeight * globals.gameScale, {vsync = false})
  love.graphics.setLineStyle('rough')
  love.graphics.setLineWidth(1)
  globals.load()
  stage.load()
  player.load()
end

love.update = function(d)
  dt = d
  stage.update()
  player.update()
end

love.draw = function()
  container:renderTo(love.graphics.clear)
  love.graphics.setCanvas({
    container,
    stencil = true
  })
  stage.draw()
  player.draw()
  love.graphics.setCanvas()
  local windowX = 0
  love.graphics.draw(container, windowX, 0, 0, globals.gameScale, globals.gameScale)
  globals.clock = globals.clock + 1
  if dt < 1 / 60 then
    return love.timer.sleep(1 / 60 - dt)
  end
end