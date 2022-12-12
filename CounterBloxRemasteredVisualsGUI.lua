local Gui = Instance.new("ScreenGui")
local background = Instance.new("Frame")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local background1 = Instance.new("Frame")
local Box1 = Instance.new("Frame")
local BoxLine = Instance.new("Frame")
local BoxTitle = Instance.new("TextLabel")
local EnableButton = Instance.new("TextButton")
local InputArmChamsColorG = Instance.new("TextBox")
local InputTransparencyNumber = Instance.new("TextBox")
local SetArmChamsColor = Instance.new("TextButton")
local SetTransparency = Instance.new("TextButton")
local InputArmChamsColorR = Instance.new("TextBox")
local InputArmChamsColorB = Instance.new("TextBox")
local Box2 = Instance.new("Frame")
local BoxLine2 = Instance.new("Frame")
local BoxTitle2 = Instance.new("TextLabel")
local InputFOVNumber = Instance.new("TextBox")
local ChangeFov = Instance.new("TextButton")
local Note = Instance.new("TextLabel")
local Box3 = Instance.new("Frame")
local BoxLine3 = Instance.new("Frame")
local BoxTitle3 = Instance.new("TextLabel")
local InputBrightnessNumber = Instance.new("TextBox")
local ChangeBrightness = Instance.new("TextButton")
local Box4 = Instance.new("Frame")
local BoxLine4 = Instance.new("Frame")
local BoxTitle4 = Instance.new("TextLabel")
local InputAmbientChangerR = Instance.new("TextBox")
local SetAmbientChanger = Instance.new("TextButton")
local InputAmbientChangerG = Instance.new("TextBox")
local InputAmbientChangerB = Instance.new("TextBox")
local Box5 = Instance.new("Frame")
local BoxLine5 = Instance.new("Frame")
local BoxTitle5 = Instance.new("TextLabel")
local InputClockTime = Instance.new("TextBox")
local SetClockTime = Instance.new("TextButton")
local Box6 = Instance.new("Frame")
local BoxLine6 = Instance.new("Frame")
local BoxTitle6 = Instance.new("TextLabel")
local InputPlantAreaTransparency = Instance.new("TextBox")
local SetTransparency_2 = Instance.new("TextButton")
local Box7 = Instance.new("Frame")
local BoxLine7 = Instance.new("Frame")
local BoxTitle7 = Instance.new("TextLabel")
local EnableSmokeParticles = Instance.new("TextButton")
local DisableSmokeParticles = Instance.new("TextButton")
local Box8 = Instance.new("Frame")
local BoxLine8 = Instance.new("Frame")
local BoxTitle8 = Instance.new("TextLabel")
local EnableSmoke = Instance.new("TextButton")
local DisableSmoke = Instance.new("TextButton")

Gui.Name = "Gui"
Gui.Parent = game.CoreGui

background.Name = "background"
background.Parent = Gui
background.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
background.BorderColor3 = Color3.fromRGB(65, 65, 65)
background.Position = UDim2.new(0.306554347, 0, 0.172839463, 0)
background.Size = UDim2.new(0, 397, 0, 530)
background.Active = true 
background.Draggable = true 

Top.Name = "Top"
Top.Parent = background
Top.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Top.BorderColor3 = Color3.fromRGB(65, 65, 65)
Top.Position = UDim2.new(0.0123197231, 0, 0.0118076541, 0)
Top.Size = UDim2.new(0, 386, 0, 30)

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0960759073, 0, 0, 0)
Title.Size = UDim2.new(0, 306, 0, 30)
Title.Font = Enum.Font.Ubuntu
Title.Text = "Counter Blox: Remastered Visuals By Vultiee"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 15.000
Title.TextWrapped = true

background1.Name = "background1"
background1.Parent = background
background1.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
background1.BorderColor3 = Color3.fromRGB(65, 65, 65)
background1.Position = UDim2.new(0.0123197231, 0, 0.0806429312, 0)
background1.Size = UDim2.new(0, 386, 0, 481)

Box1.Name = "Box1"
Box1.Parent = background1
Box1.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Box1.BorderColor3 = Color3.fromRGB(65, 65, 65)
Box1.Position = UDim2.new(0.0146750528, 0, 0.0124740126, 0)
Box1.Size = UDim2.new(0, 180, 0, 190)

BoxLine.Name = "BoxLine"
BoxLine.Parent = Box1
BoxLine.BackgroundColor3 = Color3.fromRGB(141, 115, 245)
BoxLine.BorderColor3 = Color3.fromRGB(141, 115, 245)
BoxLine.Size = UDim2.new(0, 180, 0, 0)

