function love.load()
 love.window.minimize()
 love.graphics.setBackgroundColor(0.9, 0.4, 0.4, 0.3 )
 love.window.requestAttention(true)
 love.window.setTitle("Fight")
 windowx, windowyT = love.graphics.getDimensions()
 windowy = windowyT/2 
 kory = {"x", "y", "health", "image", "velocity"}
 ody = {"x", "y", "health", "velocity"}
 kory.x = windowx/2
 ody.x = kory.x+50
 kory.y = windowy
 ody.y = kory.y
 kory.health = 100
 ody.health = 100
 kory.velocity = {"x", "y"}
 ody.velocity = {"x", "y"}
 kory.velocity.x = 0
 kory.velocity.y = 0
 ody.velocity.x = 0
 ody.velocity.y = 0
 kory.image = love.graphics.newImage("gift of god 512.png")
end
function love.update()
 if love.keyboard.isDown("f1") then
  love.window.showMessageBox("You're a failure kory...", ":(", "error", false)
  --love.system.openURL("https://youtu.be/xinanCkdThs?list=RDxinanCkdThs")
  love.system.openURL("https://youtu.be/MmcKPVndlTg")
  love.event.quit(1)
 elseif (love.keyboard.isDown("space") or love.keyboard.isDown("w") or love.keyboard.isDown("up"))and (kory.y > -1) then
  kory.velocity.y = 10
 elseif love.keyboard.isDown("a") or love.keyboard.isDown("left") then
  kory.velocity.x = (kory.velocity.x - 0.5) - (kory.velocity.x / 100)
 elseif love.keyboard.isDown("d") or love.keyboard.isDown("right") then
  kory.velocity.x = (kory.velocity.x + 0.5) - (kory.velocity.x / 100)
 end
 if kory.y > windowy then
  kory.velocity.y = 0
  kory.y = windowy
 elseif kory.y < windowy then
  kory.velocity.y = kory.velocity.y - 0.3
 end
 kory.y = kory.y - kory.velocity.y
 kory.x = kory.x + kory.velocity.x
 kory.velocity.x = kory.velocity.x - (kory.velocity.x / 25)
end
function love.draw()
 love.graphics.draw(kory.image, kory.x, kory.y, 0, 0.1)
 love.graphics.rectangle("fill", ody.x, ody.y, 51, 51)
end