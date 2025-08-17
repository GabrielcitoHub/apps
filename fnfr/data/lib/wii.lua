binser = require("lib.binser")
wiimote = require("lib.wiimote")

function love.system.getOS()
    return "Web"
end

love.joystick = {}
function love.joystick.getJoysticks()
    return wiimote.getWiimotes()
end

function love.filesystem.getInfo(file)
    return love.filesystem.read(file)
end

love.window = {}
function love.window.setMode(width, height)
end

function love.window.showMessageBox(msg, msg2, msg3, msg4, msg5)
end

love.audio = {}
function love.audio.newSource(filename, mode)
    if not type then type = "static" end

    local sound = love.audio.source(filename, mode)

    return sound
end

function love.graphics.newImage(file)
    return love.graphics.newTexture(file)
end

function love.graphics.newQuad(x, y, width, height, sw, sh)
    love.graphics.quad(x, y, width, height, sw, sh)
end