require "lib.wii"

function love.draw()
	love.graphics.print(tostring("Wiimote 1 X: " .. (love.wiimote.getX(0) or "error") .. " Y: " .. (love.wiimote.getY(0) or "error")),  320, 240)
end