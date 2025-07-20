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
            title    = 'JOB Aktionsmenu',
            elements = {
                {label = 'PutTexthere', value = 'command1'},
                {label = 'PutTexthere', value = 'command2'},
                {label = 'PutTexthere', value = 'command3'},
                {label = 'PutTexthere', value = 'command4'},
                {label = 'PutTexthere', value = 'command5'},
                {label = 'PutTexthere', value = 'command6'},
                {label = 'PutTexthere', value = 'command7'},
                {label = 'PutTexthere', value = 'command8'},
                {label = 'PutTexthere', value = 'command9'},
                {label = 'PutTexthere', value = 'command10'},
                {label = 'PutTexthere', value = 'command11'},
                {label = 'PutTexthere', value = 'command12'},
                {label = 'PutTexthere', value = 'command13'},
                {label = 'PutTexthere', value = 'command14'},
                {label = 'PutTexthere', value = 'command15'},
                {label = 'PutTexthere', value = 'command16'},
                {label = 'PutTexthere', value = 'command17'},
                {label = 'PutTexthere', value = 'command18'},
                {label = 'PutTexthere', value = 'command19'},
                {label = 'PutTexthere', value = 'command20'},
                {label = 'PutTexthere', value = 'command21'},
                {label = 'PutTexthere', value = 'command22'},
                {label = 'PutTexthere', value = 'command23'},
                {label = 'PutTexthere', value = 'command24'},
                {label = 'PutTexthere', value = 'command25'},
                {label = 'PutTexthere', value = 'command26'}
            }
        },
        function(data, menu)
            if data.current.value == 'command1' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command2' then
                     ExecuteCommand("hereyourcommand")
             elseif data.current.value == 'command3' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command4' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command5' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command6' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command7' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command8' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command9' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command10' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command11' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command12' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command13' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command14' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command15' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command16' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command17' then
                     ExecuteCommand("rhereyourcommand")
            elseif data.current.value == 'command18' then
                     ExecuteCommand("rhereyourcommand")
            elseif data.current.value == 'command19' then
                     ExecuteCommand("thereyourcommand")
            elseif data.current.value == 'command20' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command21' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command22' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command23' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command24' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command25' then
                     ExecuteCommand("hereyourcommand")
            elseif data.current.value == 'command26' then
                     ExecuteCommand("hereyourcommand")
            end
        end,
        function(data, menu)
            menu.close()
        end)
end



--Enter here the Job that uses the Menu z.B fire --> Firemann
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(0, 315) and PlayerData.job.name == "fire" then 
            openMenu()
        end
    end
end)