BoxTitle.Name = "BoxTitle"
BoxTitle.Parent = Box1
BoxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle.BackgroundTransparency = 1.000
BoxTitle.BorderColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle.BorderSizePixel = 0
BoxTitle.Size = UDim2.new(0, 180, 0, 18)
BoxTitle.Font = Enum.Font.Ubuntu
BoxTitle.Text = "Arm Chams"
BoxTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle.TextSize = 14.000

EnableButton.Name = "EnableButton"
EnableButton.Parent = Box1
EnableButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
EnableButton.BorderColor3 = Color3.fromRGB(65, 65, 65)
EnableButton.Position = UDim2.new(0.0333334655, 0, 0.770049274, 0)
EnableButton.Size = UDim2.new(0, 168, 0, 25)
EnableButton.Font = Enum.Font.Ubuntu
EnableButton.Text = "Enable Arm Chams"
EnableButton.TextColor3 = Color3.fromRGB(255, 255, 255)
EnableButton.TextSize = 15.000
EnableButton.MouseButton1Down:connect(function()
	getgenv().Transparency = 0.25
	
	game.RunService.Heartbeat:Connect(function()
		for i,v in pairs(game:GetService("Workspace").Camera.Arms:GetDescendants()) do 
			if v.Name == "Left Arm" then 
				v.Color = getgenv().Color 
				v.Material = getgenv().Material
				v.Transparency = getgenv().Transparency 
			end 
		end 
	end)

	game.RunService.Heartbeat:Connect(function()
		for i,v in pairs(game:GetService("Workspace").Camera.Arms:GetDescendants()) do 
			if v.Name == "Right Arm" then 
				v.Color = getgenv().Color 
				v.Material = getgenv().Material
				v.Transparency = getgenv().Transparency 
			end 
		end 
	end)

	game.RunService.Heartbeat:Connect(function()
		for i,v in pairs(game:GetService("Workspace").Camera.Arms:GetDescendants()) do 
			if v.Name == "Glove" then 
				v.Color = getgenv().Color 
				v.Material = getgenv().Material
				v.Transparency = getgenv().Transparency 
			end 
		end 
	end)
	
	game.RunService.Heartbeat:Connect(function()
		for i,v in pairs(game:GetService("Workspace").Camera.Arms:GetDescendants()) do 
			if v.Name == "Sleeve" then 
				v.Color = getgenv().Color 
				v.Material = getgenv().Material
				v.Transparency = getgenv().Transparency 
			end 
		end 
	end)
end)

InputArmChamsColorG.Name = "InputArmChamsColorG"
InputArmChamsColorG.Parent = Box1
InputArmChamsColorG.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InputArmChamsColorG.BorderColor3 = Color3.fromRGB(65, 65, 65)
InputArmChamsColorG.Position = UDim2.new(0.361111104, 0, 0.0930012763, 0)
InputArmChamsColorG.Size = UDim2.new(0, 50, 0, 25)
InputArmChamsColorG.Font = Enum.Font.Ubuntu
InputArmChamsColorG.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
InputArmChamsColorG.PlaceholderText = "000"
InputArmChamsColorG.Text = ""
InputArmChamsColorG.TextColor3 = Color3.fromRGB(255, 255, 255)
InputArmChamsColorG.TextSize = 14.000
InputArmChamsColorG.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

InputTransparencyNumber.Name = "InputTransparencyNumber"
InputTransparencyNumber.Parent = Box1
InputTransparencyNumber.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InputTransparencyNumber.BorderColor3 = Color3.fromRGB(65, 65, 65)
InputTransparencyNumber.Position = UDim2.new(0.127777815, 0, 0.290355623, 0)
InputTransparencyNumber.Size = UDim2.new(0, 133, 0, 25)
InputTransparencyNumber.Font = Enum.Font.Ubuntu
InputTransparencyNumber.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
InputTransparencyNumber.PlaceholderText = "0 - 1"
InputTransparencyNumber.Text = ""
InputTransparencyNumber.TextColor3 = Color3.fromRGB(255, 255, 255)
InputTransparencyNumber.TextSize = 14.000
InputTransparencyNumber.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

