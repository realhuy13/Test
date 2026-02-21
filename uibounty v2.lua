local player = game.Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.Name = "Huyquoc_Hub"

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 350, 0, 180)
Frame.Position = UDim2.new(0.5, -175, 0.5, -90)
Frame.BackgroundColor3 = Color3.fromRGB(10,10,10)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true

Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 20)

local Stroke = Instance.new("UIStroke", Frame)
Stroke.Thickness = 2
Stroke.Transparency = 0.5

local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1, 0, 0.6, 0)
Title.BackgroundTransparency = 1
Title.Text = "Huyquoc"
Title.TextScaled = true
Title.Font = Enum.Font.GothamBlack

local Sub = Instance.new("TextLabel")
Sub.Parent = Frame
Sub.Size = UDim2.new(1, 0, 0.4, 0)
Sub.Position = UDim2.new(0,0,0.6,0)
Sub.BackgroundTransparency = 1
Sub.Text = "MAIN BOUNTY"
Sub.TextScaled = true
Sub.Font = Enum.Font.GothamBold
Sub.TextColor3 = Color3.fromRGB(180,180,180)

task.spawn(function()
    while true do
        for i = 0,1,0.004 do
            local color = Color3.fromHSV(i,1,1)
            Title.TextColor3 = color
            Stroke.Color = color
            task.wait()
        end
    end
end)