-- Gui to Lua
-- Version: 3.2

-- Instances:

local Multiplier = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local input1 = Instance.new("TextBox")
local ans = Instance.new("TextLabel")

--Properties:

Multiplier.Name = "Multiplier"
Multiplier.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Multiplier.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Multiplier
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.300
Frame.Position = UDim2.new(0.377862632, 0, 0.350241542, 0)
Frame.Size = UDim2.new(0, 213, 0, 123)
Frame.ZIndex = 999999999

input1.Name = "input1"
input1.Parent = Frame
input1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
input1.ClipsDescendants = true
input1.Position = UDim2.new(0.0281690136, 0, 0.0550607294, 0)
input1.Size = UDim2.new(0, 200, 0, 50)
input1.ZIndex = 1000000000
input1.Font = Enum.Font.SourceSans
input1.PlaceholderColor3 = Color3.fromRGB(86, 86, 86)
input1.PlaceholderText = "Insert number..."
input1.Text = ""
input1.TextColor3 = Color3.fromRGB(0, 0, 0)
input1.TextSize = 18.000

ans.Name = "ans"
ans.Parent = Frame
ans.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ans.ClipsDescendants = true
ans.Position = UDim2.new(0.0281690136, 0, 0.525318146, 0)
ans.Size = UDim2.new(0, 200, 0, 50)
ans.ZIndex = 1000000000
ans.Font = Enum.Font.SourceSans
ans.Text = ""
ans.TextColor3 = Color3.fromRGB(0, 0, 0)
ans.TextSize = 18.000
ans.TextWrapped = true

-- Scripts:

local function RONFH_fake_script() -- input1.LocalScript 
	local script = Instance.new('LocalScript', input1)

	script.Parent.FocusLost:Connect(function()
		wait(0.2)
		script.Parent.Parent.ans.Text = (script.Parent.Text * script.Parent.Parent.input1.Text)
	end)
	
end
coroutine.wrap(RONFH_fake_script)()
local function BTBHRB_fake_script() -- Multiplier.Draggable 
	local script = Instance.new('LocalScript', Multiplier)

	frame = script.Parent.Frame
	frame.Draggable = true
	frame.Selectable = true
	frame.Active = true
end
coroutine.wrap(BTBHRB_fake_script)()
local function GHBR_fake_script() -- Multiplier.Toggle 
	local script = Instance.new('LocalScript', Multiplier)

	local guiState = "closed"
	local gui = script.Parent.Frame
	
	game:GetService("UserInputService").InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.RightControl then
			if guiState == "closed" then
				-- Open the GUI
				gui.Visible = true
				guiState = "open"
			else
				-- Close the GUI
				gui.Visible = false
				guiState = "closed"
			end
		end
	end)
	
end
coroutine.wrap(GHBR_fake_script)()
