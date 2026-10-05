-- ================================================================= --
--               PHẦN 1: KHỞI TẠO CẤU HÌNH & HÀM QUẢN LÝ             --
-- ================================================================= --

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer

-- CLEAN UP OLD GUI
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

-- Debug
print("🔑 Key hiện tại (script):", generateKeyFromMinutes(math.floor(os.time() / 60)))

-- CONFIGURATION
local LINK_KEY = "https://link4m.net/Shnp0v"  -- 👈 ĐỔI LINK GET KEY CỦA BẠN
local SAVE_FILE_NAME = "NexoraKeySave.json"

local function OnKeyVerified()
	print("Key verified! Loading main script...")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Dayvinksthik/Script/refs/heads/main/Load.lua"))()
end

-- HÀM QUẢN LÝ LƯU / XÓA KEY (24H)
local function SaveKeyData(key)
	if writefile then
		local data = {
			SavedKey = key,
			SaveTime = os.time()
		}
		pcall(function()
			writefile(SAVE_FILE_NAME, HttpService:JSONEncode(data))
		end)
	end
end

local function LoadKeyData()
	if isfile and readfile and isfile(SAVE_FILE_NAME) then
		local success, result = pcall(function()
			return HttpService:JSONDecode(readfile(SAVE_FILE_NAME))
		end)
		
		if success and result and result.SavedKey and result.SaveTime then
			local currentTime = os.time()
			local timePassed = currentTime - result.SaveTime
			
			-- 24 giờ = 86400 giây
			if timePassed < 86400 then
				return result.SavedKey, true -- Còn hạn 24h
			else
				delfile(SAVE_FILE_NAME) -- Quá 24h -> Tự động xóa
			end
		end
	end
	return "", false
end

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
mainFrame.Size = UDim2.new(0, 320, 0, 150)
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -75)
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 12, 18)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = false
mainFrame.ClipsDescendants = true
mainFrame.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 16)
mainCorner.Parent = mainFrame

local mainStroke = Instance.new("UIStroke")
mainStroke.Color = Color3.fromRGB(160, 90, 255)
mainStroke.Thickness = 1.5
mainStroke.Parent = mainFrame

local glowTask
local function StartDefaultGlow()
	if glowTask then task.cancel(glowTask) end
	glowTask = task.spawn(function()
		while mainFrame and mainFrame.Parent do
			TweenService:Create(mainStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
				Color = Color3.fromRGB(220, 120, 255)
			}):Play()
			task.wait(1.5)
			TweenService:Create(mainStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
				Color = Color3.fromRGB(110, 50, 180)
			}):Play()
			task.wait(1.5)
		end
	end)
end
StartDefaultGlow()

-- 3. HEADER SECTION
local gamepadIcon = Instance.new("ImageLabel")
gamepadIcon.Name = "GamepadIcon"
gamepadIcon.Size = UDim2.new(0, 22, 0, 22)
gamepadIcon.Position = UDim2.new(0, 16, 0, 14)
gamepadIcon.BackgroundTransparency = 1
gamepadIcon.Image = "rbxassetid://10723395215"
gamepadIcon.ImageColor3 = Color3.fromRGB(200, 150, 255)
gamepadIcon.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "Title"
titleLabel.Size = UDim2.new(0, 180, 0, 16)
titleLabel.Position = UDim2.new(0, 46, 0, 11)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Nexora Hub"
titleLabel.TextColor3 = Color3.fromRGB(245, 240, 255)
titleLabel.TextSize = 14
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = mainFrame

local subTitleLabel = Instance.new("TextLabel")
subTitleLabel.Name = "SubTitle"
subTitleLabel.Size = UDim2.new(0, 180, 0, 12)
subTitleLabel.Position = UDim2.new(0, 46, 0, 28)
subTitleLabel.BackgroundTransparency = 1
subTitleLabel.Text = "System Initializing..."
subTitleLabel.TextColor3 = Color3.fromRGB(130, 115, 145)
subTitleLabel.TextSize = 10
subTitleLabel.Font = Enum.Font.Gotham
subTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
subTitleLabel.Parent = mainFrame

