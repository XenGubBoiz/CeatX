
local DEMO_BAPNJ = Instance.new("ScreenGui")
local UI = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local KILLDEATH = Instance.new("TextLabel")
local KILL_STAT = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local DEATH_STAT = Instance.new("TextLabel")
local KDA = Instance.new("TextLabel")
local KDA_STAT = Instance.new("TextLabel")
local Health = Instance.new("TextLabel")
local HEALTH_STAT = Instance.new("TextLabel")
local line = Instance.new("Frame")
local line_2 = Instance.new("Frame")
local ANTI_DEATH = Instance.new("TextLabel")
local ANTIDIE_STAT = Instance.new("TextLabel")

--Properties:

DEMO_BAPNJ.Name = "DEMO_BAPNJ"
DEMO_BAPNJ.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
DEMO_BAPNJ.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
DEMO_BAPNJ.ResetOnSpawn = false

UI.Name = "UI"
UI.Parent = DEMO_BAPNJ
UI.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
UI.BorderColor3 = Color3.fromRGB(245, 1, 5)
UI.Position = UDim2.new(0.446131051, 0, 0.461290389, 0)
UI.Size = UDim2.new(0, 150, 0, 107)
UI.Active = true
UI.Draggable = true

UICorner.CornerRadius = UDim.new(0, 7)
UICorner.Parent = UI

KILLDEATH.Name = "KILL/DEATH"
KILLDEATH.Parent = UI
KILLDEATH.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
KILLDEATH.BorderColor3 = Color3.fromRGB(27, 42, 53)
KILLDEATH.Position = UDim2.new(0, 2, 0, 2)
KILLDEATH.Size = UDim2.new(0, 146, 0, 25)
KILLDEATH.Font = Enum.Font.SourceSansBold
KILLDEATH.Text = ""
KILLDEATH.TextColor3 = Color3.fromRGB(1, 200, 255)
KILLDEATH.TextSize = 15.000

KILL_STAT.Name = "KILL_STAT"
KILL_STAT.Parent = KILLDEATH
KILL_STAT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KILL_STAT.BackgroundTransparency = 1.000
KILL_STAT.Position = UDim2.new(-0.0196347237, 0, -0.0740740299, 0)
KILL_STAT.Size = UDim2.new(0, 75, 0, 27)
KILL_STAT.Font = Enum.Font.SourceSansBold
KILL_STAT.Text = "KILLs: 0"
KILL_STAT.TextColor3 = Color3.fromRGB(243, 255, 0)
KILL_STAT.TextSize = 14.000
KILL_STAT.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = KILLDEATH

DEATH_STAT.Name = "DEATH_STAT"
DEATH_STAT.Parent = KILLDEATH
DEATH_STAT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DEATH_STAT.BackgroundTransparency = 1.000
DEATH_STAT.Position = UDim2.new(0.494063914, 0, -0.0740740299, 0)
DEATH_STAT.Size = UDim2.new(0, 75, 0, 27)
DEATH_STAT.Font = Enum.Font.SourceSansBold
DEATH_STAT.Text = "DEATHs: 0"
DEATH_STAT.TextColor3 = Color3.fromRGB(243, 255, 0)
DEATH_STAT.TextSize = 14.000
DEATH_STAT.TextWrapped = true

KDA.Name = "KDA"
KDA.Parent = UI
KDA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KDA.BackgroundTransparency = 1.000
KDA.Position = UDim2.new(-0.0066666659, 0, 0.5004673, 0)
KDA.Size = UDim2.new(0, 75, 0, 27)
KDA.Font = Enum.Font.SourceSansBold
KDA.Text = "KDA"
KDA.TextColor3 = Color3.fromRGB(1, 200, 255)
KDA.TextSize = 15.000

KDA_STAT.Name = "KDA_STAT"
KDA_STAT.Parent = KDA
KDA_STAT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KDA_STAT.BackgroundTransparency = 1.000
KDA_STAT.Position = UDim2.new(1, 0, 0, 0)
KDA_STAT.Size = UDim2.new(0, 75, 0, 27)
KDA_STAT.Font = Enum.Font.SourceSansBold
KDA_STAT.Text = "0.00"
KDA_STAT.TextColor3 = Color3.fromRGB(204, 0, 255)
KDA_STAT.TextSize = 14.000
KDA_STAT.TextWrapped = true

Health.Name = "Health"
Health.Parent = UI
Health.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Health.BackgroundTransparency = 1.000
Health.Position = UDim2.new(-0.00666666683, 0, 0.25023365, 0)
Health.Size = UDim2.new(0, 75, 0, 27)
Health.Font = Enum.Font.SourceSansBold
Health.Text = "HEALTH"
Health.TextColor3 = Color3.fromRGB(1, 200, 255)
Health.TextSize = 15.000
Health.TextWrapped = true