SetArmChamsColor.Name = "SetArmChamsColor"
SetArmChamsColor.Parent = Box1
SetArmChamsColor.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SetArmChamsColor.BorderColor3 = Color3.fromRGB(65, 65, 65)
SetArmChamsColor.Position = UDim2.new(0.0333333015, 0, 0.511875391, 0)
SetArmChamsColor.Size = UDim2.new(0, 168, 0, 25)
SetArmChamsColor.Font = Enum.Font.Ubuntu
SetArmChamsColor.Text = "Set Arm Chams Color"
SetArmChamsColor.TextColor3 = Color3.fromRGB(255, 255, 255)
SetArmChamsColor.TextSize = 15.000
SetArmChamsColor.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
SetArmChamsColor.MouseButton1Down:connect(function()
	getgenv().Color = Color3.fromRGB(InputArmChamsColorR.Text, InputArmChamsColorG.Text, InputArmChamsColorB.Text)
end)

SetTransparency.Name = "Set Transparency"
SetTransparency.Parent = Box1
SetTransparency.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SetTransparency.BorderColor3 = Color3.fromRGB(65, 65, 65)
SetTransparency.Position = UDim2.new(0.033333227, 0, 0.640386403, 0)
SetTransparency.Size = UDim2.new(0, 168, 0, 25)
SetTransparency.Font = Enum.Font.Ubuntu
SetTransparency.Text = "Set Transparency"
SetTransparency.TextColor3 = Color3.fromRGB(255, 255, 255)
SetTransparency.TextSize = 15.000
SetTransparency.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
SetTransparency.MouseButton1Down:connect(function()
	getgenv().Transparency = InputTransparencyNumber.Text
end)

InputArmChamsColorR.Name = "InputArmChamsColorR"
InputArmChamsColorR.Parent = Box1
InputArmChamsColorR.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InputArmChamsColorR.BorderColor3 = Color3.fromRGB(65, 65, 65)
InputArmChamsColorR.Position = UDim2.new(0.0833333284, 0, 0.0930012763, 0)
InputArmChamsColorR.Size = UDim2.new(0, 50, 0, 25)
InputArmChamsColorR.Font = Enum.Font.Ubuntu
InputArmChamsColorR.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
InputArmChamsColorR.PlaceholderText = "000"
InputArmChamsColorR.Text = ""
InputArmChamsColorR.TextColor3 = Color3.fromRGB(255, 255, 255)
InputArmChamsColorR.TextSize = 14.000
InputArmChamsColorR.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

InputArmChamsColorB.Name = "InputArmChamsColorB"
InputArmChamsColorB.Parent = Box1
InputArmChamsColorB.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InputArmChamsColorB.BorderColor3 = Color3.fromRGB(65, 65, 65)
InputArmChamsColorB.Position = UDim2.new(0.638888836, 0, 0.0930012763, 0)
InputArmChamsColorB.Size = UDim2.new(0, 50, 0, 25)
InputArmChamsColorB.Font = Enum.Font.Ubuntu
InputArmChamsColorB.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
InputArmChamsColorB.PlaceholderText = "000"
InputArmChamsColorB.Text = ""
InputArmChamsColorB.TextColor3 = Color3.fromRGB(255, 255, 255)
InputArmChamsColorB.TextSize = 14.000
InputArmChamsColorB.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

Box2.Name = "Box2"
Box2.Parent = background1
Box2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Box2.BorderColor3 = Color3.fromRGB(65, 65, 65)
Box2.Position = UDim2.new(0.0146750528, 0, 0.424116433, 0)
Box2.Size = UDim2.new(0, 180, 0, 92)

BoxLine2.Name = "BoxLine2"
BoxLine2.Parent = Box2
BoxLine2.BackgroundColor3 = Color3.fromRGB(141, 115, 245)
BoxLine2.BorderColor3 = Color3.fromRGB(141, 115, 245)
BoxLine2.Size = UDim2.new(0, 180, 0, 0)

BoxTitle2.Name = "BoxTitle2"
BoxTitle2.Parent = Box2
BoxTitle2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle2.BackgroundTransparency = 1.000
BoxTitle2.BorderColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle2.BorderSizePixel = 0
BoxTitle2.Size = UDim2.new(0, 180, 0, 18)
BoxTitle2.Font = Enum.Font.Ubuntu
BoxTitle2.Text = "FOV Changer"
BoxTitle2.TextColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle2.TextSize = 14.000

