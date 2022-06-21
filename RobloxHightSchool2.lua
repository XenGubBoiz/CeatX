local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local wp = game:GetService('Workspace')
local plrs = game:GetService('Players')
local plr = plrs.LocalPlayer
local char = plr.Character

local window = lib.new('Roblox High School 2 - By ChuongEX', 'DarkTheme')
--TABS
local autofarm = window:addPage('Auto Farm')
local class = window:addPage('Class')
local fun = window:addPage('Fun')
local setting = window:addPage('Setting')
---SECTIONS
local sunblox = autofarm:addSection('SunBlox') --SUNBLOX SECTION
sunblox:addToggle('Auto Farm', false, function(value)
    getgenv().Farm_Sunblox = value
    if value then
        getgenv().JobDone = 0
        sunbloxFarm()
    end
    --window:Notify('SunBlox', 'Auto Farm Check', function(bool)end)
end)
sunblox:addDropdown('Easy', {'Easy', 'Medium', 'Hard'}, function(value)
    getgenv().Farm_SunBlox_Level = value
end)
sunblox:addSlider('Teleport Delay', nil, 0, 10, function(value)
    getgenv().Farm_Sunblox_TeleDelay = value
end)
sunblox:addSlider('Take Job Delay', 3, 1, 10, function(value)
    getgenv().Farm_Sunblox_JobDelay = value
end)
sunblox:addButton('Job done: ' .. JobDone)

---------------------
local potioner = autofarm:addSection('Potioneer') --POTIONEER SECTION

---------------------
local void = autofarm:addSection('Void') --VOID SECTION

---------------------
local shooting_star = autofarm:addSection('Shooting Star')

shooting_star:addToggle('Auto Claim', false, function(value)
    getgenv().Farm_Star = value
end)

--FUNCTION
function sunbloxFarm()
    JobDone = 0
    function onfarmCheck()
        local sunbloxHUB = plr.PlayerGui.SunbloxJobHUD
    end
    while wait() do
        if not Farm_Sunblox then break end
        if pcall(onfarmCheck) ~= true then
            wait(Farm_Sunblox_JobDelay)
            local args = {
                [1] = "SunbloxDelivery",
                [2] = Farm_SunBlox_Level
            }
            game:GetService("ReplicatedStorage").Remotes.Jobs.RequestServerStartJob:FireServer(unpack(args))
        else
            wait(Farm_Sunblox_TeleDelay)
            local lightbeam = wp:WaitForChild('LightBeam')
            lightbeam.Light.BrickColor = BrickColor.new('Really Red')
            char.HumanoidRootPart.CFrame = lightbeam.Light.CFrame
            if char.HumanoidRootPart.CFrame == lightbeam.Light.CFrame then
                JobDone = JobDone + 1
                JobDonex = JobDone - 1
                sunblox:updateButton('Job done: '.. JobDonex, 'Job done: '.. JobDone)
            end
            if pcall(function() local npcdes = wp['!NPC'] end) then
                local npc = wp['!NPC']
                npc:Destroy()
            end
        end
    end
end

function shootingstarFarm()
    while wait() do
        if not Farm_Star then break end
        wait(1)
        local star = wp:WaitForChild('ShootingStar')
        star.MainShootingStarPart.CFrame = plr.Character.HumanoidRootPart.CFrame
        if star.MainShootingStarPart.CFrame == plr.Character.HumanoidRootPart.CFrame then
            keypress(0x45)
        end
    end
end
