-- Script Get Key - QuocAnhMenu (Full version)
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Tạo GUI
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

-- ====== CẤU HÌNH ======
local CORRECT_KEY = "QuocAnhVIP"   -- 👈 Đổi key tại đây
local KEY_LINK = "https://fnote.net/notes/ARn7q5"  -- 👈 Đổi link lấy key tại đây
-- ======================

-- Xác nhận key
confirmBtn.MouseButton1Click:Connect(function()
	local inputKey = keyBox.Text
	if inputKey == CORRECT_KEY then
		messageLabel.Text = "✅ Key chính xác! Đang tải..."
		messageLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
		task.wait(0.5)
		screenGui:Destroy()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/x2RunE/Immortal/refs/heads/main/BananaCat-Loader.lua"))()
	else
		messageLabel.Text = "❌ Sai key! Vui lòng thử lại."
		messageLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
		keyBox.Text = ""
	end
end)

-- Lấy key (tự động copy link vào bộ nhớ tạm)
getKeyBtn.MouseButton1Click:Connect(function()
	local success = pcall(function()
		setclipboard(KEY_LINK)
	end)
	if success then
		messageLabel.Text = "📋 Đã copy link lấy key vào bộ nhớ tạm!"
		messageLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
	else
		messageLabel.Text = "🔗 Không copy được, link đây: " .. KEY_LINK
		messageLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
	end
end)

-- Nhấn Enter để xác nhận
keyBox.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		confirmBtn.MouseButton1Click:Fire()
	end
end)

keyBox:CaptureFocus()