InputFOVNumber.Name = "InputFOVNumber"
InputFOVNumber.Parent = Box2
InputFOVNumber.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InputFOVNumber.BorderColor3 = Color3.fromRGB(65, 65, 65)
InputFOVNumber.Position = UDim2.new(0.127777785, 0, 0.192562968, 0)
InputFOVNumber.Size = UDim2.new(0, 133, 0, 24)
InputFOVNumber.Font = Enum.Font.Ubuntu
InputFOVNumber.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
InputFOVNumber.PlaceholderText = "0 - 120"
InputFOVNumber.Text = ""
InputFOVNumber.TextColor3 = Color3.fromRGB(255, 255, 255)
InputFOVNumber.TextSize = 15.000
InputFOVNumber.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

ChangeFov.Name = "ChangeFov"
ChangeFov.Parent = Box2
ChangeFov.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ChangeFov.BorderColor3 = Color3.fromRGB(65, 65, 65)
ChangeFov.Position = UDim2.new(0.0333334208, 0, 0.527648091, 0)
ChangeFov.Size = UDim2.new(0, 168, 0, 25)
ChangeFov.Font = Enum.Font.Ubuntu
ChangeFov.Text = "Change FOV"
ChangeFov.TextColor3 = Color3.fromRGB(255, 255, 255)
ChangeFov.TextSize = 15.000
ChangeFov.MouseButton1Down:connect(function()
	getgenv().number = InputFOVNumber.Text -- max is 120

	game.RunService.Heartbeat:Connect(function()
		game:GetService("Workspace").Camera.FieldOfView = getgenv().number
	end) 
end)

Note.Name = "Note"
Note.Parent = Box2
Note.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Note.BackgroundTransparency = 1.000
Note.BorderColor3 = Color3.fromRGB(255, 255, 255)
Note.BorderSizePixel = 0
Note.Position = UDim2.new(2.38418579e-07, 0, 0.800457656, 0)
Note.Size = UDim2.new(0, 180, 0, 18)
Note.Font = Enum.Font.Ubuntu
Note.Text = "( This Part Of The Script Is Buggy)"
Note.TextColor3 = Color3.fromRGB(255, 255, 255)
Note.TextSize = 10.000

Box3.Name = "Box3"
Box3.Parent = background1
Box3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Box3.BorderColor3 = Color3.fromRGB(65, 65, 65)
Box3.Position = UDim2.new(0.0146750528, 0, 0.632016659, 0)
Box3.Size = UDim2.new(0, 180, 0, 84)

BoxLine3.Name = "BoxLine3"
BoxLine3.Parent = Box3
BoxLine3.BackgroundColor3 = Color3.fromRGB(141, 115, 245)
BoxLine3.BorderColor3 = Color3.fromRGB(141, 115, 245)
BoxLine3.Size = UDim2.new(0, 180, 0, 0)

BoxTitle3.Name = "BoxTitle3"
BoxTitle3.Parent = Box3
BoxTitle3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle3.BackgroundTransparency = 1.000
BoxTitle3.BorderColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle3.BorderSizePixel = 0
BoxTitle3.Size = UDim2.new(0, 180, 0, 18)
BoxTitle3.Font = Enum.Font.Ubuntu
BoxTitle3.Text = "Brightness Changer"
BoxTitle3.TextColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle3.TextSize = 14.000

InputBrightnessNumber.Name = "InputBrightnessNumber"
InputBrightnessNumber.Parent = Box3
InputBrightnessNumber.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InputBrightnessNumber.BorderColor3 = Color3.fromRGB(65, 65, 65)
InputBrightnessNumber.Position = UDim2.new(0.127777785, 0, 0.205502927, 0)
InputBrightnessNumber.Size = UDim2.new(0, 133, 0, 24)
InputBrightnessNumber.Font = Enum.Font.Ubuntu
InputBrightnessNumber.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
InputBrightnessNumber.PlaceholderText = "0 - 100"
InputBrightnessNumber.Text = ""
InputBrightnessNumber.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBrightnessNumber.TextSize = 15.000
InputBrightnessNumber.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

ChangeBrightness.Name = "ChangeBrightness"
ChangeBrightness.Parent = Box3
ChangeBrightness.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ChangeBrightness.BorderColor3 = Color3.fromRGB(65, 65, 65)
ChangeBrightness.Position = UDim2.new(0.0333334208, 0, 0.5633623, 0)
ChangeBrightness.Size = UDim2.new(0, 168, 0, 25)
ChangeBrightness.Font = Enum.Font.Ubuntu
ChangeBrightness.Text = "Change Brightness"
ChangeBrightness.TextColor3 = Color3.fromRGB(255, 255, 255)
ChangeBrightness.TextSize = 15.000
ChangeBrightness.MouseButton1Down:connect(function()
	game:GetService("Lighting").Brightness = InputBrightnessNumber.Text

end)

