require "lib.wii"

function love.load()
    cursor = love.graphics.newTexture("cursor.png")
end

function love.draw()
    love.graphics.print(tostring("Wiimote 1 GW X: " .. wiimote.getWiimote(0).x .. " Y: " .. wiimote.getWiimote(0).y),  320, 210)
    love.graphics.draw(cursor, wiimote.getWiimote(0).x, wiimote.getWiimote(0).y, 0, 1, 1, 8, 8)
end