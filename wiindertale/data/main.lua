require "lib.wii"

local cursorsimg
local plr1cursor

function love.load()
    cursorsimg = love.graphics.newImage("images/cursors.png")
    plr1cursor = love.graphics.newQuad(0,0,16,16)
end

function love.draw()
    love.graphics.drawQuad(cursorsimg, plr1cursor, wiimote.getWiimote(0).x, wiimote.getWiimote(0).y, wiimote.getWiimote(0).angle, 1, 1, 8, 8)
end