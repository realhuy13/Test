--// Thay bằng asset id ảnh của bạn sau khi upload lên Roblox
local IMAGE_ID = "rbxassetid://83668107078969"

local player = game.Players.LocalPlayer

-- Tạo GUI
local gui = Instance.new("ScreenGui")
gui.Name = "Test"
gui.Parent = player:WaitForChild("PlayerGui")

-- Khung chính
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
frame.Parent = gui

-- Bo góc
local corner = Instance.new("UICorner", frame)

-- Ảnh
local image = Instance.new("ImageLabel")
image.Size = UDim2.new(0, 80, 0, 80)
image.Position = UDim2.new(0, 10, 0, 10)
image.BackgroundTransparency = 1
image.Image = rbxassetid://83668107078969
image.Parent = frame

-- Tiêu đề
local title = Instance.new("TextLabel")
title.Size = UDim2.new(0, 180, 0, 40)
title.Position = UDim2.new(0, 100, 0, 10)
title.BackgroundTransparency = 1
title.Text = "Menu"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.TextScaled = true
title.Parent = frame

-- Nút 1
local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(0, 260, 0, 40)
button1.Position = UDim2.new(0, 20, 0, 100)
button1.Text = "Bật chức năng"
button1.BackgroundColor3 = Color3.fromRGB(0,170,255)
button1.TextColor3 = Color3.fromRGB(255,255,255)
button1.Parent = frame

button1.MouseButton1Click:Connect(function()
    print("Đã bật!")
end)

-- Nút đóng
local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 260, 0, 30)
close.Position = UDim2.new(0, 20, 0, 150)
close.Text = "Đóng"
close.BackgroundColor3 = Color3.fromRGB(255,70,70)
close.TextColor3 = Color3.fromRGB(255,255,255)
close.Parent = frame

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)