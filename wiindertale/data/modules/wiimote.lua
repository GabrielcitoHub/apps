local Wiimote = {}

function Wiimote.getWiimote(id)
    local wiimote = {}
    wiimote.id = id or 0
    wiimote.x = love.wiimote.getX(wiimote.id)
    wiimote.y = love.wiimote.getY(wiimote.id)
    wiimote.angle = love.wiimote.getAngle(wiimote.id) or 0

    return wiimote
end

function Wiimote.getWiimotes()
    local wiimotes = {}

    for i=1,4 do
        wiimotes[i] = Wiimote.getWiimote(i - 1)
    end

    return wiimotes
end

return Wiimote