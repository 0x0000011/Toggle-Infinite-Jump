local userInputService = game:GetService("UserInputService")
local humanoid = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")
local enabled = false

local function onEnabled()
	if enabled == true then
		enabled = false

	elseif enabled == false then
		enabled = true
	end
end

local function main()
	if enabled == true then
		humanoid:ChangeState("Jumping")
	end
end

userInputService.InputBegan:Connect(function(key, gameProcessed)
	if key.KeyCode == Enum.KeyCode.RightAlt then
		onEnabled()
	end
end)

userInputService.JumpRequest:Connect(main)