-- NÚT X (THU NHỎ)
local closeBtn = Instance.new("TextButton")
closeBtn.Name = "CloseBtn"
closeBtn.Size = UDim2.new(0, 22, 0, 22)
closeBtn.Position = UDim2.new(1, -34, 0, 12)
closeBtn.BackgroundColor3 = Color3.fromRGB(28, 22, 35)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.fromRGB(200, 175, 225)
closeBtn.TextSize = 11
closeBtn.Font = Enum.Font.GothamBold
closeBtn.AutoButtonColor = true
closeBtn.Visible = false
closeBtn.Parent = mainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(1, 0)
closeCorner.Parent = closeBtn

local closeStroke = Instance.new("UIStroke")
closeStroke.Color = Color3.fromRGB(60, 45, 75)
closeStroke.Thickness = 1
closeStroke.Parent = closeBtn

-- 4. LOADING SECTION
local loadingFrame = Instance.new("Frame")
loadingFrame.Name = "LoadingFrame"
loadingFrame.Size = UDim2.new(1, -32, 0, 75)
loadingFrame.Position = UDim2.new(0, 16, 0, 55)
loadingFrame.BackgroundTransparency = 1
loadingFrame.Parent = mainFrame

local statusText = Instance.new("TextLabel")
statusText.Name = "StatusText"
statusText.Size = UDim2.new(1, 0, 0, 14)
statusText.Position = UDim2.new(0, 0, 0, 0)
statusText.BackgroundTransparency = 1
statusText.Text = "Connecting..."
statusText.TextColor3 = Color3.fromRGB(160, 145, 180)
statusText.TextSize = 11
statusText.Font = Enum.Font.Gotham
statusText.TextXAlignment = Enum.TextXAlignment.Left
statusText.Parent = loadingFrame

local gearIcon = Instance.new("ImageLabel")
gearIcon.Name = "GearIcon"
gearIcon.Size = UDim2.new(0, 16, 0, 16)
gearIcon.Position = UDim2.new(0, 0, 0, 20)
gearIcon.BackgroundTransparency = 1
gearIcon.Image = "rbxassetid://6031280882"
gearIcon.ImageColor3 = Color3.fromRGB(200, 150, 255)
gearIcon.Parent = loadingFrame

local percentLabel = Instance.new("TextLabel")
percentLabel.Name = "PercentLabel"
percentLabel.Size = UDim2.new(0, 60, 0, 16)
percentLabel.Position = UDim2.new(0, 22, 0, 20)
percentLabel.BackgroundTransparency = 1
percentLabel.Text = "0%"
percentLabel.TextColor3 = Color3.fromRGB(245, 240, 255)
percentLabel.TextSize = 12
percentLabel.Font = Enum.Font.GothamBold
percentLabel.TextXAlignment = Enum.TextXAlignment.Left
percentLabel.Parent = loadingFrame

local loadingBackground = Instance.new("Frame")
loadingBackground.Name = "LoadingBG"
loadingBackground.Size = UDim2.new(1, 0, 0, 6)
loadingBackground.Position = UDim2.new(0, 0, 0, 44)
loadingBackground.BackgroundColor3 = Color3.fromRGB(25, 20, 32)
loadingBackground.BorderSizePixel = 0
loadingBackground.Parent = loadingFrame

local loadingBGCorner = Instance.new("UICorner")
loadingBGCorner.CornerRadius = UDim.new(0, 3)
loadingBGCorner.Parent = loadingBackground

local loadingBar = Instance.new("Frame")
loadingBar.Name = "LoadingBar"
loadingBar.Size = UDim2.new(0, 0, 1, 0)
loadingBar.BackgroundColor3 = Color3.fromRGB(190, 135, 255)
loadingBar.BorderSizePixel = 0
loadingBar.Parent = loadingBackground

local loadingBarCorner = Instance.new("UICorner")
loadingBarCorner.CornerRadius = UDim.new(0, 3)
loadingBarCorner.Parent = loadingBar
-- ================================================================= --
--               PHẦN 2: THÀNH PHẦN KHU VỰC KEY & LOGIC             --
-- ================================================================= --