Box4.Name = "Box4"
Box4.Parent = background1
Box4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Box4.BorderColor3 = Color3.fromRGB(65, 65, 65)
Box4.Position = UDim2.new(0.522561669, 0, 0.0124740126, 0)
Box4.Size = UDim2.new(0, 180, 0, 81)

BoxLine4.Name = "BoxLine4"
BoxLine4.Parent = Box4
BoxLine4.BackgroundColor3 = Color3.fromRGB(141, 115, 245)
BoxLine4.BorderColor3 = Color3.fromRGB(141, 115, 245)
BoxLine4.Size = UDim2.new(0, 180, 0, 0)

BoxTitle4.Name = "BoxTitle4"
BoxTitle4.Parent = Box4
BoxTitle4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle4.BackgroundTransparency = 1.000
BoxTitle4.BorderColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle4.BorderSizePixel = 0
BoxTitle4.Size = UDim2.new(0, 180, 0, 18)
BoxTitle4.Font = Enum.Font.Ubuntu
BoxTitle4.Text = "Ambient Changer"
BoxTitle4.TextColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle4.TextSize = 13.000

InputAmbientChangerR.Name = "InputAmbientChangerR"
InputAmbientChangerR.Parent = Box4
InputAmbientChangerR.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InputAmbientChangerR.BorderColor3 = Color3.fromRGB(65, 65, 65)
InputAmbientChangerR.Position = UDim2.new(0.0722222254, 0, 0.216457978, 0)
InputAmbientChangerR.Size = UDim2.new(0, 50, 0, 25)
InputAmbientChangerR.Font = Enum.Font.Ubuntu
InputAmbientChangerR.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
InputAmbientChangerR.PlaceholderText = "000"
InputAmbientChangerR.Text = ""
InputAmbientChangerR.TextColor3 = Color3.fromRGB(255, 255, 255)
InputAmbientChangerR.TextSize = 15.000
InputAmbientChangerR.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

SetAmbientChanger.Name = "SetAmbientChanger"
SetAmbientChanger.Parent = Box4
SetAmbientChanger.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SetAmbientChanger.BorderColor3 = Color3.fromRGB(65, 65, 65)
SetAmbientChanger.Position = UDim2.new(0.0333333015, 0, 0.599659681, 0)
SetAmbientChanger.Size = UDim2.new(0, 168, 0, 25)
SetAmbientChanger.Font = Enum.Font.Ubuntu
SetAmbientChanger.Text = "Set Ambient"
SetAmbientChanger.TextColor3 = Color3.fromRGB(255, 255, 255)
SetAmbientChanger.TextSize = 15.000
SetAmbientChanger.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
SetAmbientChanger.MouseButton1Down:connect(function()
	game:GetService("Lighting").Ambient = Color3.fromRGB(InputAmbientChangerR.Text, InputAmbientChangerG.Text, InputAmbientChangerB.Text)
	wait(0.01)
	game:GetService("Lighting").ColorShift_Top = Color3.fromRGB(InputAmbientChangerR.Text, InputAmbientChangerG.Text, InputAmbientChangerB.Text)
	wait(0.01)
	game:GetService("Lighting").ColorShift_Bottom = Color3.fromRGB(InputAmbientChangerR.Text, InputAmbientChangerG.Text, InputAmbientChangerB.Text)
	wait(0.01)
	game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(InputAmbientChangerR.Text, InputAmbientChangerG.Text, InputAmbientChangerB.Text)  
end)

InputAmbientChangerG.Name = "InputAmbientChangerG"
InputAmbientChangerG.Parent = Box4
InputAmbientChangerG.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InputAmbientChangerG.BorderColor3 = Color3.fromRGB(65, 65, 65)
InputAmbientChangerG.Position = UDim2.new(0.361111134, 0, 0.216457978, 0)
InputAmbientChangerG.Size = UDim2.new(0, 50, 0, 25)
InputAmbientChangerG.Font = Enum.Font.Ubuntu
InputAmbientChangerG.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
InputAmbientChangerG.PlaceholderText = "000"
InputAmbientChangerG.Text = ""
InputAmbientChangerG.TextColor3 = Color3.fromRGB(255, 255, 255)
InputAmbientChangerG.TextSize = 15.000
InputAmbientChangerG.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

