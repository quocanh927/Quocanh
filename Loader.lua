-- Tạo ScreenGui chính
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BananaHub_GetKey"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game:GetService("CoreGui") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Khung chính (Main Frame) - NGẮN HƠN
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 380, 0, 240)
MainFrame.Position = UDim2.new(0.5, -190, 0.5, -120)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderColor3 = Color3.fromRGB(255, 200, 0)
MainFrame.BorderSizePixel = 2
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame

-- Tiêu đề (Title)
local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, 0, 0, 35)
Title.Position = UDim2.new(0, 0, 0, 8)
Title.BackgroundTransparency = 1
Title.Text = "🍌 BANANA HUB"
Title.TextColor3 = Color3.fromRGB(255, 200, 0)
Title.TextSize = 22
Title.Font = Enum.Font.SourceSansBold
Title.Parent = MainFrame

-- Phụ đề (SubTitle)
local SubTitle = Instance.new("TextLabel")
SubTitle.Size = UDim2.new(1, 0, 0, 16)
SubTitle.Position = UDim2.new(0, 0, 0, 38)
SubTitle.BackgroundTransparency = 1
SubTitle.Text = "PLEASE ENTER YOUR KEY TO ACCESS THE MENU"
SubTitle.TextColor3 = Color3.fromRGB(180, 180, 180)
SubTitle.TextSize = 10
SubTitle.Font = Enum.Font.SourceSans
SubTitle.Parent = MainFrame

-- Ô nhập Key (TextBox)
local KeyInput = Instance.new("TextBox")
KeyInput.Name = "KeyInput"
KeyInput.Size = UDim2.new(0.85, 0, 0, 32)
KeyInput.Position = UDim2.new(0.075, 0, 0, 65)
KeyInput.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
KeyInput.BorderColor3 = Color3.fromRGB(255, 200, 0)
KeyInput.BorderSizePixel = 1
KeyInput.PlaceholderText = "Enter your key here..."
KeyInput.PlaceholderColor3 = Color3.fromRGB(120, 120, 120)
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.TextSize = 14
KeyInput.Font = Enum.Font.SourceSans
KeyInput.Parent = MainFrame

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 6)
InputCorner.Parent = KeyInput

-- Nút Verify Key
local VerifyBtn = Instance.new("TextButton")
VerifyBtn.Name = "VerifyBtn"
VerifyBtn.Size = UDim2.new(0.85, 0, 0, 32)
VerifyBtn.Position = UDim2.new(0.075, 0, 0, 107)
VerifyBtn.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
VerifyBtn.Text = "VERIFY KEY"
VerifyBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
VerifyBtn.TextSize = 14
VerifyBtn.Font = Enum.Font.SourceSansBold
VerifyBtn.Parent = MainFrame

local VerifyCorner = Instance.new("UICorner")
VerifyCorner.CornerRadius = UDim.new(0, 6)
VerifyCorner.Parent = VerifyBtn

-- Nút Copy Key Link
local CopyBtn = Instance.new("TextButton")
CopyBtn.Name = "CopyBtn"
CopyBtn.Size = UDim2.new(0.85, 0, 0, 30)
CopyBtn.Position = UDim2.new(0.075, 0, 0, 148)
CopyBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CopyBtn.BorderColor3 = Color3.fromRGB(255, 200, 0)
CopyBtn.BorderSizePixel = 1
CopyBtn.Text = "COPY KEY LINK"
CopyBtn.TextColor3 = Color3.fromRGB(255, 200, 0)
CopyBtn.TextSize = 12
CopyBtn.Font = Enum.Font.SourceSansBold
CopyBtn.Parent = MainFrame

local CopyCorner = Instance.new("UICorner")
CopyCorner.CornerRadius = UDim.new(0, 6)
CopyCorner.Parent = CopyBtn

-- 👑 QUOCANH - DƯỚI CÙNG, TO
local CreditLabel = Instance.new("TextLabel")
CreditLabel.Size = UDim2.new(1, 0, 0, 30)
CreditLabel.Position = UDim2.new(0, 0, 1, -32)
CreditLabel.BackgroundTransparency = 1
CreditLabel.Text = "👑 QuocAnh"
CreditLabel.TextColor3 = Color3.fromRGB(255, 215, 0)
CreditLabel.TextSize = 18
CreditLabel.Font = Enum.Font.SourceSansBold
CreditLabel.Parent = MainFrame

-- Nút Đóng UI (Close Button)
local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 22, 0, 22)
CloseBtn.Position = UDim2.new(1, -28, 0, 6)
CloseBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 200, 0)
CloseBtn.TextSize = 13
CloseBtn.Font = Enum.Font.SourceSansBold
CloseBtn.Parent = MainFrame

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 4)
CloseCorner.Parent = CloseBtn

--==========================================================
-- 🔥 CẤU HÌNH MỚI (ĐÃ ĐỔI THEO YÊU CẦU)
--==========================================================

-- KEY MỚI: FREE - OKEMYEU
local VALID_KEYS = {
    "FREE - OKEMYEU"
}

-- LINK GETKEY MỚI
local KEY_LINK = "https://layma.net/dKZ7OWCiC"

-- LINK LOADER MENU CHÍNH (GIỮ NGUYÊN)
local LOADER_LINK = "https://raw.githubusercontent.com/x2RunE/Immortal/refs/heads/main/BananaCat-Loader.lua"

--==========================================================
-- HÀM KIỂM TRA KEY
--==========================================================
local function checkKey(input)
    for _, key in ipairs(VALID_KEYS) do
        if input == key then
            return true
        end
    end
    return false
end

--==========================================================
-- SỰ KIỆN
--==========================================================

VerifyBtn.MouseButton1Click:Connect(function()
    local inputKey = KeyInput.Text
    
    if inputKey == "" then
        VerifyBtn.Text = "PLEASE ENTER KEY!"
        VerifyBtn.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
        task.wait(1.2)
        VerifyBtn.Text = "VERIFY KEY"
        VerifyBtn.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
        return
    end
    
    if checkKey(inputKey) then
        VerifyBtn.Text = "✅ SUCCESS!"
        VerifyBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
        task.wait(0.6)
        ScreenGui:Destroy()
        loadstring(game:HttpGet(LOADER_LINK))()
    else
        VerifyBtn.Text = "❌ INVALID KEY!"
        VerifyBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        task.wait(1.2)
        VerifyBtn.Text = "VERIFY KEY"
        VerifyBtn.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
        KeyInput.Text = ""
    end
end)

CopyBtn.MouseButton1Click:Connect(function()
    pcall(function()
        setclipboard(KEY_LINK)
    end)
    CopyBtn.Text = "✅ COPIED!"
    CopyBtn.TextColor3 = Color3.fromRGB(0, 255, 100)
    task.wait(1.5)
    CopyBtn.Text = "COPY KEY LINK"
    CopyBtn.TextColor3 = Color3.fromRGB(255, 200, 0)
end)

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

KeyInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        VerifyBtn.MouseButton1Click:Fire()
    end
end)

-- Animation mở
MainFrame.Size = UDim2.new(0, 0, 0, 0)
local TweenService = game:GetService("TweenService")
TweenService:Create(
    MainFrame,
    TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
    {Size = UDim2.new(0, 380, 0, 240)}
):Play()