-- 5. KEY MENU COMPONENTS
local keyInput = Instance.new("TextBox")
keyInput.Name = "KeyInput"
keyInput.Size = UDim2.new(1, -32, 0, 34)
keyInput.Position = UDim2.new(0, 16, 0, 48)
keyInput.BackgroundColor3 = Color3.fromRGB(22, 17, 28)
keyInput.PlaceholderText = "Enter Key Here..."
keyInput.PlaceholderColor3 = Color3.fromRGB(100, 85, 115)
keyInput.Text = ""
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.TextSize = 11
keyInput.Font = Enum.Font.GothamMedium
keyInput.ClearTextOnFocus = false
keyInput.Visible = false
keyInput.Parent = mainFrame

local inputCorner = Instance.new("UICorner")
inputCorner.CornerRadius = UDim.new(0, 8)
inputCorner.Parent = keyInput

local inputStroke = Instance.new("UIStroke")
inputStroke.Color = Color3.fromRGB(45, 34, 58)
inputStroke.Thickness = 1
inputStroke.Parent = keyInput

-- Ô CHECKBOX TÍCH CHỌN LƯU KEY
local saveKeyFrame = Instance.new("Frame")
saveKeyFrame.Name = "SaveKeyFrame"
saveKeyFrame.Size = UDim2.new(1, -32, 0, 18)
saveKeyFrame.Position = UDim2.new(0, 16, 0, 88)
saveKeyFrame.BackgroundTransparency = 1
saveKeyFrame.Visible = false
saveKeyFrame.Parent = mainFrame

local checkBoxBtn = Instance.new("TextButton")
checkBoxBtn.Name = "CheckBoxBtn"
checkBoxBtn.Size = UDim2.new(0, 14, 0, 14)
checkBoxBtn.Position = UDim2.new(0, 0, 0.5, -7)
checkBoxBtn.BackgroundColor3 = Color3.fromRGB(45, 30, 65)
checkBoxBtn.Text = "✓"
checkBoxBtn.TextColor3 = Color3.fromRGB(190, 135, 255)
checkBoxBtn.TextSize = 10
checkBoxBtn.Font = Enum.Font.GothamBold
checkBoxBtn.AutoButtonColor = false
checkBoxBtn.Parent = saveKeyFrame

local checkCorner = Instance.new("UICorner")
checkCorner.CornerRadius = UDim.new(0, 4)
checkCorner.Parent = checkBoxBtn

local checkStroke = Instance.new("UIStroke")
checkStroke.Color = Color3.fromRGB(60, 45, 75)
checkStroke.Thickness = 1
checkStroke.Parent = checkBoxBtn

local saveKeyLabel = Instance.new("TextLabel")
saveKeyLabel.Name = "SaveKeyLabel"
saveKeyLabel.Size = UDim2.new(1, -20, 1, 0)
saveKeyLabel.Position = UDim2.new(0, 20, 0, 0)
saveKeyLabel.BackgroundTransparency = 1
saveKeyLabel.Text = "Save key for 24 hours"
saveKeyLabel.TextColor3 = Color3.fromRGB(170, 155, 190)
saveKeyLabel.TextSize = 10
saveKeyLabel.Font = Enum.Font.Gotham
saveKeyLabel.TextXAlignment = Enum.TextXAlignment.Left
saveKeyLabel.Parent = saveKeyFrame

local isSaveKeyChecked = true

local function ToggleCheckbox()
	isSaveKeyChecked = not isSaveKeyChecked
	if isSaveKeyChecked then
		checkBoxBtn.Text = "✓"
		checkBoxBtn.BackgroundColor3 = Color3.fromRGB(45, 30, 65)
	else
		checkBoxBtn.Text = ""
		checkBoxBtn.BackgroundColor3 = Color3.fromRGB(28, 22, 35)
	end
end

checkBoxBtn.MouseButton1Click:Connect(ToggleCheckbox)