InputAmbientChangerB.Name = "InputAmbientChangerB"
InputAmbientChangerB.Parent = Box4
InputAmbientChangerB.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InputAmbientChangerB.BorderColor3 = Color3.fromRGB(65, 65, 65)
InputAmbientChangerB.Position = UDim2.new(0.638888896, 0, 0.216457978, 0)
InputAmbientChangerB.Size = UDim2.new(0, 50, 0, 25)
InputAmbientChangerB.Font = Enum.Font.Ubuntu
InputAmbientChangerB.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
InputAmbientChangerB.PlaceholderText = "000"
InputAmbientChangerB.Text = ""
InputAmbientChangerB.TextColor3 = Color3.fromRGB(255, 255, 255)
InputAmbientChangerB.TextSize = 15.000
InputAmbientChangerB.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

Box5.Name = "Box5"
Box5.Parent = background1
Box5.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Box5.BorderColor3 = Color3.fromRGB(65, 65, 65)
Box5.Position = UDim2.new(0.522561669, 0, 0.199584201, 0)
Box5.Size = UDim2.new(0, 180, 0, 81)

BoxLine5.Name = "BoxLine5"
BoxLine5.Parent = Box5
BoxLine5.BackgroundColor3 = Color3.fromRGB(141, 115, 245)
BoxLine5.BorderColor3 = Color3.fromRGB(141, 115, 245)
BoxLine5.Size = UDim2.new(0, 180, 0, 0)

BoxTitle5.Name = "BoxTitle5"
BoxTitle5.Parent = Box5
BoxTitle5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle5.BackgroundTransparency = 1.000
BoxTitle5.BorderColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle5.BorderSizePixel = 0
BoxTitle5.Size = UDim2.new(0, 180, 0, 18)
BoxTitle5.Font = Enum.Font.Ubuntu
BoxTitle5.Text = "Set Clock Time"
BoxTitle5.TextColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle5.TextSize = 15.000

InputClockTime.Name = "InputClockTime"
InputClockTime.Parent = Box5
InputClockTime.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InputClockTime.BorderColor3 = Color3.fromRGB(65, 65, 65)
InputClockTime.Position = UDim2.new(0.127777815, 0, 0.216458037, 0)
InputClockTime.Size = UDim2.new(0, 133, 0, 25)
InputClockTime.Font = Enum.Font.Ubuntu
InputClockTime.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
InputClockTime.PlaceholderText = "0 - 24"
InputClockTime.Text = ""
InputClockTime.TextColor3 = Color3.fromRGB(255, 255, 255)
InputClockTime.TextSize = 15.000
InputClockTime.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

SetClockTime.Name = "Set Clock Time"
SetClockTime.Parent = Box5
SetClockTime.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SetClockTime.BorderColor3 = Color3.fromRGB(65, 65, 65)
SetClockTime.Position = UDim2.new(0.0333333015, 0, 0.599659681, 0)
SetClockTime.Size = UDim2.new(0, 168, 0, 25)
SetClockTime.Font = Enum.Font.Ubuntu
SetClockTime.Text = "Set Clock Time"
SetClockTime.TextColor3 = Color3.fromRGB(255, 255, 255)
SetClockTime.TextSize = 15.000
SetClockTime.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
SetClockTime.MouseButton1Down:connect(function()
	game:GetService("Lighting").ClockTime = InputClockTime.Text
end)

Box6.Name = "Box6"
Box6.Parent = background1
Box6.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Box6.BorderColor3 = Color3.fromRGB(65, 65, 65)
Box6.Position = UDim2.new(0.519916177, 0, 0.397089422, 0)
Box6.Size = UDim2.new(0, 180, 0, 84)

BoxLine6.Name = "BoxLine6"
BoxLine6.Parent = Box6
BoxLine6.BackgroundColor3 = Color3.fromRGB(141, 115, 245)
BoxLine6.BorderColor3 = Color3.fromRGB(141, 115, 245)
BoxLine6.Size = UDim2.new(0, 180, 0, 0)

BoxTitle6.Name = "BoxTitle6"
BoxTitle6.Parent = Box6
BoxTitle6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle6.BackgroundTransparency = 1.000
BoxTitle6.BorderColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle6.BorderSizePixel = 0
BoxTitle6.Size = UDim2.new(0, 180, 0, 18)
BoxTitle6.Font = Enum.Font.Ubuntu
BoxTitle6.Text = "Show C4 Plant Area"
BoxTitle6.TextColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle6.TextSize = 14.000

