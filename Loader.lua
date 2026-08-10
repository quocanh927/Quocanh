-- Script Get Key - Phiên bản lấy key từ web (dễ đổi key liên tục)
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
 
-- === CẤU HÌNH ===
local KEY_URL = "https://pastebin.com/ef5GS59e"   -- 👈 Link chứa key (raw text)
-- Ví dụ: link pastebin raw, hoặc fnote raw, hoặc bất kỳ URL nào trả về chuỗi key
-- =================
 
-- Tạo GUI (giữ nguyên giao diện như cũ)
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "QuocAnhMenuGUI"
screenGui.Parent = playerGui
 
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 350, 0, 200)
mainFrame.Position = UDim2.new(0.5, -175, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui
 
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
titleLabel.BorderSizePixel = 0
titleLabel.Text = "QuocAnhMenu"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 24
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.Parent = mainFrame
 
local instructionLabel = Instance.new("TextLabel")
instructionLabel.Size = UDim2.new(1, 0, 0, 30)
instructionLabel.Position = UDim2.new(0, 0, 0, 45)
instructionLabel.BackgroundTransparency = 1
instructionLabel.Text = "Nhập key để tiếp tục:"
instructionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
instructionLabel.TextSize = 16
instructionLabel.Font = Enum.Font.SourceSans
instructionLabel.Parent = mainFrame
 
local keyBox = Instance.new("TextBox")
keyBox.Size = UDim2.new(0.8, 0, 0, 35)
keyBox.Position = UDim2.new(0.1, 0, 0, 80)
keyBox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
keyBox.BorderSizePixel = 0
keyBox.Text = ""
keyBox.PlaceholderText = "Nhập key..."
keyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
keyBox.TextSize = 18
keyBox.Font = Enum.Font.SourceSans
keyBox.ClearTextOnFocus = false
keyBox.Parent = mainFrame
 
local confirmBtn = Instance.new("TextButton")
confirmBtn.Size = UDim2.new(0.35, 0, 0, 35)
confirmBtn.Position = UDim2.new(0.1, 0, 0, 130)
confirmBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
confirmBtn.BorderSizePixel = 0
confirmBtn.Text = "Xác nhận"
confirmBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
confirmBtn.TextSize = 18
confirmBtn.Font = Enum.Font.SourceSansBold
confirmBtn.Parent = mainFrame
 
local getKeyBtn = Instance.new("TextButton")
getKeyBtn.Size = UDim2.new(0.35, 0, 0, 35)
getKeyBtn.Position = UDim2.new(0.55, 0, 0, 130)
getKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
getKeyBtn.BorderSizePixel = 0
getKeyBtn.Text = "Lấy key"
getKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
getKeyBtn.TextSize = 18
getKeyBtn.Font = Enum.Font.SourceSansBold
getKeyBtn.Parent = mainFrame
 
local messageLabel = Instance.new("TextLabel")
messageLabel.Size = UDim2.new(1, 0, 0, 25)
messageLabel.Position = UDim2.new(0, 0, 0, 175)
messageLabel.BackgroundTransparency = 1
messageLabel.Text = ""
messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
messageLabel.TextSize = 16
messageLabel.Font = Enum.Font.SourceSans
messageLabel.Parent = mainFrame
 
-- Hàm lấy key từ web (với cache 5 phút để tránh gọi quá nhiều)
local cachedKey = nil
local cacheTime = 0
local function fetchKey()
	local now = tick()
	if cachedKey and (now - cacheTime) < 300 then -- 5 phút cache
		return cachedKey
	end
 
	local success, result = pcall(function()
		return game:HttpGet(KEY_URL)
	end)
 
	if success and result and result ~= "" then
		cachedKey = string.gsub(result, "\n", "") -- xóa xuống dòng
		cachedKey = string.gsub(cachedKey, "\r", "")
		cacheTime = now
		return cachedKey
	else
		return nil
	end
end
 
-- Xác nhận key
confirmBtn.MouseButton1Click:Connect(function()
	local inputKey = keyBox.Text
	local correctKey = fetchKey()
 
	if not correctKey then
		messageLabel.Text = "⚠️ Không lấy đượ
