require "lib.wii"

local plr1cursor
local wiimote = love.getWiimote(0)

function love.load()
    plr1cursor = love.graphics.newImage("images/cursor.png")
end

function love.draw()
    love.graphics.draw(plr1cursor, wiimote.x, wiimote.y, 0, 1, 1, 8, 8)
end