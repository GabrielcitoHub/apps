local Wiimote = {}

function Wiimote.getWiimote(id)
    local wiimote = {}

    wiimote.id = id
    wiimote.angle = love.wiimote.getAngle(wiimote.id)
    wiimote.extension = love.wiimote.getExtension(wiimote.id)
    wiimote.position = love.wiimote.getPosition(wiimote.id)
    wiimote.x = love.wiimote.getX(wiimote.id)
    wiimote.y = love.wiimote.getY(wiimote.id)
    wiimote.connected = love.wiimote.isConnected(wiimote.id)
    wiimote.down = love.wiimote.isDown(wiimote.id)
    wiimote.rumbling = love.wiimote.isRumbling(wiimote.id)
    wiimote.classicDown = love.wiimote.isClassicDown(wiimote.id)
    wiimote.setRumble = love.wiimote.setRumble(wiimote.id)

    return wiimote
end

function Wiimote.getWiimotes()
    local wiimotes = {}

    for i=1,4 do
        table.insert(wiimotes,Wiimote.getWiimote(i))
    end

    return wiimotes
end


return Wiimote