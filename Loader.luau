-- ================================================================= --
--               NEXORA HUB - ULTRA PREMIUM KEY SYSTEM               --
-- ================================================================= --

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- Clean up old GUI
if game:GetService("CoreGui"):FindFirstChild("NexoraKeySystem") then
	game:GetService("CoreGui").NexoraKeySystem:Destroy()
end
if player:WaitForChild("PlayerGui"):FindFirstChild("NexoraKeySystem") then
	player.PlayerGui.NexoraKeySystem:Destroy()
end

-- ================================================================= --
-- 🔥 HÀM KEY CHUẨN (ĐỒNG BỘ VỚI WEB)
-- ================================================================= --

local function generateKeyFromMinutes(minutes)
    -- Tính ngày/tháng/năm TƯƠNG ỨNG với số phút
    local vnTime = minutes * 60 + (7 * 3600)
    local dateTable = os.date("!*t", vnTime)
    local day, month, year = dateTable.day, dateTable.month, dateTable.year

    local val1 = (day * 1793 + month * 827 + year * 47 + minutes) % 65535
    local val2 = (day * 5381 + month * 9839 + year * 113 + minutes * 2) % 65535
    local val3 = (day * 3307 + month * 4019 + year * 257 + minutes * 3) % 65535

    local hex1 = string.format("%04X", val1)
    local hex2 = string.format("%04X", val2)
    local hex3 = string.format("%04X", val3)

    return "QuocAnh-" .. hex1 .. "-" .. hex2 .. "-" .. hex3
end

-- KIỂM TRA KEY TRONG 24H (1440 PHÚT)
local function isKeyValid(inputKey)
    local currentMinutes = math.floor(os.time() / 60)
    for offset = 0, 1440 do
        local minutes = currentMinutes - offset
        local generatedKey = generateKeyFromMinutes(minutes)
        if inputKey == generatedKey then
            return true
        end
    end
    return false
end

-- ================================================================= --
-- CONFIGURATION
-- ================================================================= --

local LINK_KEY = "https://whole-amber-qisjfwof.edgeone.dev/"

local LOADER_LINK = "https://raw.githubusercontent.com/Dayvinksthik/Script/refs/heads/main/Load.lua"

local function OnKeyVerified()
	print("Key verified! Loading main script...")
	loadstring(game:HttpGet(LOADER_LINK))()
end

-- Debug: In key hiện tại
local testKey = generateKeyFromMinutes(math.floor(os.time() / 60))
print("🔑 Key hiện tại (script):", testKey)

-- 1. SCREEN GUI SETUP
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NexoraKeySystem"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true

local success, _ = pcall(function()
	screenGui.Parent = game:GetService("CoreGui")
end)
if not success then
	screenGui.Parent = player:WaitForChild("PlayerGui")
end

-- 2. MAIN CONTAINER
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 380, 0, 160) -- Ban đầu nhỏ hơn để chứa Loading
mainFrame.Position = UDim2.new(0.5, -190, 0.5, -80)
mainFrame.BackgroundColor3 = Color3.fromRGB(18, 14, 22)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 18)
mainCorner.Parent = mainFrame

local mainStroke = Instance.new("UIStroke")
mainStroke.Color = Color3.fromRGB(140, 80, 200)
mainStroke.Thickness = 1.5
mainStroke.Parent = mainFrame

-- 3. HEADER COMPONENTS
local gamepadIcon = Instance.new("ImageLabel")
gamepadIcon.Name = "GamepadIcon"
gamepadIcon.Size = UDim2.new(0, 32, 0, 32)
gamepadIcon.Position = UDim2.new(0, 22, 0, 20)
gamepadIcon.BackgroundTransparency = 1
gamepadIcon.Image = "rbxassetid://10723395215"
gamepadIcon.ImageColor3 = Color3.fromRGB(220, 170, 255)
gamepadIcon.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "Title"
titleLabel.Size = UDim2.new(0, 200, 0, 20)
titleLabel.Position = UDim2.new(0, 64, 0, 18)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Nexora Hub"
titleLabel.TextColor3 = Color3.fromRGB(250, 245, 255)
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = mainFrame

