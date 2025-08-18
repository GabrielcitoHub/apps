require "lib.wii"

function love.draw()
	love.graphics.print("WiiLÖVE is awesome!", wiimote.getWiimotes()[1].x or 0, wiimote.getWiimotes()[1].y or 0)
end