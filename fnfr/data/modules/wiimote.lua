local Wiimote = {}

function Wiimote.getWiimote(id)
    local wiimote = {}
    wiimote.id = id or 0

    wiimote.angle = love.wiimote.getAngle(wiimote.id) or 0
    wiimote.extension = love.wiimote.getExtension(wiimote.id) or {}
    wiimote.position = love.wiimote.getPosition(wiimote.id) or {0,0}
    wiimote.x = love.wiimote.getX(wiimote.id) or 0
    wiimote.y = love.wiimote.getY(wiimote.id) or 0
    wiimote.connected = love.wiimote.isConnected(wiimote.id) or false
    wiimote.down = love.wiimote.isDown(wiimote.id) or {}
    wiimote.rumbling = love.wiimote.isRumbling(wiimote.id) or false
    wiimote.classicDown = love.wiimote.isClassicDown(wiimote.id) or false
    wiimote.setRumble = function(status)
        if not status then status = true end
        love.wiimote.setRumble(wiimote.id, status)
    end

    return wiimote
end

function Wiimote.getWiimotes()
    local wiimotes = {}

    for i=1,4 do
        table.insert(wiimotes,Wiimote.getWiimote(i - 1))
    end

    return wiimotes
end


return Wiimote