InputPlantAreaTransparency.Name = "InputPlantAreaTransparency"
InputPlantAreaTransparency.Parent = Box6
InputPlantAreaTransparency.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InputPlantAreaTransparency.BorderColor3 = Color3.fromRGB(65, 65, 65)
InputPlantAreaTransparency.Position = UDim2.new(0.127777815, 0, 0.212048858, 0)
InputPlantAreaTransparency.Size = UDim2.new(0, 133, 0, 25)
InputPlantAreaTransparency.Font = Enum.Font.Ubuntu
InputPlantAreaTransparency.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
InputPlantAreaTransparency.PlaceholderText = "0 - 1"
InputPlantAreaTransparency.Text = ""
InputPlantAreaTransparency.TextColor3 = Color3.fromRGB(255, 255, 255)
InputPlantAreaTransparency.TextSize = 15.000
InputPlantAreaTransparency.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

SetTransparency_2.Name = "Set Transparency"
SetTransparency_2.Parent = Box6
SetTransparency_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SetTransparency_2.BorderColor3 = Color3.fromRGB(65, 65, 65)
SetTransparency_2.Position = UDim2.new(0.033333227, 0, 0.611940265, 0)
SetTransparency_2.Size = UDim2.new(0, 168, 0, 25)
SetTransparency_2.Font = Enum.Font.Ubuntu
SetTransparency_2.Text = "Set Plant Area Transparency"
SetTransparency_2.TextColor3 = Color3.fromRGB(255, 255, 255)
SetTransparency_2.TextSize = 13.000
SetTransparency_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
SetTransparency_2.MouseButton1Down:connect(function()
	getgenv().Transparency = InputPlantAreaTransparency.Text
	getgenv().Material = Enum.Material.ForceField
	
	game.RunService.Heartbeat:Connect(function()
		for i,v in pairs(game:GetService("Workspace").Map:GetDescendants()) do 
			if v.Name == "C4Plant" or v.Name == "C4Plant2" then 
				v.Transparency = getgenv().Transparency
				v.Material = getgenv().Material
			end 
		end 
	end) 
end)

Box7.Name = "Box7"
Box7.Parent = background1
Box7.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Box7.BorderColor3 = Color3.fromRGB(65, 65, 65)
Box7.Position = UDim2.new(0.522561669, 0, 0.590436578, 0)
Box7.Size = UDim2.new(0, 180, 0, 84)

BoxLine7.Name = "BoxLine7"
BoxLine7.Parent = Box7
BoxLine7.BackgroundColor3 = Color3.fromRGB(141, 115, 245)
BoxLine7.BorderColor3 = Color3.fromRGB(141, 115, 245)
BoxLine7.Size = UDim2.new(0, 180, 0, 0)

BoxTitle7.Name = "BoxTitle7"
BoxTitle7.Parent = Box7
BoxTitle7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle7.BackgroundTransparency = 1.000
BoxTitle7.BorderColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle7.BorderSizePixel = 0
BoxTitle7.Size = UDim2.new(0, 180, 0, 18)
BoxTitle7.Font = Enum.Font.Ubuntu
BoxTitle7.Text = "Remove Smoke Particles"
BoxTitle7.TextColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle7.TextSize = 14.000

EnableSmokeParticles.Name = "Enable Smoke Particles"
EnableSmokeParticles.Parent = Box7
EnableSmokeParticles.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
EnableSmokeParticles.BorderColor3 = Color3.fromRGB(65, 65, 65)
EnableSmokeParticles.Position = UDim2.new(0.033333227, 0, 0.230987877, 0)
EnableSmokeParticles.Size = UDim2.new(0, 168, 0, 25)
EnableSmokeParticles.Font = Enum.Font.Ubuntu
EnableSmokeParticles.Text = "Enable Smoke Particles"
EnableSmokeParticles.TextColor3 = Color3.fromRGB(255, 255, 255)
EnableSmokeParticles.TextSize = 13.000
EnableSmokeParticles.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
EnableSmokeParticles.MouseButton1Down:connect(function()
	_G.RemoveSmokeGrenParticle = false 
	while _G.RemoveSmokeGrenParticle do
		game:GetService("Workspace")["Ray_Ignore"].Smokes.Smoke.ParticleEmitter:Destroy()
		wait()
	end 
end)

