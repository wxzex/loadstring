getgenv().autoplay = true
getgenv().autojoinversus = true
repeat
    task.wait()
until game:IsLoaded()
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(object)
    if object.Name == "ErrorPrompt" and object:FindFirstChild("MessageArea") and object.MessageArea:FindFirstChild("ErrorFrame") then
        game:GetService("TeleportService"):Teleport(45146873)
    end
end)
game:GetService("GuiService").ErrorMessageChanged:Connect(function()
    while task.wait() do game:GetService("TeleportService"):Teleport(3260590327) end
end)
if game.PlaceId == 46955756 then
    workspace.SkipWaitVote:InvokeServer()
    local map1 = workspace.Map1.Type.Value
    local map2 = workspace.Map2.Type.Value
    local map3 = workspace.Map3.Type.Value
    local length_map1 = workspace.MapsInformation[map1].Length.Value
    local length_map2 = workspace.MapsInformation[map2].Length.Value
    local length_map3 = workspace.MapsInformation[map3].Length.Value
    local min_length = math.min(length_map1, length_map2, length_map3)
    local local_map
    if min_length == length_map1 then
        local_map = "Map1"
    elseif min_length == length_map2 then
        local_map = "Map2"
    else
        local_map = "Map3"
    end
    print(local_map)
    local args = {
        [1] = local_map
    }

    workspace:WaitForChild("Vote"):InvokeServer(unpack(args))
    repeat
        task.wait()
    until game.Players.LocalPlayer.PlayerGui.Stats.Ticker.Wave.Text == "Wave 1"
    workspace:WaitForChild("Placed"):InvokeServer(Vector3.new(0, 0, 0), 1, "Patrol", workspace:WaitForChild("Map"):WaitForChild("Grass"))
    while getgenv().autoplay do
        task.wait()
        for _, tower in pairs(workspace.Towers:GetChildren()) do
            workspace:WaitForChild("UpgradeTower"):InvokeServer(tower.Name)
            workspace:WaitForChild("BuyZombie"):InvokeServer("Boss1")
            workspace:WaitForChild("Make"):InvokeServer("Boss1")
        end
    end
end
if game.PlaceId == 45146873 then
    workspace.Winner:InvokeServer()
    while getgenv().autojoinversus do
        task.wait()
        workspace:WaitForChild("Enter"):InvokeServer("1v1", 2)
        workspace:WaitForChild("BeginGame"):InvokeServer("1v1", 2)
    end
end
if #game.Players:GetPlayers() == 1 then
    game:GetService("TeleportService"):Teleport(45146873)
end
