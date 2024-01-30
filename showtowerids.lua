local workspace = game:GetService("Workspace")
local towers = workspace.Towers
local function addBillboard(tower)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Size = UDim2.new(0, 50, 0, 20)
    billboardGui.Adornee = tower
    billboardGui.StudsOffset = Vector3.new(0, 3, 0)
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = tower.Name
    textLabel.TextScaled = true
    textLabel.Parent = billboardGui
    billboardGui.Parent = tower
end
for _, tower in ipairs(towers:GetChildren()) do
    addBillboard(tower)
end
towers.ChildAdded:Connect(addBillboard)
