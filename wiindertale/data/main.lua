require "lib.wii"

local cursorsimg
local plr1cursor
local wiimote = love.getWiimote(0)

function love.load()
    cursorsimg = love.graphics.newImage("images/cursors.png")
    plr1cursor = love.graphics.newQuad(0,0,16,16)
end

function love.draw()
    love.graphics.draw(plr1cursor, wiimote.x, wiimote.y, wiimote.angle, 1, 1, 8, 8)
end