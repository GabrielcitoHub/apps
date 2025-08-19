require "lib.wii"

function love.draw()
	love.graphics.print(tostring("Wiimote 1 X: " .. love.wiimote:getX(1) .. " Y: " .. love.wiimote:getY(1)),  320, 240)
end