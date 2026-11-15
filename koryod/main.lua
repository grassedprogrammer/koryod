function love.load()
 love.window.minimize()
 love.graphics.setBackgroundColor(0.9, 0.4, 0.4, 0.3 )
 love.window.requestAttention(true)
 love.window.setTitle("Fight")
end
function love.update()
 if love.keyboard.isDown("f1") then
  love.window.showMessageBox("You're a failure kory...", ":(", "error", false)
  --love.system.openURL("https://youtu.be/xinanCkdThs?list=RDxinanCkdThs")
  --love.system.openURL("https://youtu.be/MmcKPVndlTg")
  love.event.quit(1)
 end
end
function love.draw()
 
end