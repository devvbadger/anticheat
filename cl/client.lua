if Config.AntiGodmode then
    CreateThread(function()
        while true do
            Wait(10000)
            local health = GetEntityHealth(PlayerPedId())
            if health > 200 then
                TriggerServerEvent("anticheat:kickPlayer", "Godmode Detected")
            end
        end
    end)
end

if Config.AntiSpeedHack then
    CreateThread(function()
        while true do
            Wait(5000)
            local speed = GetEntitySpeed(PlayerPedId())
            if speed > Config.MaxSpeed then
                TriggerServerEvent("anticheat:kickPlayer", "Speed Hack Detected")
            end
        end
    end)
end

RegisterNetEvent("anticheat:kick")
AddEventHandler("anticheat:kick", function(reason)
    DropPlayer(PlayerId(), reason)
end)