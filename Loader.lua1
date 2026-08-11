-- Script Get Key - QuocAnhMenu (Key từ Fnote)
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "QuocAnhMenu"
gui.Parent = player.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 350, 0, 200)
frame.Position = UDim2.new(0.5, -175, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
title.Text = "⚡ QuocAnhMenu ⚡"
title.TextColor3 = Color3.fromRGB(255, 215, 0)
title.TextSize = 24
title.Font = Enum.Font.SourceSansBold
title.Parent = frame

local box = Instance.new("TextBox")
box.Size = UDim2.new(0.8, 0, 0, 40)
box.Position = UDim2.new(0.1, 0, 0, 55)
box.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
box.BorderSizePixel = 0
box.Text = ""
box.PlaceholderText = "🔑 Nhập key..."
box.TextColor3 = Color3.fromRGB(255, 255, 255)
box.TextSize = 18
box.Font = Enum.Font.SourceSans
box.ClearTextOnFocus = false
box.Parent = frame

local btn = Instance.new("TextButton")
btn.Size = UDim2.new(0.4, 0, 0, 40)
btn.Position = UDim2.new(0.1, 0, 0, 110)
btn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
btn.BorderSizePixel = 0
btn.Text = "✅ VÀO"
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.TextSize = 20
btn.Font = Enum.Font.SourceSansBold
btn.Parent = frame

local getKeyBtn = Instance.new("TextButton")
getKeyBtn.Size = UDim2.new(0.4, 0, 0, 40)
getKeyBtn.Position = UDim2.new(0.5, 0, 0, 110)
getKeyBtn.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
getKeyBtn.BorderSizePixel = 0
getKeyBtn.Text = "📋 LẤY KEY"
getKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
getKeyBtn.TextSize = 18
getKeyBtn.Font = Enum.Font.SourceSansBold
getKeyBtn.Parent = frame

local msg = Instance.new("TextLabel")
msg.Size = UDim2.new(1, 0, 0, 25)
msg.Position = UDim2.new(0, 0, 0, 165)
msg.BackgroundTransparency = 1
msg.Text = ""
msg.TextColor3 = Color3.fromRGB(255, 255, 255)
msg.TextSize = 16
msg.Font = Enum.Font.SourceSans
msg.Parent = frame

-- ===== DANH SÁCH 5 KEY =====
local VALID_KEYS = {
    "Banana Hub",
    "Anhkietlac",
    "QuocAnhdz",
    "QuocAnhVIP",
    "MenuVIP"
}
-- ===========================

-- Hàm kiểm tra key
local function checkKey(input)
    for _, key in ipairs(VALID_KEYS) do
        if input == key then
            return true
        end
    end
    return false
end

-- Xác nhận key
btn.MouseButton1Click:Connect(function()
    local input = box.Text
    
    if checkKey(input) then
        msg.Text = "✅ Key chính xác! Đang tải..."
        msg.TextColor3 = Color3.fromRGB(0, 255, 0)
        btn.Visible = false
        getKeyBtn.Visible = false
        box.Visible = false
        task.wait(0.5)
        gui:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/x2RunE/Immortal/refs/heads/main/BananaCat-Loader.lua"))()
    else
        msg.Text = "❌ Sai key! Vui lòng thử lại."
        msg.TextColor3 = Color3.fromRGB(255, 0, 0)
        box.Text = ""
        box:CaptureFocus()
    end
end)

-- Nút lấy key (copy link)
getKeyBtn.MouseButton1Click:Connect(function()
    local link = "https://fnote.net/notes/0XbLYZ"
    pcall(function()
        setclipboard(link)
    end)
    msg.Text = "📋 Đã copy link lấy key vào bộ nhớ tạm!"
    msg.TextColor3 = Color3.fromRGB(0, 255, 255)
    task.wait(2)
    msg.Text = ""
end)

-- Nhấn Enter để xác nhận
box.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        btn.MouseButton1Click:Fire()
    end
end)

box:CaptureFocus()
