-- Script Get Key - Tự động lấy danh sách key từ Fnote
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "QuocAnhMenu"
gui.Parent = player.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 320, 0, 160)
frame.Position = UDim2.new(0.5, -160, 0.5, -80)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 35)
title.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
title.Text = "⚡ QuocAnhMenu ⚡"
title.TextColor3 = Color3.fromRGB(255, 215, 0)
title.TextSize = 20
title.Font = Enum.Font.SourceSansBold
title.Parent = frame

local box = Instance.new("TextBox")
box.Size = UDim2.new(0.8, 0, 0, 35)
box.Position = UDim2.new(0.1, 0, 0, 45)
box.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
box.BorderSizePixel = 0
box.Text = ""
box.PlaceholderText = "🔑 Nhập key..."
box.TextColor3 = Color3.fromRGB(255, 255, 255)
box.TextSize = 16
box.Font = Enum.Font.SourceSans
box.ClearTextOnFocus = false
box.Parent = frame

local btn = Instance.new("TextButton")
btn.Size = UDim2.new(0.4, 0, 0, 35)
btn.Position = UDim2.new(0.3, 0, 0, 95)
btn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
btn.BorderSizePixel = 0
btn.Text = "✅ VÀO"
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.TextSize = 18
btn.Font = Enum.Font.SourceSansBold
btn.Parent = frame

local msg = Instance.new("TextLabel")
msg.Size = UDim2.new(1, 0, 0, 20)
msg.Position = UDim2.new(0, 0, 0, 140)
msg.BackgroundTransparency = 1
msg.Text = ""
msg.TextColor3 = Color3.fromRGB(255, 255, 255)
msg.TextSize = 14
msg.Font = Enum.Font.SourceSans
msg.Parent = frame

-- ===== LINK FNOTE CHỨA KEY (NHƯ BẠN CUNG CẤP) =====
local KEY_URL = "https://fnote.net/notes/0XbLYZ"
-- ===================================================

-- Hàm lấy danh sách key từ Fnote
local function fetchKeys()
    local success, content = pcall(function()
        return game:HttpGet(KEY_URL)
    end)
    
    if not success or not content then
        return nil
    end
    
    local keys = {}
    for line in string.gmatch(content, "[^\n]+") do
        -- Tìm các dòng có dạng "KeyX là ..."
        local keyMatch = string.match(line, "Key%d+ là%s*(.+)")
        if keyMatch then
            table.insert(keys, keyMatch)
        end
    end
    return keys
end

-- Nạp key khi khởi động
local VALID_KEYS = fetchKeys()

if not VALID_KEYS or #VALID_KEYS == 0 then
    msg.Text = "⚠️ Không tải được key! Kiểm tra link."
    msg.TextColor3 = Color3.fromRGB(255, 200, 0)
end

-- Hàm kiểm tra key
local function checkKey(input)
    if not VALID_KEYS then return false end
    for _, key in ipairs(VALID_KEYS) do
        if input == key then
            return true
        end
    end
    return false
end

-- Xử lý xác nhận
btn.MouseButton1Click:Connect(function()
    local input = box.Text
    
    if checkKey(input) then
        msg.Text = "✅ Key chính xác! Đang tải..."
        msg.TextColor3 = Color3.fromRGB(0, 255, 0)
        btn.Visible = false
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

-- Nhấn Enter để xác nhận
box.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        btn.MouseButton1Click:Fire()
    end
end)

box:CaptureFocus()
