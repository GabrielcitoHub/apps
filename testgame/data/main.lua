require "lib.wii"

function love.draw()
	love.graphics.print("WiiLÖVE is awesome!", love.wiimote.getX(1) or 320, love.wiimote.getY(1) or 240)
end