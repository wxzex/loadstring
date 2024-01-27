local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Placing...TB", "DarkTheme")
local Tab = Window:NewTab("Placing...")
local Section = Tab:NewSection("Placing...")

getgenv().smokesToggle = false
getgenv().pyrotechnicsToggle = false
getgenv().airstrikeToggle = false

Section:NewToggle("ClickSmokes", "ClickSmokes", function(smokesEnabled)
    if smokesEnabled then
        getgenv().smokesToggle = true
        game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
            if smokesToggle then
                local mousePosition = game.Players.LocalPlayer:GetMouse().Hit.p
                game.Workspace.Placed:InvokeServer(Vector3.new(mousePosition.X, mousePosition.Y + 5, mousePosition.Z), "1", "Smokes", "workspace:WaitForChild('Map'):WaitForChild('Grass')")
            end
        end)
    else
        getgenv().smokesToggle = false
    end
end)

Section:NewToggle("ClickPyrotechnics", "ClickPyrotechnics", function(pyrotechnicsEnabled)
    if pyrotechnicsEnabled then
        getgenv().pyrotechnicsToggle = true
        game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
            if pyrotechnicsToggle then
                local mousePosition = game.Players.LocalPlayer:GetMouse().Hit.p
                game.Workspace.Placed:InvokeServer(Vector3.new(mousePosition.X, mousePosition.Y + 5, mousePosition.Z), "1", "Pyrotechnics", "workspace:WaitForChild('Map'):WaitForChild('Grass')")
            end
        end)
    else
        getgenv().pyrotechnicsToggle = false
    end
end)

Section:NewToggle("ClickAirstrike", "ClickAirstrike", function(airstrikeEnabled)
    if airstrikeEnabled then
        getgenv().airstrikeToggle = true
        game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
            if airstrikeToggle then
                local mousePosition = game.Players.LocalPlayer:GetMouse().Hit.p
                game.Workspace.Placed:InvokeServer(Vector3.new(mousePosition.X, mousePosition.Y + 5, mousePosition.Z), "2", "Airstrike", "workspace:WaitForChild('Map'):WaitForChild('Grass')")
            end
        end)
    else
        getgenv().airstrikeToggle = false
    end
end)