local subTitleLabel = Instance.new("TextLabel")
subTitleLabel.Name = "SubTitle"
subTitleLabel.Size = UDim2.new(0, 200, 0, 14)
subTitleLabel.Position = UDim2.new(0, 64, 0, 40)
subTitleLabel.BackgroundTransparency = 1
subTitleLabel.Text = "Initializing UI System..."
subTitleLabel.TextColor3 = Color3.fromRGB(140, 125, 155)
subTitleLabel.TextSize = 11
subTitleLabel.Font = Enum.Font.Gotham
subTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
subTitleLabel.Parent = mainFrame

-- 4. INITIAL LOADING BAR (MÀN HÌNH LOADING BAN ĐẦU)
local loadingStatus = Instance.new("TextLabel")
loadingStatus.Name = "LoadingStatus"
loadingStatus.Size = UDim2.new(1, -44, 0, 20)
loadingStatus.Position = UDim2.new(0, 22, 0, 75)
loadingStatus.BackgroundTransparency = 1
loadingStatus.Text = "Loading Hub... 0%"
loadingStatus.TextColor3 = Color3.fromRGB(220, 170, 255)
loadingStatus.TextSize = 13
loadingStatus.Font = Enum.Font.GothamMedium
loadingStatus.Parent = mainFrame

local loadingBackground = Instance.new("Frame")
loadingBackground.Name = "LoadingBG"
loadingBackground.Size = UDim2.new(1, -44, 0, 8)
loadingBackground.Position = UDim2.new(0, 22, 0, 105)
loadingBackground.BackgroundColor3 = Color3.fromRGB(32, 25, 40)
loadingBackground.BorderSizePixel = 0
loadingBackground.Parent = mainFrame

local loadingBGCorner = Instance.new("UICorner")
loadingBGCorner.CornerRadius = UDim.new(0, 4)
loadingBGCorner.Parent = loadingBackground

local loadingBar = Instance.new("Frame")
loadingBar.Name = "LoadingBar"
loadingBar.Size = UDim2.new(0, 0, 1, 0)
loadingBar.BackgroundColor3 = Color3.fromRGB(210, 160, 255)
loadingBar.BorderSizePixel = 0
loadingBar.Parent = loadingBackground

local loadingBarCorner = Instance.new("UICorner")
loadingBarCorner.CornerRadius = UDim.new(0, 4)
loadingBarCorner.Parent = loadingBar

-- 5. KEY MENU COMPONENTS (ẨN BAN ĐẦU, HIỆN SAU KHI LOADING XONG)
local keyInput = Instance.new("TextBox")
keyInput.Name = "KeyInput"
keyInput.Size = UDim2.new(1, -44, 0, 44)
keyInput.Position = UDim2.new(0, 22, 0, 72)
keyInput.BackgroundColor3 = Color3.fromRGB(28, 22, 34)
keyInput.PlaceholderText = "Enter Key Here..."
keyInput.PlaceholderColor3 = Color3.fromRGB(110, 95, 125)
keyInput.Text = ""
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.TextSize = 13
keyInput.Font = Enum.Font.GothamMedium
keyInput.ClearTextOnFocus = false
keyInput.Visible = false
keyInput.Parent = mainFrame

local inputCorner = Instance.new("UICorner")
inputCorner.CornerRadius = UDim.new(0, 10)
inputCorner.Parent = keyInput

local inputStroke = Instance.new("UIStroke")
inputStroke.Color = Color3.fromRGB(55, 42, 68)
inputStroke.Thickness = 1
inputStroke.Parent = keyInput

local verifyBtn = Instance.new("TextButton")
verifyBtn.Name = "VerifyBtn"
verifyBtn.Size = UDim2.new(0.5, -27, 0, 42)
verifyBtn.Position = UDim2.new(0, 22, 0, 130)
verifyBtn.BackgroundColor3 = Color3.fromRGB(210, 160, 255)
verifyBtn.Text = "Check Key"
verifyBtn.TextColor3 = Color3.fromRGB(20, 10, 28)
verifyBtn.TextSize = 13
verifyBtn.Font = Enum.Font.GothamBold
verifyBtn.AutoButtonColor = true
verifyBtn.Visible = false
verifyBtn.Parent = mainFrame

local verifyCorner = Instance.new("UICorner")
verifyCorner.CornerRadius = UDim.new(0, 10)
verifyCorner.Parent = verifyBtn

