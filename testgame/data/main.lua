require "lib.wii"

function love.draw()
	love.graphics.print("WiiLÖVE is awesome!", wiimote.getWiimotes[1].x, wiimote.getWiimotes[1].y)
end