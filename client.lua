-- put ur vector3 coords here!
local locations = {
    { x = -1056.9, y = -861.79, z = 4.94 },
    { x = -1114.59, y = -835.15, z = 13.34 },
    { x = -1111.86, y = -856.03, z = 13.54 },
    { x = -1106.32, y = -822.56, z = 14.28 },
    -- put ur vector3 coords here!
}

function createMarkersForLocations()
    for _, location in ipairs(locations) do
        local markerType = 20 
        local markerScale = vector3(0.5, 0.5, 0.5)
        local markerColor = {255, 0, 0, 150}

        Citizen.CreateThread(function()
            local x, y, z = location.x, location.y, location.z
            local marker = nil

            while true do
                Citizen.Wait(0)
                DrawMarker(markerType, x, y, z - 0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, markerScale.x, markerScale.y, markerScale.z, markerColor[1], markerColor[2], markerColor[3], markerColor[4], false, true, 2, false, nil, nil, false)
            end
        end)
    end
end


createMarkersForLocations()
