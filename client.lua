ESX = nil

PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        ESX = exports["es_extended"]:getSharedObject()
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData() == nil do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()

end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = ESX.GetPlayerData()
    PlayerData = xPlayer
    PlayerData.job = xPlayer.job
    PlayerLoaded = true
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

function openMenu()
    ESX.UI.Menu.CloseAll()
        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'person_menu', {
            title    = 'BFW Aktionsmenu',
            elements = {
                {label = 'Sperrzone', value = 'command1'},
                {label = 'Stabilisatoren anbringen', value = 'command2'},
                {label = 'Stabilisatoren entfernen', value = 'command3'},
                {label = 'Wasserversorgung aufbau' , value = 'command4'},
                {label = 'Wasserversorgung abbau', value = 'command5'},
                {label = 'Schlauch', value = 'command6'},
                {label = 'Schaum', value = 'command7'},
                {label = 'Wassermonitore Aufstellen', value = 'command8'},
                {label = 'Wassermonitore Abbauen', value = 'command9'},
                {label = 'Ueberkopfwegweiser', value = 'command10'},
                {label = 'Emergency Tablett', value = 'command11'},
                {label = 'Wassertank fuer Heli (nur im Helikopter verwenden)', value = 'command12'},
                {label = 'ATS verwenden', value = 'command13'},
                {label = 'Nicht zugeordnet', value = 'command14'},
                {label = 'Ventilator aufbauen', value = 'command15'},
                {label = 'Ventilator abbauen', value = 'command16'},
                {label = 'Sprungkissen aufbauen', value = 'command17'},
                {label = 'Sprungkissen abbauen', value = 'command18'},
                {label = 'Dreibein aufstellen', value = 'command19'},
                {label = 'Dreibein entfernen', value = 'command20'},
                {label = 'Rettungskorb nehmen', value = 'command21'},
                {label = 'Rettungskorb entfernen', value = 'command22'},
                {label = 'Unterlegskeile anbringen', value = 'command23'},
                {label = 'Unterlegskeile entfernen', value = 'command24'},
                {label = 'Hebekissen anbringen', value = 'command25'},
                {label = 'Hebekissen entfernen', value = 'command26'}
            }
        },
        function(data, menu)
            if data.current.value == 'command1' then
                     ExecuteCommand("sperrzone")
            elseif data.current.value == 'command2' then
                     ExecuteCommand("stabilisers setup")
             elseif data.current.value == 'command3' then
                     ExecuteCommand("stabilisers remove")
            elseif data.current.value == 'command4' then
                     ExecuteCommand("supplyline setup")
            elseif data.current.value == 'command5' then
                     ExecuteCommand("supplyline remove")
            elseif data.current.value == 'command6' then
                     ExecuteCommand("hose")
            elseif data.current.value == 'command7' then
                     ExecuteCommand("foam")
            elseif data.current.value == 'command8' then
                     ExecuteCommand("watermonitor setup")
            elseif data.current.value == 'command9' then
                     ExecuteCommand("watermonitor remove")
            elseif data.current.value == 'command10' then
                     ExecuteCommand("selectsign")
            elseif data.current.value == 'command11' then
                     ExecuteCommand("emergency")
            elseif data.current.value == 'command12' then
                     ExecuteCommand("setupbucket")
            elseif data.current.value == 'command13' then
                     ExecuteCommand("scba")
            elseif data.current.value == 'command14' then
                     ExecuteCommand("selectsign")
            elseif data.current.value == 'command15' then
                     ExecuteCommand("fan setup")
            elseif data.current.value == 'command16' then
                     ExecuteCommand("fan remove")
            elseif data.current.value == 'command17' then
                     ExecuteCommand("rescuecushion setup")
            elseif data.current.value == 'command18' then
                     ExecuteCommand("rescuecushion remove")
            elseif data.current.value == 'command19' then
                     ExecuteCommand("tripod setup")
            elseif data.current.value == 'command20' then
                     ExecuteCommand("tripod remove")
            elseif data.current.value == 'command21' then
                     ExecuteCommand("basket setup")
            elseif data.current.value == 'command22' then
                     ExecuteCommand("basket remove")
            elseif data.current.value == 'command23' then
                     ExecuteCommand("chock setup")
            elseif data.current.value == 'command24' then
                     ExecuteCommand("chock remove")
            elseif data.current.value == 'command25' then
                     ExecuteCommand("jack setup")
            elseif data.current.value == 'command26' then
                     ExecuteCommand("jack remove")
            end
        end,
        function(data, menu)
            menu.close()
        end)
end




Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(0, 315) and PlayerData.job.name == "fire" then
            openMenu()
        end
    end
end)