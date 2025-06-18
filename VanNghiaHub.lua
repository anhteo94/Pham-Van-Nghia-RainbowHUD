-- GUI chia tab: Auto Farm / Teleport / Shop
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Phạm Nghĩa iOS Hub", "Ocean")

-- Tab Auto Farm
local AutoFarmTab = Window:NewTab("Auto Farm")
local AutoFarmSection = AutoFarmTab:NewSection("Main Functions")

AutoFarmSection:NewToggle("Auto Farm Level", "Tự động farm level", function(state)
    if state then
        _G.FarmLevel = true
        while _G.FarmLevel and wait() do
            -- Code auto farm level ở đây
            print("Đang farm level...")
        end
    else
        _G.FarmLevel = false
    end
end)

AutoFarmSection:NewToggle("Auto Quest", "Tự nhận nhiệm vụ", function(state)
    _G.AutoQuest = state
    print("Auto Quest:", state)
end)

-- Tab Teleport
local TeleportTab = Window:NewTab("Teleport")
local TeleportSection = TeleportTab:NewSection("TP Địa Điểm")

TeleportSection:NewButton("Teleport to Jungle", "Di chuyển đến đảo Jungle", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(280, 10, 1450)
end)

-- Tab Shop
local ShopTab = Window:NewTab("Shop")
local ShopSection = ShopTab:NewSection("Các cửa hàng")

ShopSection:NewButton("Mua Katana", "Mua kiếm Katana", function()
    -- code mua katana ở đây
end)