local getKeyBtn = Instance.new("TextButton")
getKeyBtn.Name = "GetKeyBtn"
getKeyBtn.Size = UDim2.new(0.5, -27, 0, 42)
getKeyBtn.Position = UDim2.new(0.5, 5, 0, 130)
getKeyBtn.BackgroundColor3 = Color3.fromRGB(36, 28, 44)
getKeyBtn.Text = "Get Key"
getKeyBtn.TextColor3 = Color3.fromRGB(230, 220, 245)
getKeyBtn.TextSize = 13
getKeyBtn.Font = Enum.Font.GothamMedium
getKeyBtn.AutoButtonColor = true
getKeyBtn.Visible = false
getKeyBtn.Parent = mainFrame

local getKeyCorner = Instance.new("UICorner")
getKeyCorner.CornerRadius = UDim.new(0, 10)
getKeyCorner.Parent = getKeyBtn

local getKeyStroke = Instance.new("UIStroke")
getKeyStroke.Color = Color3.fromRGB(60, 48, 72)
getKeyStroke.Thickness = 1
getKeyStroke.Parent = getKeyBtn

local statusLabel = Instance.new("TextLabel")
statusLabel.Name = "Status"
statusLabel.Size = UDim2.new(1, -44, 0, 20)
statusLabel.Position = UDim2.new(0, 22, 0, 185)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = ""
statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
statusLabel.TextSize = 12
statusLabel.Font = Enum.Font.Gotham
statusLabel.Visible = false
statusLabel.Parent = mainFrame

-- ================================================================= --
--                  LOGIC LOADING 0-100% KHI MỞ SCRIPT               --
-- ================================================================= --

task.spawn(function()
	local totalTime = 6
	local startTime = tick()
	
	-- Chạy thanh Progress bar 6s
	TweenService:Create(loadingBar, TweenInfo.new(totalTime, Enum.EasingStyle.Linear), {Size = UDim2.new(1, 0, 1, 0)}):Play()
	
	while tick() - startTime < totalTime do
		local elapsed = tick() - startTime
		local progress = math.clamp(math.floor((elapsed / totalTime) * 100), 0, 100)
		loadingStatus.Text = "Loading Hub... " .. tostring(progress) .. "%"
		task.wait(0.03)
	end
	loadingStatus.Text = "Loading Hub... 100%"
	task.wait(0.3)
	
	-- Ẩn các phần tử Loading
	loadingStatus:Destroy()
	loadingBackground:Destroy()
	
	-- Mở rộng kích thước Menu
	subTitleLabel.Text = "Key System Verification"
	TweenService:Create(mainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 380, 0, 230),
		Position = UDim2.new(0.5, -190, 0.5, -115)
	}):Play()
	
	task.wait(0.3)
	
	-- Hiển thị Menu Get Key
	keyInput.Visible = true
	verifyBtn.Visible = true
	getKeyBtn.Visible = true
	statusLabel.Visible = true
end)

-- ================================================================= --
--                           XỬ LÝ SỰ KIỆN NÚT                      --
-- ================================================================= --

getKeyBtn.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard(LINK_KEY)
		statusLabel.TextColor3 = Color3.fromRGB(160, 255, 170)
		statusLabel.Text = "Copied key link to clipboard!"
	else
		statusLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
		statusLabel.Text = "Link: " .. LINK_KEY
	end
end)

verifyBtn.MouseButton1Click:Connect(function()
	local userKey = keyInput.Text:gsub("%s+", "")
	
	-- 🔥 KIỂM TRA KEY TRONG 24H
	if isKeyValid(userKey) then
		statusLabel.TextColor3 = Color3.fromRGB(160, 255, 170)
		statusLabel.Text = "Key verified! Launching Hub..."
		
		task.wait(1)
		
		-- Hiệu ứng đóng Menu khi đúng Key
		local closeTween = TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
		TweenService:Create(mainFrame, closeTween, {BackgroundTransparency = 1}):Play()
		TweenService:Create(mainStroke, closeTween, {Transparency = 1}):Play()
		
		task.wait(0.4)
		screenGui:Destroy()
		OnKeyVerified()
	else
		statusLabel.TextColor3 = Color3.fromRGB(255, 90, 100)
		statusLabel.Text = "Invalid key! Please try again."
	end
end)
