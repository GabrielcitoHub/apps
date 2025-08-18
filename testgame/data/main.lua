require "lib.wii"

function love.draw()
	love.graphics.print("WiiLÖVE is awesome!", love.wiimote.getX(1) or 0, love.wiimote.getY(1) or 0)
end