-- NÚT CHECK KEY & GET KEY
local verifyBtn = Instance.new("TextButton")
verifyBtn.Name = "VerifyBtn"
verifyBtn.Size = UDim2.new(0.5, -20, 0, 32)
verifyBtn.Position = UDim2.new(0, 16, 0, 112)
verifyBtn.BackgroundColor3 = Color3.fromRGB(190, 135, 255)
verifyBtn.Text = "Check Key"
verifyBtn.TextColor3 = Color3.fromRGB(15, 8, 22)
verifyBtn.TextSize = 11
verifyBtn.Font = Enum.Font.GothamBold
verifyBtn.AutoButtonColor = true
verifyBtn.Visible = false
verifyBtn.Parent = mainFrame

local verifyCorner = Instance.new("UICorner")
verifyCorner.CornerRadius = UDim.new(0, 8)
verifyCorner.Parent = verifyBtn

local getKeyBtn = Instance.new("TextButton")
getKeyBtn.Name = "GetKeyBtn"
getKeyBtn.Size = UDim2.new(0.5, -20, 0, 32)
getKeyBtn.Position = UDim2.new(0.5, 4, 0, 112)
getKeyBtn.BackgroundColor3 = Color3.fromRGB(28, 22, 35)
getKeyBtn.Text = "Get Key"
getKeyBtn.TextColor3 = Color3.fromRGB(220, 210, 235)
getKeyBtn.TextSize = 11
getKeyBtn.Font = Enum.Font.GothamMedium
getKeyBtn.AutoButtonColor = true
getKeyBtn.Visible = false
getKeyBtn.Parent = mainFrame

local getKeyCorner = Instance.new("UICorner")
getKeyCorner.CornerRadius = UDim.new(0, 8)
getKeyCorner.Parent = getKeyBtn

local getKeyStroke = Instance.new("UIStroke")
getKeyStroke.Color = Color3.fromRGB(50, 38, 62)
getKeyStroke.Thickness = 1
getKeyStroke.Parent = getKeyBtn

local islandOverlayBtn = Instance.new("TextButton")
islandOverlayBtn.Name = "IslandOverlayBtn"
islandOverlayBtn.Size = UDim2.new(1, 0, 1, 0)
islandOverlayBtn.BackgroundTransparency = 1
islandOverlayBtn.Text = ""
islandOverlayBtn.Visible = false
islandOverlayBtn.Parent = mainFrame

-- ================================================================= --
--           THÔNG BÁO DẠNG TOAST TRƯỢT TỪ BÊN PHẢI MÀN HÌNH         --
-- ================================================================= --

local activeToast = nil

local function ShowSideToast(msg, isSuccess)
	if activeToast then
		activeToast:Destroy()
		activeToast = nil
	end
	
	local toast = Instance.new("Frame")
	toast.Name = "SideToast"
	toast.Size = UDim2.new(0, 240, 0, 42)
	toast.Position = UDim2.new(1, 20, 1, -60)
	toast.BackgroundColor3 = Color3.fromRGB(20, 15, 25)
	toast.BorderSizePixel = 0
	toast.Parent = screenGui
	activeToast = toast
	
	local toastCorner = Instance.new("UICorner")
	toastCorner.CornerRadius = UDim.new(0, 10)
	toastCorner.Parent = toast
	
	local toastStroke = Instance.new("UIStroke")
	toastStroke.Thickness = 1.5
	toastStroke.Color = isSuccess and Color3.fromRGB(80, 230, 140) or Color3.fromRGB(255, 75, 85)
	toastStroke.Parent = toast
	
	local iconLabel = Instance.new("TextLabel")
	iconLabel.Size = UDim2.new(0, 20, 0, 20)
	iconLabel.Position = UDim2.new(0, 12, 0.5, -10)
	iconLabel.BackgroundTransparency = 1
	iconLabel.Text = isSuccess and "✓" or "✕"
	iconLabel.TextColor3 = isSuccess and Color3.fromRGB(80, 230, 140) or Color3.fromRGB(255, 75, 85)
	iconLabel.TextSize = 14
	iconLabel.Font = Enum.Font.GothamBold
	iconLabel.Parent = toast
	
	local msgLabel = Instance.new("TextLabel")
	msgLabel.Size = UDim2.new(1, -44, 1, 0)
	msgLabel.Position = UDim2.new(0, 36, 0, 0)
	msgLabel.BackgroundTransparency = 1
	msgLabel.Text = msg
	msgLabel.TextColor3 = Color3.fromRGB(240, 235, 250)
	msgLabel.TextSize = 11
	msgLabel.Font = Enum.Font.GothamMedium
	msgLabel.TextXAlignment = Enum.TextXAlignment.Left
	msgLabel.Parent = toast
	
	TweenService:Create(toast, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		Position = UDim2.new(1, -260, 1, -60)
	}):Play()
	
	task.delay(2.5, function()
		if toast and toast.Parent then
			local slideOut = TweenService:Create(toast, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
				Position = UDim2.new(1, 20, 1, -60)
			})
			slideOut:Play()
			slideOut.Completed:Connect(function()
				toast:Destroy()
			end)
		end
	end)
