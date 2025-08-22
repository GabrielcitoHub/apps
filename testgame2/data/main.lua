require "lib.wii"

function love.draw()
	love.graphics.print(tostring("Wiimote 1 X: " .. love.wiimote.getX(0) .. " Y: " .. love.wiimote.getY(0)),  320, 240)
	love.graphics.print(tostring("Wiimote 1 GW X: " .. wiimote.getWiimote(0).x .. " Y: " .. wiimote.getWiimote(0).y),  320, 210)
	love.graphics.print(tostring("Wiimote 1 GWS X: " .. wiimote.getWiimotes()[1].x .. " Y: " .. wiimote.getWiimotes()[1].y),  320, 180)
end