HEALTH_STAT.Name = "HEALTH_STAT"
HEALTH_STAT.Parent = Health
HEALTH_STAT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HEALTH_STAT.BackgroundTransparency = 1.000
HEALTH_STAT.Position = UDim2.new(1, 0, 0, 0)
HEALTH_STAT.Size = UDim2.new(0, 75, 0, 27)
HEALTH_STAT.Font = Enum.Font.SourceSansBold
HEALTH_STAT.Text = "0/100"
HEALTH_STAT.TextColor3 = Color3.fromRGB(3, 255, 129)
HEALTH_STAT.TextSize = 14.000
HEALTH_STAT.TextWrapped = true

line.Name = "line"
line.Parent = UI
line.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
line.BorderColor3 = Color3.fromRGB(40, 40, 40)
line.Position = UDim2.new(0.0170000009, 0, 0.75, 0)
line.Size = UDim2.new(0, 146, 0, 0)
line.ZIndex = 0

line_2.Name = "line"
line_2.Parent = UI
line_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
line_2.BorderColor3 = Color3.fromRGB(40, 40, 40)
line_2.Position = UDim2.new(0.0170000009, 0, 0.513000011, 0)
line_2.Size = UDim2.new(0, 146, 0, 0)
line_2.ZIndex = 0

ANTI_DEATH.Name = "ANTI_DEATH"
ANTI_DEATH.Parent = UI
ANTI_DEATH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ANTI_DEATH.BackgroundTransparency = 1.000
ANTI_DEATH.Position = UDim2.new(-0.00666666683, 0, 0.745560765, 0)
ANTI_DEATH.Size = UDim2.new(0, 75, 0, 27)
ANTI_DEATH.Font = Enum.Font.SourceSansBold
ANTI_DEATH.Text = "DEATH?"
ANTI_DEATH.TextColor3 = Color3.fromRGB(1, 200, 255)
ANTI_DEATH.TextSize = 15.000
ANTI_DEATH.TextWrapped = true

ANTIDIE_STAT.Name = "ANTIDIE_STAT"
ANTIDIE_STAT.Parent = ANTI_DEATH
ANTIDIE_STAT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ANTIDIE_STAT.BackgroundTransparency = 1.000
ANTIDIE_STAT.Position = UDim2.new(1, 0, 0, 0)
ANTIDIE_STAT.Size = UDim2.new(0, 75, 0, 27)
ANTIDIE_STAT.Font = Enum.Font.SourceSansBold
ANTIDIE_STAT.Text = "False"
ANTIDIE_STAT.TextColor3 = Color3.fromRGB(255, 0, 4)
ANTIDIE_STAT.TextSize = 14.000
ANTIDIE_STAT.TextWrapped = true

--SCRIPT

function humanoid_check()
	local plr = game:GetService("Players").LocalPlayer
	local leaderboard = plr.leaderstats
	local character = plr.Character

	_G.kills_stat = leaderboard.Kills.Value 
	_G.deaths_stat = leaderboard.Deaths.Value 
	
	_G.humanoid = character:FindFirstChild("Humanoid")
	_G.health = _G.humanoid.Health
	
	if _G.health == nil or _G.health <= 0  then
		_G.avk = plr.PlayerGui.MenuGui.OptionsFrame.PersonalRankingsSelect.AverageDisplay.Score.Text
	end
end

spawn(function()
	while true do
		local placeid = game.PlaceId
		local status = pcall(humanoid_check)

		if _G.autoreset == true then
			ANTIDIE_STAT.Text = 'True' .. ' / ' .. tostring(G.autoreset_count) 
		else
			ANTIDIE_STAT.Text = 'False'
		end
		--print(status)
		if status == true then
			KILL_STAT.Text = 'KILLs: '..tostring(_G.kills_stat)
			DEATH_STAT.Text = 'DEATHs: '..tostring(_G.deaths_stat)
			KDA_STAT.Text = tostring(_G.avk)
			if _G.humanoid then
				if _G.humanoid.Health > 0 and _G.humanoid.Health <= _G.autoreset_count and _G.autoreset == true then
					HEALTH_STAT.Text = 'HAHAH'
					game:GetService("ReplicatedStorage").RemoteTriggers.SpawnIn:FireServer()
					wait(1)
				elseif _G.humanoid.Health > _G.autoreset_count and _G.autoreset == true then
					HEALTH_STAT.Text = tostring(math.ceil(_G.humanoid.Health)) .. ' / ' .. tostring(_G.autoreset_count)
                else
                    HEALTH_STAT.Text = tostring(math.ceil(_G.humanoid.Health)) .. ' / ' .. tostring(_G.humanoid.MaxHealth)
				end

			elseif _G.humanoid == nil then
				HEALTH_STAT.Text = 'nil'
			end
		else
			HEALTH_STAT.Text = 'nil'
			--print('KILL: ' ,_G.kills_stat ,'DEATH: ', _G.deaths_stat)
			--print(_G.humanoid ,'HEALTH:',_G.health)
		end
		wait()
	end
end)
