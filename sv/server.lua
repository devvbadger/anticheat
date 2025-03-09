if Config.AntiSpawn then
    AddEventHandler("entityCreating", function(entity)
        if not DoesEntityExist(entity) then return end

        local owner = NetworkGetEntityOwner(entity)
        local model = GetEntityModel(entity)

        DropPlayer(owner, Config.KickMessage)
        DeleteEntity(entity)
    end)
end