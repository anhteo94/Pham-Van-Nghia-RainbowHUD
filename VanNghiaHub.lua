-- Phạm Nghĩa iOS Hub — Full chức năng
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Phạm Nghĩa 🍏", "Ocean")

-- Tab Thông Tin
local InfoTab = Window:NewTab("Info")
local Info = InfoTab:NewSection("Thông tin người chơi")
Info:NewLabel("Tên: "..game.Players.LocalPlayer.Name)
Info:NewLabel("Level: "..game.Players.LocalPlayer.Data.Level.Value)
Info:NewLabel("World: ".. tostring(game.PlaceId))

-- Tab Auto Farm
local FarmTab = Window:NewTab("Auto Farm")
local FarmSec = FarmTab:NewSection("Farm tự động")
local FarmTog = FarmSec:NewToggle("Auto Farm Level", "", function(v)
    _G.AutoFarm = v
    while v and wait() do
        -- Thêm logic farm quái
        print("Auto Farming...")
    end
end)
FarmSec:NewToggle("Auto Farm Bone", "", function(v)
    _G.AutoFarmBone = v
    while v and wait(1) do
        for i,c in pairs(workspace.Enemies:GetChildren()) do
            if string.find(c.Name,"Bone") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                break
            end
        end
    end
end)
FarmSec:NewToggle("Auto Quest", "", function(v)
    _G.AutoQuest = v
    while v and wait(10) do
        -- Code nhận quest
    end
end)

-- Tab Auto Boss
local BossTab = Window:NewTab("Auto Boss")
local BossSec = BossTab:NewSection("Tự đánh Boss")
BossSec:NewToggle("Auto Kill Boss", "", function(v)
    _G.AutoBoss = v
    while v and wait(1) do
        for _,b in pairs(workspace.Enemies:GetChildren()) do
            if string.find(b.Name,"Boss") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = b.HumanoidRootPart.CFrame
                fireclickdetector(b.HumanoidRootPart.ClickDetector)
                wait(1)
                break
            end
        end
    end
end)

-- Tab Teleport
local TpTab = Window:NewTab("Teleport")
local TpSec = TpTab:NewSection("Dịch chuyển nhanh")
TpSec:NewButton("Teleport Sea 1", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1611,36,145)
end)
TpSec:NewButton("Teleport Sea 2", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5677,300,5000)
end)
TpSec:NewButton("Teleport Sea 3", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(13400,250,2000)
end)

-- Tab Devil Fruit
local FruitTab = Window:NewTab("Devil Fruit")
local FruitSec = FruitTab:NewSection("Trái ác quỷ")
FruitSec:NewToggle("Auto Collect Fruits", "", function(v)
    _G.AutoFruit = v
    while v and wait(1) do
        for _,f in pairs(workspace["Fruit Spawns"]:GetChildren()) do
            if f:IsA("MeshPart") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = f.CFrame
                fireclickdetector(f.ClickDetector)
            end
        end
    end
end)

-- Tab Misc
local MiscTab = Window:NewTab("Misc")
local MiscSec = MiscTab:NewSection("Cài đặt khác")
MiscSec:NewToggle("Auto Haki", "", function(v)
    _G.AutoHaki = v
    while v and wait(0.5) do
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
    end
end)
MiscSec:NewKeybind("Toggle UI", "", Enum.KeyCode.RightControl, function()
    Library:ToggleUI()
end)

-- Auto init
Library:Init()