end

-- LOGIC CÀI ĐẶT XOAY BÁNH RĂNG & PROGRESS LOADING
local gearRotateConnection
gearRotateConnection = RunService.RenderStepped:Connect(function(delta)
	if gearIcon and gearIcon.Parent then
		gearIcon.Rotation = gearIcon.Rotation + (delta * 180)
	else
		if gearRotateConnection then gearRotateConnection:Disconnect() end
	end
end)

task.spawn(function()
	local totalTime = 4
	local startTime = tick()
	
	local loadingSteps = {
		{time = 0.0, text = "Initializing System..."},
		{time = 1.0, text = "Checking Saved Key..."},
		{time = 2.5, text = "Fetching Key System..."},
		{time = 4.0, text = "Ready!"}
	}
	
	TweenService:Create(loadingBar, TweenInfo.new(totalTime, Enum.EasingStyle.Linear), {Size = UDim2.new(1, 0, 1, 0)}):Play()
	
	while tick() - startTime < totalTime do
		local elapsed = tick() - startTime
		local progress = math.clamp(math.floor((elapsed / totalTime) * 100), 0, 100)
		percentLabel.Text = tostring(progress) .. "%"
		
		for _, step in ipairs(loadingSteps) do
			if elapsed >= step.time then
				statusText.Text = step.text
			end
		end
		task.wait(0.03)
	end
	
	percentLabel.Text = "100%"
	statusText.Text = "Completed!"
	task.wait(0.2)
	
	if gearRotateConnection then gearRotateConnection:Disconnect() end
	loadingFrame:Destroy()
	
	-- KIỂM TRA ĐIỀN LẠI KEY CŨ NẾU CÒN HẠN 24H
	local savedKey, isValid = LoadKeyData()
	if isValid and savedKey ~= "" then
		keyInput.Text = savedKey
	end
	
	subTitleLabel.Text = "Key System Verification"
	TweenService:Create(mainFrame, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 320, 0, 160),
		Position = UDim2.new(0.5, -160, 0.5, -80)
	}):Play()
	
	task.wait(0.25)
	closeBtn.Visible = true
	keyInput.Visible = true
	saveKeyFrame.Visible = true
	verifyBtn.Visible = true
	getKeyBtn.Visible = true
	
	-- 🔥 TỰ ĐỘNG CHẠY NẾU KEY CŨ CÒN HỢP LỆ TRONG 24H
	if isValid and savedKey ~= "" and isKeyValid(savedKey) then
		task.wait(0.3)
		if glowTask then task.cancel(glowTask) end
		
		TweenService:Create(mainStroke, TweenInfo.new(0.3), {Color = Color3.fromRGB(60, 255, 150)}):Play()
		TweenService:Create(inputStroke, TweenInfo.new(0.3), {Color = Color3.fromRGB(60, 255, 150)}):Play()
		
		task.wait(0.4)
		TweenService:Create(mainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
			Size = UDim2.new(0, 0, 0, 0),
			Position = UDim2.new(0.5, 0, 0.5, 0)
		}):Play()
		
		task.wait(0.4)
		screenGui:Destroy()
		OnKeyVerified()
	end
end)

-- LOGIC DYNAMIC ISLAND (THU NHỎ / MỞ LẠI)
local isMinimized = false

