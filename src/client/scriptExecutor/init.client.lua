for _, i in pairs(workspace:GetChildren()) do
    
end

local part = Instance.new("Part", workspace)
part.Position = workspace["123him12"].HumanoidRootPart.Position + Vector3.new(0,15,0)
part.Anchored = true
part.CFrame = CFrame.new(part.Position, part.Position+Vector3.new(0,-1,0))

local light = Instance.new("SurfaceLight")
light.Parent = part
light.Brightness = 50

game:GetService("RunService"):Connect(function()
    light.Color = Color3.new(math.random(1,255),math.random(1,255),math.random(1,255))
end)

workspace.Baseplate.Size = Vector3.new(300,0,300)