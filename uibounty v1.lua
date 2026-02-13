local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

local gui = Instance.new("ScreenGui")
gui.Name = "Quchuy"
gui.Parent = player.PlayerGui

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 320, 0, 210)
frame.Position = UDim2.new(0.05, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(10, 25, 60)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 12)

local gradient = Instance.new("UIGradient", frame)
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0,170,255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0,60,170))
}

local titleBar = Instance.new("Frame", frame)
titleBar.Size = UDim2.new(1,0,0,40)
titleBar.BackgroundColor3 = Color3.fromRGB(0,0,0)
titleBar.BackgroundTransparency = 0.3
titleBar.BorderSizePixel = 0

local title = Instance.new("TextLabel", titleBar)
title.Size = UDim2.new(1,0,1,0)
title.BackgroundTransparency = 1
title.Text = "Huyquoc"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.TextScaled = true
title.Font = Enum.Font.GothamBold

local logo = Instance.new("ImageLabel", frame)
logo.Size = UDim2.new(0, 90, 0, 90)
logo.Position = UDim2.new(0.5, -45, 0.5, -25)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://137788747594454"

spawn(function()
    while true do
        local tween = TweenService:Create(
            gradient,
            TweenInfo.new(2, Enum.EasingStyle.Linear),
            {Rotation = gradient.Rotation + 180}
        )
        tween:Play()
        tween.Completed:Wait()
    end
end)