closeBtn.MouseButton1Click:Connect(function()
	if isMinimized then return end
	isMinimized = true
	
	keyInput.Visible = false
	saveKeyFrame.Visible = false
	verifyBtn.Visible = false
	getKeyBtn.Visible = false
	subTitleLabel.Visible = false
	closeBtn.Visible = false
	
	TweenService:Create(mainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 150, 0, 34),
		Position = UDim2.new(0.5, -75, 0, 12)
	}):Play()
	TweenService:Create(mainCorner, TweenInfo.new(0.4), {CornerRadius = UDim.new(1, 0)}):Play()
	TweenService:Create(gamepadIcon, TweenInfo.new(0.4), {Position = UDim2.new(0, 10, 0, 6)}):Play()
	TweenService:Create(titleLabel, TweenInfo.new(0.4), {Position = UDim2.new(0, 38, 0, 9)}):Play()
	
	task.wait(0.4)
	islandOverlayBtn.Visible = true
end)

islandOverlayBtn.MouseButton1Click:Connect(function()
	if not isMinimized then return end
	isMinimized = false
	islandOverlayBtn.Visible = false
	
	TweenService:Create(mainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 320, 0, 160),
		Position = UDim2.new(0.5, -160, 0.5, -80)
	}):Play()
	TweenService:Create(mainCorner, TweenInfo.new(0.4), {CornerRadius = UDim.new(0, 16)}):Play()
	TweenService:Create(gamepadIcon, TweenInfo.new(0.4), {Position = UDim2.new(0, 16, 0, 14)}):Play()
	TweenService:Create(titleLabel, TweenInfo.new(0.4), {Position = UDim2.new(0, 46, 0, 11)}):Play()
	
	task.wait(0.25)
	subTitleLabel.Visible = true
	closeBtn.Visible = true
	keyInput.Visible = true
	saveKeyFrame.Visible = true
	verifyBtn.Visible = true
	getKeyBtn.Visible = true
end)

-- XỬ LÝ KHI SAI KEY
local function HandleWrongKey()
	if glowTask then task.cancel(glowTask) end
	TweenService:Create(mainStroke, TweenInfo.new(0.2), {Color = Color3.fromRGB(255, 60, 70)}):Play()
	TweenService:Create(inputStroke, TweenInfo.new(0.2), {Color = Color3.fromRGB(255, 60, 70)}):Play()
	
	task.wait(1.2)
	TweenService:Create(inputStroke, TweenInfo.new(0.3), {Color = Color3.fromRGB(45, 34, 58)}):Play()
	StartDefaultGlow()
end

-- XỬ LÝ SỰ KIỆN CLICK NÚT
getKeyBtn.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard(LINK_KEY)
		ShowSideToast("Link copied to clipboard!", true)
	else
		ShowSideToast("Get key link via console", false)
	end
end)

verifyBtn.MouseButton1Click:Connect(function()
	local userKey = keyInput.Text:gsub("%s+", "")
	
	-- 🔥 KIỂM TRA KEY TRONG 24H
	if isKeyValid(userKey) then
		if glowTask then task.cancel(glowTask) end
		
		-- LƯU HOẶC XÓA FILE LƯU
		if isSaveKeyChecked then
			SaveKeyData(userKey)
		else
			if isfile and isfile(SAVE_FILE_NAME) then
				delfile(SAVE_FILE_NAME)
			end
		end
		
		TweenService:Create(mainStroke, TweenInfo.new(0.3), {Color = Color3.fromRGB(60, 255, 150)}):Play()
		TweenService:Create(inputStroke, TweenInfo.new(0.3), {Color = Color3.fromRGB(60, 255, 150)}):Play()
		
		ShowSideToast("Key verified! Loading...", true)
		
		task.wait(0.4)
		
		TweenService:Create(mainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
			Size = UDim2.new(0, 0, 0, 0),
			Position = UDim2.new(0.5, 0, 0.5, 0)
		}):Play()
		
		task.wait(0.4)
		screenGui:Destroy()
		OnKeyVerified()
	else
		ShowSideToast("Incorrect Key! Please try again.", false)
		task.spawn(HandleWrongKey)
	end
end)
