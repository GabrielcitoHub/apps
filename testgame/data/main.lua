require "lib.wii"

function love.draw()
	love.graphics.print(tostring("Wiimote 1 X: " .. (love.wiimote.getX(0) or "error") .. " Y: " .. (love.wiimote.getY(0) or "error")),  320, 240)
	love.graphics.print(tostring("Wiimote 1 with GW X: " .. (wiimote.getWiimote(0).x or "error") .. " Y: " .. (wiimote.getWiimote(0).y or "error")),  320, 210)
	love.graphics.print(tostring("Wiimote 1 with GWS X: " .. (wiimote.getWiimotes[1].x or "error") .. " Y: " .. (wiimote.getWiimotes[1].y or "error")),  320, 180)
end