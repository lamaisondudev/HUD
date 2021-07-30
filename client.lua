local thirst, hunger = 0, 0

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(250)
        SendNUIMessage({
            show = IsPauseMenuActive(),
            thirst = thirst,
            hunger = hunger
        })
    end
end)

AddEventHandler("hud_clean:updateBasics", function(basics)
    hunger, thirst = basics[1].percent, basics[2].percent, basics[3].percent
end)
