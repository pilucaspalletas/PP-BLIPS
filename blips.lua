ESX = exports["es_extended"]:getSharedObject()

local markers = {
    {name = "Hospital", x = 297.1975, y = -584.2054, z = 43.1325, sprite = 61, color = 6},
    {name = "Juzgado", x = 243.8740, y = -1083.5748, z = 28.8372, sprite = 351, color = 21},
    {name = "Iglesia", x = -772.7568, y = -12.3860, z = 41.1209, sprite = 438, color = 0},
    {name = "Frey Baker", x = 52.0352, y = -133.1688, z = 55.4612, sprite = 484, color = 48},
    {name = "UwU Cafe", x = -581.3434, y = -1067.6713, z = 22.3442, sprite = 489, color = 8},
    {name = "Golf", x = -1717.2446, y = -1120.0503, z = 13.061, sprite = 109, color = 0},
    {name = "Bar Viejo", x = -545.4684, y = -51.2836, z = 42.4199, sprite = 279, color = 21},
}

function CreateMarkers()
    for _, marker in ipairs(markers) do
        local markerCoords = vector3(marker.x, marker.y, marker.z)
        local blip = AddBlipForCoord(marker.x, marker.y, marker.z)
        SetBlipSprite(blip, marker.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipColour(blip, marker.color)
        SetBlipScale(blip, 1.0)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(marker.name)
        EndTextCommandSetBlipName(blip)
    end
end

Citizen.CreateThread(function()
    CreateMarkers()
end)
