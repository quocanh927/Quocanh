-- Script Get Key - QuocAnhMenu
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Tạo GUI chính
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "QuocAnhMenuGUI"
screenGui.Parent = playerGui

-- Frame chính
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 350, 0, 200)
mainFrame.Position = UDim2.new(0.5, -175, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

-- Tiêu đề
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

-- Nhãn hướng dẫn
local instructionLabel = Instance.new("TextLabel")
instructionLabel.Size = UDim2.new(1, 0, 0, 30)
instructionLabel.Position = UDim2.new(0, 0, 0, 45)
instructionLabel.BackgroundTransparency = 1
instructionLabel.Text = "Nhập key để tiếp tục:"
instructionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
instructionLabel.TextSize = 16
instructionLabel.Font = Enum.Font.SourceSans
instructionLabel.Parent = mainFrame

-- TextBox nhập key
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

-- Nút xác nhận
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

-- Nút lấy key
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

-- Label thông báo
local messageLabel = Instance.new("TextLabel")
messageLabel.Size = UDim2.new(1, 0, 0, 25)
messageLabel.Position = UDim2.new(0, 0, 0, 175)
messageLabel.BackgroundTransparency = 1
messageLabel.Text = ""
messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
messageLabel.TextSize = 16
messageLabel.Font = Enum.Font.SourceSans
messageLabel.Parent = mainFrame

-- Biến lưu key đúng
local CORRECT_KEY = "QuocAnhVip"

-- Hàm xử lý xác nhận
confirmBtn.MouseButton1Click:Connect(function()
	local inputKey = keyBox.Text
	if inputKey == CORRECT_KEY then
		messageLabel.Text = "✅ Key chính xác! Đang tải..."
		messageLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
		task.wait(0.5)
		-- Xóa GUI
		screenGui:Destroy()
		-- Chạy loader
		loadstring(game:HttpGet("https://raw.githubusercontent.com/x2RunE/Immortal/refs/heads/main/BananaCat-Loader.lua"))()
	else
		messageLabel.Text = "❌ Sai key! Vui lòng thử lại."
		messageLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
		keyBox.Text = ""
	end
end)

-- Hàm mở link getkey
getKeyBtn.MouseButton1Click:Connect(function()
	-- Mở link trong trình duyệt (nếu executor hỗ trợ)
	local link = "https://fnote.net/notes/ARn7q5"
	if syn and syn.request then
		-- Một số executor có syn.request, nhưng để mở link thì dùng hàm khác
		-- Thường dùng: setclipboard hoặc mở bằng gui
		setclipboard(link)
		messageLabel.Text = "📋 Đã sao chép link lấy key vào clipboard!"
		messageLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
	else
		-- Phương án dự phòng: hiển thị link
		messageLabel.Text = "🔗 Link: " .. link
		messageLabel.TextColor3 = Color3.fromRGB(100, 200, 255)
	end
end)

-- Cho phép nhấn Enter để xác nhận
keyBox.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		confirmBtn.MouseButton1Click:Fire()
	end
end)

-- Đặt con trỏ vào ô nhập
keyBox:CaptureFocus()