DisableSmokeParticles.Name = "Disable Smoke Particles"
DisableSmokeParticles.Parent = Box7
DisableSmokeParticles.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
DisableSmokeParticles.BorderColor3 = Color3.fromRGB(65, 65, 65)
DisableSmokeParticles.Position = UDim2.new(0.033333227, 0, 0.576225996, 0)
DisableSmokeParticles.Size = UDim2.new(0, 168, 0, 25)
DisableSmokeParticles.Font = Enum.Font.Ubuntu
DisableSmokeParticles.Text = "Disable Smoke Particles"
DisableSmokeParticles.TextColor3 = Color3.fromRGB(255, 255, 255)
DisableSmokeParticles.TextSize = 13.000
DisableSmokeParticles.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
DisableSmokeParticles.MouseButton1Down:connect(function()
	_G.RemoveSmokeGrenParticle = true 
	while _G.RemoveSmokeGrenParticle do
		game:GetService("Workspace")["Ray_Ignore"].Smokes.Smoke.ParticleEmitter:Destroy()
		wait()
	end 
end)

Box8.Name = "Box8"
Box8.Parent = background1
Box8.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Box8.BorderColor3 = Color3.fromRGB(65, 65, 65)
Box8.Position = UDim2.new(0.522561669, 0, 0.781704783, 0)
Box8.Size = UDim2.new(0, 180, 0, 84)

BoxLine8.Name = "BoxLine8"
BoxLine8.Parent = Box8
BoxLine8.BackgroundColor3 = Color3.fromRGB(141, 115, 245)
BoxLine8.BorderColor3 = Color3.fromRGB(141, 115, 245)
BoxLine8.Size = UDim2.new(0, 180, 0, 0)

BoxTitle8.Name = "BoxTitle8"
BoxTitle8.Parent = Box8
BoxTitle8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle8.BackgroundTransparency = 1.000
BoxTitle8.BorderColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle8.BorderSizePixel = 0
BoxTitle8.Size = UDim2.new(0, 180, 0, 18)
BoxTitle8.Font = Enum.Font.Ubuntu
BoxTitle8.Text = "Remove Smoke"
BoxTitle8.TextColor3 = Color3.fromRGB(255, 255, 255)
BoxTitle8.TextSize = 14.000

EnableSmoke.Name = "Enable Smoke "
EnableSmoke.Parent = Box8
EnableSmoke.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
EnableSmoke.BorderColor3 = Color3.fromRGB(65, 65, 65)
EnableSmoke.Position = UDim2.new(0.033333227, 0, 0.230987877, 0)
EnableSmoke.Size = UDim2.new(0, 168, 0, 25)
EnableSmoke.Font = Enum.Font.Ubuntu
EnableSmoke.Text = "Enable Smoke "
EnableSmoke.TextColor3 = Color3.fromRGB(255, 255, 255)
EnableSmoke.TextSize = 13.000
EnableSmoke.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
EnableSmoke.MouseButton1Down:connect(function()
	_G.RemoveSmoke = false 
	while _G.RemoveSmoke do
		game:GetService("Workspace")["Ray_Ignore"].Smokes.Smoke:Destroy()
		wait()
	end 
end)

DisableSmoke.Name = "Disable Smoke "
DisableSmoke.Parent = Box8
DisableSmoke.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
DisableSmoke.BorderColor3 = Color3.fromRGB(65, 65, 65)
DisableSmoke.Position = UDim2.new(0.033333227, 0, 0.576225996, 0)
DisableSmoke.Size = UDim2.new(0, 168, 0, 25)
DisableSmoke.Font = Enum.Font.Ubuntu
DisableSmoke.Text = "Disable Smoke "
DisableSmoke.TextColor3 = Color3.fromRGB(255, 255, 255)
DisableSmoke.TextSize = 13.000
DisableSmoke.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
DisableSmoke.MouseButton1Down:connect(function()
	_G.RemoveSmoke = true 
	while _G.RemoveSmoke do
		game:GetService("Workspace")["Ray_Ignore"].Smokes.Smoke:Destroy()
		wait()
	end 
end)

	local script = Instance.new('LocalScript', Gui)

	local FrameObject = script.Parent.background 
	local Open = false 
	local UserInputService = game:GetService("UserInputService") 
	
	UserInputService.InputBegan:Connect(function(Input, gameprocess) 
		if not gameprocess then 
			if Input.KeyCode == Enum.KeyCode.RightControl then 
				if Open then 
					Open = false 
					script.Parent.background.Visible = false 
				else 
					Open = true 
					script.Parent.background.Visible = true 
				end 
			end 
		end 
	end) 
