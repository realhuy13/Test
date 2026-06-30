-- Fix Lag / FPS Boost
local Lighting = game:GetService("Lighting")

pcall(function()
    Lighting.GlobalShadows = false
    Lighting.FogEnd = 9e9
    Lighting.Brightness = 0
end)

for _, v in pairs(game:GetDescendants()) do
    pcall(function()
        if v:IsA("BasePart") then
            v.Material = Enum.Material.Plastic
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") then
            v:Destroy()
        elseif v:IsA("ParticleEmitter")
            or v:IsA("Trail")
            or v:IsA("Smoke")
            or v:IsA("Fire")
            or v:IsA("Sparkles") then
            v.Enabled = false
        end
    end)
end

settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

print("Fix Lag Loaded!")