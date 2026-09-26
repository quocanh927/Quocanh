--// QUOCANHMENU V4 - PART 1/2
--// Premium Glass UI
--// Keep this part ABOVE PART 2

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local Player = Players.LocalPlayer

--==================================================
-- CLEAN OLD GUI
--==================================================

pcall(function()
    local old1 = CoreGui:FindFirstChild("QuocAnhMenu")
    if old1 then old1:Destroy() end
end)

pcall(function()
    local old2 = Player:WaitForChild("PlayerGui"):FindFirstChild("QuocAnhMenu")
    if old2 then old2:Destroy() end
end)

--==================================================
-- SERVICES / COLORS
--==================================================

local WHITE = Color3.fromRGB(255,255,255)
local BLACK = Color3.fromRGB(5,7,12)
local DARK = Color3.fromRGB(10,13,22)
local PANEL = Color3.fromRGB(17,21,32)
local PANEL2 = Color3.fromRGB(23,28,42)
local BLUE = Color3.fromRGB(75,145,255)
local BLUE2 = Color3.fromRGB(105,190,255)
local PURPLE = Color3.fromRGB(150,100,255)
local GRAY = Color3.fromRGB(150,158,175)
local LIGHT = Color3.fromRGB(220,225,235)
local GREEN = Color3.fromRGB(75,220,145)

local TweenFast = TweenInfo.new(
    0.16,
    Enum.EasingStyle.Quart,
    Enum.EasingDirection.Out
)

local TweenNormal = TweenInfo.new(
    0.28,
    Enum.EasingStyle.Quart,
    Enum.EasingDirection.Out
)

local TweenOpen = TweenInfo.new(
    0.38,
    Enum.EasingStyle.Back,
    Enum.EasingDirection.Out
)

--==================================================
-- SCREEN GUI
--==================================================

local Gui = Instance.new("ScreenGui")
Gui.Name = "QuocAnhMenu"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.DisplayOrder = 999999
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
Gui.Parent = CoreGui

--==================================================
-- MAIN
--==================================================

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, 560, 0, 350)
Main.Position = UDim2.new(0.5, -280, 0.5, -175)
Main.BackgroundColor3 = DARK
Main.BackgroundTransparency = 0.08
Main.BorderSizePixel = 0
Main.Visible = false
Main.ZIndex = 10
Main.Parent = Gui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0,18)
MainCorner.Parent = Main

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(100,140,210)
MainStroke.Transparency = 0.45
MainStroke.Thickness = 1.3
MainStroke.Parent = Main

local MainGradient = Instance.new("UIGradient")
MainGradient.Rotation = 135
MainGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(20,25,42)),
    ColorSequenceKeypoint.new(0.45, Color3.fromRGB(11,15,26)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(25,18,45))
})
MainGradient.Parent = Main

--==================================================
-- SHADOW
--==================================================

local Shadow = Instance.new("ImageLabel")
Shadow.Name = "Shadow"
Shadow.AnchorPoint = Vector2.new(0.5,0.5)
Shadow.Position = UDim2.new(0.5,0,0.5,7)
Shadow.Size = UDim2.new(1,45,1,45)
Shadow.BackgroundTransparency = 1
Shadow.Image = "rbxassetid://6014261993"
Shadow.ImageColor3 = Color3.fromRGB(0,0,0)
Shadow.ImageTransparency = 0.35
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(49,49,450,450)
Shadow.ZIndex = 1
Shadow.Parent = Main

--==================================================
-- TOP BAR
--==================================================

local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1,-24,0,58)
Header.Position = UDim2.new(0,12,0,10)
Header.BackgroundColor3 = Color3.fromRGB(255,255,255)
Header.BackgroundTransparency = 0.94
Header.BorderSizePixel = 0
Header.ZIndex = 20
Header.Parent = Main

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0,14)
HeaderCorner.Parent = Header

local HeaderStroke = Instance.new("UIStroke")
HeaderStroke.Color = Color3.fromRGB(255,255,255)
HeaderStroke.Transparency = 0.9
HeaderStroke.Thickness = 1
HeaderStroke.Parent = Header

--==================================================
-- LOGO
--==================================================

local Logo = Instance.new("TextLabel")
Logo.Name = "Logo"
Logo.BackgroundTransparency = 1
Logo.Position = UDim2.new(0,14,0,4)
Logo.Size = UDim2.new(0,210,0,30)
Logo.Font = Enum.Font.GothamBold
Logo.Text = "👑  QuocAnhMenu"
Logo.TextColor3 = WHITE
Logo.TextSize = 20
Logo.TextXAlignment = Enum.TextXAlignment.Left
Logo.ZIndex = 25
Logo.Parent = Header

local Version = Instance.new("TextLabel")
Version.BackgroundTransparency = 1
Version.Position = UDim2.new(0,17,0,31)
Version.Size = UDim2.new(0,150,0,18)
Version.Font = Enum.Font.GothamMedium
Version.Text = "Premium Script Hub"
Version.TextColor3 = Color3.fromRGB(130,170,255)
Version.TextSize = 10
Version.TextXAlignment = Enum.TextXAlignment.Left
Version.ZIndex = 25
Version.Parent = Header

--==================================================
-- CLOSE
--==================================================

local Close = Instance.new("TextButton")
Close.Name = "Close"
Close.Size = UDim2.new(0,34,0,34)
Close.Position = UDim2.new(1,-43,0.5,-17)
Close.BackgroundColor3 = Color3.fromRGB(255,70,90)
Close.BackgroundTransparency = 0.82
Close.BorderSizePixel = 0
Close.AutoButtonColor = false
Close.Font = Enum.Font.GothamBold
Close.Text = "×"
Close.TextColor3 = WHITE
Close.TextSize = 22
Close.ZIndex = 30
Close.Parent = Header

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(1,0)
CloseCorner.Parent = Close

--==================================================
-- SEARCH
--==================================================

local SearchBox = Instance.new("TextBox")
SearchBox.Name = "SearchBox"
SearchBox.Size = UDim2.new(0,170,0,34)
SearchBox.Position = UDim2.new(1,-220,0.5,-17)
SearchBox.BackgroundColor3 = Color3.fromRGB(255,255,255)
SearchBox.BackgroundTransparency = 0.94
SearchBox.BorderSizePixel = 0
SearchBox.ClearTextOnFocus = false
SearchBox.Font = Enum.Font.GothamMedium
SearchBox.PlaceholderText = "  🔍  Search script..."
SearchBox.PlaceholderColor3 = Color3.fromRGB(145,150,165)
SearchBox.Text = ""
SearchBox.TextColor3 = WHITE
SearchBox.TextSize = 11
SearchBox.TextXAlignment = Enum.TextXAlignment.Left
SearchBox.ZIndex = 25
SearchBox.Parent = Header

local SearchCorner = Instance.new("UICorner")
SearchCorner.CornerRadius = UDim.new(0,10)
SearchCorner.Parent = SearchBox

local SearchStroke = Instance.new("UIStroke")
SearchStroke.Color = Color3.fromRGB(100,140,220)
SearchStroke.Transparency = 0.82
SearchStroke.Parent = SearchBox

--==================================================
-- SIDEBAR
--==================================================

local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.new(0,145,1,-82)
Sidebar.Position = UDim2.new(0,12,0,74)
Sidebar.BackgroundColor3 = Color3.fromRGB(255,255,255)
Sidebar.BackgroundTransparency = 0.95
Sidebar.BorderSizePixel = 0
Sidebar.ZIndex = 15
Sidebar.Parent = Main

local SideCorner = Instance.new("UICorner")
SideCorner.CornerRadius = UDim.new(0,14)
SideCorner.Parent = Sidebar

local SideStroke = Instance.new("UIStroke")
SideStroke.Color = Color3.fromRGB(255,255,255)
SideStroke.Transparency = 0.93
SideStroke.Parent = Sidebar

local SideTitle = Instance.new("TextLabel")
SideTitle.BackgroundTransparency = 1
SideTitle.Position = UDim2.new(0,13,0,12)
SideTitle.Size = UDim2.new(1,-26,0,18)
SideTitle.Font = Enum.Font.GothamBold
SideTitle.Text = "MENU"
SideTitle.TextColor3 = Color3.fromRGB(120,130,150)
SideTitle.TextSize = 9
SideTitle.TextXAlignment = Enum.TextXAlignment.Left
SideTitle.ZIndex = 20
SideTitle.Parent = Sidebar

--==================================================
-- CONTENT
--==================================================

local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Size = UDim2.new(1,-169,1,-82)
Content.Position = UDim2.new(0,157,0,74)
Content.BackgroundTransparency = 1
Content.BorderSizePixel = 0
Content.ZIndex = 15
Content.Parent = Main

--==================================================
-- SCROLL
--==================================================

local Scroll = Instance.new("ScrollingFrame")
Scroll.Name = "Scroll"
Scroll.Size = UDim2.new(1,0,1,0)
Scroll.Position = UDim2.new(0,0,0,0)
Scroll.BackgroundTransparency = 1
Scroll.BorderSizePixel = 0
Scroll.ScrollBarThickness = 3
Scroll.ScrollBarImageColor3 = Color3.fromRGB(100,145,230)
Scroll.CanvasSize = UDim2.new(0,0,0,0)
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
Scroll.ScrollingDirection = Enum.ScrollingDirection.Y
Scroll.ZIndex = 16
Scroll.Parent = Content

local Padding = Instance.new("UIPadding")
Padding.PaddingTop = UDim.new(0,3)
Padding.PaddingBottom = UDim.new(0,12)
Padding.PaddingLeft = UDim.new(0,2)
Padding.PaddingRight = UDim.new(0,7)
Padding.Parent = Scroll

local Layout = Instance.new("UIListLayout")
Layout.Padding = UDim.new(0,8)
Layout.SortOrder = Enum.SortOrder.LayoutOrder
Layout.Parent = Scroll

--==================================================
-- DATA
--==================================================

local Scripts = {

    ["Steal a Egg"] = {

        {
            Name = "sever hop",
            Code = [[
loadstring(game:HttpGet("https://pastefy.app/YoZocJ8O/raw"))()
]]
        },

        {
            Name = "steal egg",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"))()
]]
        },

        {
            Name = "Spawner Pet",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/chocolascript-glitch/Chocola-Pet-Spawner-steal-an-egg/refs/heads/main/script.lua"))()
]]
        },

        {
            Name = "RealKid Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"))()
]]
        },

        {
            Name = "Lennon Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/lennonxscripts/lennonfarm/refs/heads/main/farmv1.lua"))()
]]
        },

        {
            Name = "Miranda v2",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/mirandaafk.lua"))()
]]
        },

        {
            Name = "Miranda",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"))()
]]
        },

        {
            Name = "Chilli hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
]]
        },

        {
            Name = "Foxname hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Fn-stealanegg.lua"))()
]]
        },

        {
            Name = "Sena hub",
            Code = [[
loadstring(game:HttpGet("https://senahub.xyz/raw/loader"))()
]]
        },

        -- NEW
        {
            Name = "Kira Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/LSSOPS/OpenSource/refs/heads/main/KiraHub_Steal_An_Egg.lua"))()
]]
        },

        {
            Name = "Zeroin",
            Code = [[
loadstring(game:HttpGet("https://zeroinhub.com/api/script"))()
]]
        },

        {
            Name = "ZERO POINT HUB",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/JaxRol/ZeroPoint/refs/heads/main/KeySystem"))()
]]
        },

        {
            Name = "ZK Hub [PREMIUM]",
            Code = [[
_G.Config = {ApiKey = "ZKCOMMUNITYcfdb742a751aad57d79b375ea6c7cbc7"}
loadstring(game:HttpGet("https://zkcommunity.cloud/loader.lua"))()
]]
        },

        {
            Name = "SAIOPS HUB",
            Code = [[
loadstring(game:HttpGet("https://api.saiops.cc/scripts/Steal-An-Egg-Script.lua"))()
]]
        },

        {
            Name = "AJJANS HUB",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/virtuososvisualedits-prog/Ww/refs/heads/main/final-obfuscated.lua"))()
]]
        },

        {
            Name = "LUMIN HUB",
            Code = [[
loadstring(game:HttpGet("http://luminon.top/loader.lua"))()
]]
        },

        {
            Name = "Fake Admin [VIP] KEY",
            Code = [[
loadstring(game:HttpGet("https://pastefy.app/t06eyyrw/raw"))()
]]
        }
    },

    ["Blox Fruit"] = {

        {
            Name = "Red Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Redz/refs/heads/main/Redz/script.luau"))()
]]
        },

        {
            Name = "Night Hub",
            Code = [[
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-NightMystic/Bloxfruits/refs/heads/main/Script.lua"))()
]]
        },

        {
            Name = "Gravity Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
]]
        },

        {
            Name = "Xynapse Hub",
            Code = [[
loadstring(game:HttpGet("https://pastebin.com/raw/uECLqG3j", true))()
]]
        },

        {
            Name = "Zee Hub",
            Code = [[
loadstring(game:HttpGet("https://link.trwxz.com/LS-Zee-Hub-VIP"))()
]]
        },

        {
            Name = "Quantum Hub",
            Code = [[
loadstring(game:HttpGet("https://pastebin.com/raw/r5h2r57F"))()
]]
        },

        {
            Name = "Zinner Hub",
            Code = [[
getgenv().Team = "Pirates"
loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangNguyenk8/Scripts/refs/heads/main/Loader.lua"))()
]]
        },

        {
            Name = "Andepzai Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/main/AnDepZaiHubBeta.lua"))()
]]
        },

        {
            Name = "OMG Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
]]
        },

        {
            Name = "Annie Hub",
            Code = [[
loadstring(game:HttpGet('https://raw.githubusercontent.com/1st-Mars/Annie/main/1st.lua'))()
]]
        }
    },

    ["Blade Ball"] = {

        {
            Name = "KAZZ Hub",
            Code = [[
loadstring(game:HttpGet("https://api.jnkie.com/api/v1/loaders/public/353accd2d41a5a30c879705a8ff47926fab2c8b7d7baf34d31c0522b8c6c0a41/download"))()
]]
        },

        {
            Name = "Dryx Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Doortthemort/676/refs/heads/main/Main.lua"))()
]]
        },

        {
            Name = "Arceney Hub",
            Code = [[
loadstring(game:HttpGet("https://arceney.win/cdn/loader.luau?v=scrb"))()
]]
        },

        {
            Name = "Wings Hub [Premium]",
            Code = [[
loadstring(game:HttpGet("https://wings.ac/loader"))()
]]
        },

        {
            Name = "Argon Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/luwriy/jwhub/refs/heads/main/loader"))()
]]
        }
    }
}

--==================================================
-- HOME TEXT
--==================================================

local HomeTitle = Instance.new("TextLabel")
HomeTitle.Name = "HomeTitle"
HomeTitle.BackgroundTransparency = 1
HomeTitle.Size = UDim2.new(1,-4,0,38)
HomeTitle.Font = Enum.Font.GothamBold
HomeTitle.Text = "Welcome to QuocAnhMenu 👋"
HomeTitle.TextColor3 = WHITE
HomeTitle.TextSize = 21
HomeTitle.TextXAlignment = Enum.TextXAlignment.Left
HomeTitle.LayoutOrder = 1
HomeTitle.ZIndex = 20
HomeTitle.Parent = Scroll

local HomeSub = Instance.new("TextLabel")
HomeSub.Name = "HomeSub"
HomeSub.BackgroundTransparency = 1
HomeSub.Size = UDim2.new(1,-4,0,42)
HomeSub.Font = Enum.Font.GothamMedium
HomeSub.Text = "Premium Script Hub • NoKey collection"
HomeSub.TextColor3 = Color3.fromRGB(130,165,240)
HomeSub.TextSize = 11
HomeSub.TextXAlignment = Enum.TextXAlignment.Left
HomeSub.LayoutOrder = 2
HomeSub.ZIndex = 20
HomeSub.Parent = Scroll

local InfoCard = Instance.new("Frame")
InfoCard.Name = "InfoCard"
InfoCard.Size = UDim2.new(1,-4,0,125)
InfoCard.BackgroundColor3 = Color3.fromRGB(255,255,255)
InfoCard.BackgroundTransparency = 0.95
InfoCard.BorderSizePixel = 0
InfoCard.LayoutOrder = 3
InfoCard.ZIndex = 18
InfoCard.Parent = Scroll

local InfoCorner = Instance.new("UICorner")
InfoCorner.CornerRadius = UDim.new(0,14)
InfoCorner.Parent = InfoCard

local InfoStroke = Instance.new("UIStroke")
InfoStroke.Color = Color3.fromRGB(100,145,255)
InfoStroke.Transparency = 0.86
InfoStroke.Parent = InfoCard

local InfoText = Instance.new("TextLabel")
InfoText.BackgroundTransparency = 1
InfoText.Position = UDim2.new(0,14,0,12)
InfoText.Size = UDim2.new(1,-28,1,-24)
InfoText.Font = Enum.Font.GothamMedium
InfoText.Text =
[[QuocAnhMenu là menu tổng hợp các script Roblox.

• Chọn game ở thanh bên trái.
• Bấm vào tên script để chạy loader.
• Dùng ô Search để tìm script nhanh.
• Menu được cập nhật định kỳ với các script mới.

Chúc bro chơi vui! 👑]]
InfoText.TextColor3 = Color3.fromRGB(205,210,225)
InfoText.TextSize = 11
InfoText.TextWrapped = true
InfoText.TextXAlignment = Enum.TextXAlignment.Left
InfoText.TextYAlignment = Enum.TextYAlignment.Top
InfoText.ZIndex = 20
InfoText.Parent = InfoCard

--==================================================
-- STATUS CARD
--==================================================

local StatusCard = Instance.new("Frame")
StatusCard.Name = "StatusCard"
StatusCard.Size = UDim2.new(1,-4,0,62)
StatusCard.BackgroundColor3 = Color3.fromRGB(255,255,255)
StatusCard.BackgroundTransparency = 0.95
StatusCard.BorderSizePixel = 0
StatusCard.LayoutOrder = 4
StatusCard.ZIndex = 18
StatusCard.Parent = Scroll

local StatusCorner = Instance.new("UICorner")
StatusCorner.CornerRadius = UDim.new(0,14)
StatusCorner.Parent = StatusCard

local StatusDot = Instance.new("Frame")
StatusDot.Size = UDim2.new(0,10,0,10)
StatusDot.Position = UDim2.new(0,15,0.5,-5)
StatusDot.BackgroundColor3 = GREEN
StatusDot.BorderSizePixel = 0
StatusDot.ZIndex = 20
StatusDot.Parent = StatusCard

local DotCorner = Instance.new("UICorner")
DotCorner.CornerRadius = UDim.new(1,0)
DotCorner.Parent = StatusDot

local StatusText = Instance.new("TextLabel")
StatusText.BackgroundTransparency = 1
StatusText.Position = UDim2.new(0,34,0,8)
StatusText.Size = UDim2.new(1,-45,0,20)
StatusText.Font = Enum.Font.GothamBold
StatusText.Text = "SYSTEM ONLINE"
StatusText.TextColor3 = WHITE
StatusText.TextSize = 11
StatusText.TextXAlignment = Enum.TextXAlignment.Left
StatusText.ZIndex = 20
StatusText.Parent = StatusCard

local StatusSub = Instance.new("TextLabel")
StatusSub.BackgroundTransparency = 1
StatusSub.Position = UDim2.new(0,34,0,28)
StatusSub.Size = UDim2.new(1,-45,0,20)
StatusSub.Font = Enum.Font.GothamMedium
StatusSub.Text = "QuocAnhMenu is ready"
StatusSub.TextColor3 = GRAY
StatusSub.TextSize = 9
StatusSub.TextXAlignment = Enum.TextXAlignment.Left
StatusSub.ZIndex = 20
StatusSub.Parent = StatusCard

--==================================================
-- FUNCTIONS
--==================================================

local CurrentCategory = "Home"

local function ClearScriptCards()
    for _, obj in ipairs(Scroll:GetChildren()) do
        if obj:GetAttribute("ScriptCard") then
            obj:Destroy()
        end
    end
end

local function SafeExecute(code)
    task.spawn(function()
        local fn, err = loadstring(code)

        if not fn then
            warn("[QuocAnhMenu] Loader error:", err)
            return
        end

        local ok, result = pcall(fn)

        if not ok then
          warn("[QuocAnhMenu] Script error:", result)
        end
    end)
end

local function CreateScriptCard(scriptInfo, order)
    local Card = Instance.new("TextButton")
    Card.Name = "ScriptCard"
    Card.Size = UDim2.new(1,-4,0,55)
    Card.BackgroundColor3 = Color3.fromRGB(255,255,255)
    Card.BackgroundTransparency = 0.94
    Card.BorderSizePixel = 0
    Card.AutoButtonColor = false
    Card.Text = ""
    Card.LayoutOrder = order
    Card.ZIndex = 18
    Card:SetAttribute("ScriptCard", true)
    Card.Parent = Scroll

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0,13)
    Corner.Parent = Card

    local Stroke = Instance.new("UIStroke")
    Stroke.Color = Color3.fromRGB(110,145,220)
    Stroke.Transparency = 0.9
    Stroke.Thickness = 1
    Stroke.Parent = Card

    local IconBox = Instance.new("Frame")
    IconBox.Size = UDim2.new(0,34,0,34)
    IconBox.Position = UDim2.new(0,10,0.5,-17)
    IconBox.BackgroundColor3 = Color3.fromRGB(90,130,255)
    IconBox.BackgroundTransparency = 0.78
    IconBox.BorderSizePixel = 0
    IconBox.ZIndex = 22
    IconBox.Parent = Card

    local IconCorner = Instance.new("UICorner")
    IconCorner.CornerRadius = UDim.new(0,10)
    IconCorner.Parent = IconBox

    local Icon = Instance.new("TextLabel")
    Icon.BackgroundTransparency = 1
    Icon.Size = UDim2.new(1,0,1,0)
    Icon.Font = Enum.Font.GothamBold
    Icon.Text = "✦"
    Icon.TextColor3 = WHITE
    Icon.TextSize = 15
    Icon.ZIndex = 23
    Icon.Parent = IconBox

    local Name = Instance.new("TextLabel")
    Name.Name = "ScriptName"
    Name.BackgroundTransparency = 1
    Name.Position = UDim2.new(0,55,0,8)
    Name.Size = UDim2.new(1,-105,0,22)
    Name.Font = Enum.Font.GothamBold
    Name.Text = scriptInfo.Name
    Name.TextColor3 = WHITE
    Name.TextSize = 12
    Name.TextXAlignment = Enum.TextXAlignment.Left
    Name.TextTruncate = Enum.TextTruncate.AtEnd
    Name.ZIndex = 22
    Name.Parent = Card

    local Sub = Instance.new("TextLabel")
    Sub.BackgroundTransparency = 1
    Sub.Position = UDim2.new(0,55,0,29)
    Sub.Size = UDim2.new(1,-105,0,15)
    Sub.Font = Enum.Font.GothamMedium
    Sub.Text = "Click to execute"
    Sub.TextColor3 = Color3.fromRGB(125,135,155)
    Sub.TextSize = 8
    Sub.TextXAlignment = Enum.TextXAlignment.Left
    Sub.ZIndex = 22
    Sub.Parent = Card

    local Arrow = Instance.new("TextLabel")
    Arrow.BackgroundTransparency = 1
    Arrow.Position = UDim2.new(1,-42,0.5,-12)
    Arrow.Size = UDim2.new(0,28,0,24)
    Arrow.Font = Enum.Font.GothamBold
    Arrow.Text = "›"
    Arrow.TextColor3 = Color3.fromRGB(130,160,230)
    Arrow.TextSize = 22
    Arrow.ZIndex = 23
    Arrow.Parent = Card

    Card.Activated:Connect(function()
        TweenService:Create(
            Card,
            TweenFast,
            {
                BackgroundTransparency = 0.84,
                Size = UDim2.new(1,-10,0,55)
            }
        ):Play()

        task.delay(0.12,function()
            TweenService:Create(
                Card,
                TweenFast,
                {
                    BackgroundTransparency = 0.94,
                    Size = UDim2.new(1,-4,0,55)
                }
            ):Play()
        end)

        SafeExecute(scriptInfo.Code)
    end)

    Card.MouseEnter:Connect(function()
        TweenService:Create(Card,TweenFast,{
            BackgroundTransparency = 0.89
        }):Play()

        TweenService:Create(Stroke,TweenFast,{
            Transparency = 0.65
        }):Play()
    end)

    Card.MouseLeave:Connect(function()
        TweenService:Create(Card,TweenFast,{
            BackgroundTransparency = 0.94
        }):Play()

        TweenService:Create(Stroke,TweenFast,{
            Transparency = 0.9
        }):Play()
    end)

    return Card
end
--// QUOCANHMENU V4 - PART 2/2

--==================================================
-- CATEGORY BUTTONS
--==================================================

local CategoryButtons = {}

local CategoryInfo = {
    {
        Name = "Home",
        Icon = "⌂"
    },
    {
        Name = "Steal a Egg",
        Icon = "🥚"
    },
    {
        Name = "Blox Fruit",
        Icon = "⚔"
    },
    {
        Name = "Blade Ball",
        Icon = "◈"
    }
}

local function SetCategoryVisual(selected)
    for name, button in pairs(CategoryButtons) do

        local selectedState = (name == selected)

        local targetColor
        local targetTransparency

        if selectedState then
            targetColor = Color3.fromRGB(80,125,255)
            targetTransparency = 0.72
        else
            targetColor = Color3.fromRGB(255,255,255)
            targetTransparency = 0.96
        end

        TweenService:Create(
            button,
            TweenFast,
            {
                BackgroundColor3 = targetColor,
                BackgroundTransparency = targetTransparency
            }
        ):Play()

        local label = button:FindFirstChild("Label")

        if label then
            if selectedState then
                label.TextColor3 = WHITE
            else
                label.TextColor3 = Color3.fromRGB(155,165,185)
            end
        end

        local icon = button:FindFirstChild("Icon")

        if icon then
            if selectedState then
                icon.TextColor3 = WHITE
            else
                icon.TextColor3 = Color3.fromRGB(145,155,175)
            end
        end
    end
end

local function MakeCategoryButton(info,index)

    local Button = Instance.new("TextButton")
    Button.Name = info.Name
    Button.Size = UDim2.new(1,-16,0,48)
    Button.Position = UDim2.new(0,8,0,39 + ((index-1)*53))
    Button.BackgroundColor3 = Color3.fromRGB(255,255,255)
    Button.BackgroundTransparency = 0.96
    Button.BorderSizePixel = 0
    Button.AutoButtonColor = false
    Button.Text = ""
    Button.ZIndex = 25
    Button.Parent = Sidebar

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0,12)
    Corner.Parent = Button

    local Icon = Instance.new("TextLabel")
    Icon.Name = "Icon"
    Icon.BackgroundTransparency = 1
    Icon.Position = UDim2.new(0,10,0.5,-11)
    Icon.Size = UDim2.new(0,25,0,22)
    Icon.Font = Enum.Font.GothamBold
    Icon.Text = info.Icon
    Icon.TextColor3 = Color3.fromRGB(145,155,175)
    Icon.TextSize = 14
    Icon.ZIndex = 28
    Icon.Parent = Button

    local Label = Instance.new("TextLabel")
    Label.Name = "Label"
    Label.BackgroundTransparency = 1
    Label.Position = UDim2.new(0,39,0,0)
    Label.Size = UDim2.new(1,-45,1,0)
    Label.Font = Enum.Font.GothamBold
    Label.Text = info.Name
    Label.TextColor3 = Color3.fromRGB(155,165,185)
    Label.TextSize = 10
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.TextTruncate = Enum.TextTruncate.AtEnd
    Label.ZIndex = 28
    Label.Parent = Button

    CategoryButtons[info.Name] = Button

    Button.Activated:Connect(function()

        if info.Name == "Home" then
            CurrentCategory = "Home"

            HomeTitle.Visible = true
            HomeSub.Visible = true
            InfoCard.Visible = true
            StatusCard.Visible = true

            ClearScriptCards()

        else
            CurrentCategory = info.Name

            HomeTitle.Visible = false
            HomeSub.Visible = false
            InfoCard.Visible = false
            StatusCard.Visible = false

            ClearScriptCards()

            local list = Scripts[info.Name]

            if list then
                for i, scriptInfo in ipairs(list) do
                    CreateScriptCard(scriptInfo,i)
                end
            end
        end

        SearchBox.Text = ""
        SetCategoryVisual(CurrentCategory)
        Scroll.CanvasPosition = Vector2.new(0,0)
    end)

    Button.MouseEnter:Connect(function()
        if CurrentCategory ~= info.Name then
            TweenService:Create(Button,TweenFast,{
                BackgroundTransparency = 0.91
            }):Play()
        end
    end)

    Button.MouseLeave:Connect(function()
        if CurrentCategory ~= info.Name then
            TweenService:Create(Button,TweenFast,{
                BackgroundTransparency = 0.96
            }):Play()
        end
    end)

    return Button
end

for i,info in ipairs(CategoryInfo) do
    MakeCategoryButton(info,i)
end

--==================================================
-- SHOW CATEGORY
--==================================================

local function ShowCategory(category)

    CurrentCategory = category

    HomeTitle.Visible = false
    HomeSub.Visible = false
    InfoCard.Visible = false
    StatusCard.Visible = false

    ClearScriptCards()

    local list = Scripts[category]

    if list then
        for i,scriptInfo in ipairs(list) do
            CreateScriptCard(scriptInfo,i)
        end
    end

    SearchBox.Text = ""
    Scroll.CanvasPosition = Vector2.new(0,0)

    SetCategoryVisual(category)
end

--==================================================
-- SHOW HOME
--==================================================

local function ShowHome()

    CurrentCategory = "Home"

    HomeTitle.Visible = true
    HomeSub.Visible = true
    InfoCard.Visible = true
    StatusCard.Visible = true

    ClearScriptCards()

    SearchBox.Text = ""
    Scroll.CanvasPosition = Vector2.new(0,0)

    SetCategoryVisual("Home")
end

--==================================================
-- SEARCH
--==================================================

SearchBox:GetPropertyChangedSignal("Text"):Connect(function()

    local query = string.lower(SearchBox.Text or "")

    if query == "" then

        if CurrentCategory == "Home" then
            ShowHome()
        else
            ShowCategory(CurrentCategory)
        end

        return
    end

    HomeTitle.Visible = false
    HomeSub.Visible = false
    InfoCard.Visible = false
    StatusCard.Visible = false

    ClearScriptCards()

    local order = 0

    for category,list in pairs(Scripts) do

        for _,scriptInfo in ipairs(list) do

            if string.find(
                string.lower(scriptInfo.Name),
                query,
                1,
                true
            ) then

                order += 1

                CreateScriptCard(
                    scriptInfo,
                    order
                )
            end
        end
    end
end)

--==================================================
-- CLOSE / OPEN
--==================================================

local Open = false

local function OpenMenu()

    if Open then return end

    Open = true
    Main.Visible = true

    Main.Size = UDim2.new(0,500,0,310)
    Main.BackgroundTransparency = 1

    TweenService:Create(
        Main,
        TweenOpen,
        {
            Size = UDim2.new(0,560,0,350),
            BackgroundTransparency = 0.08
        }
    ):Play()
end

local function CloseMenu()

    if not Open then return end

    Open = false

    local tween = TweenService:Create(
        Main,
        TweenNormal,
        {
            Size = UDim2.new(0,500,0,310),
            BackgroundTransparency = 1
        }
    )

    tween:Play()

    task.delay(0.28,function()
        if not Open then
            Main.Visible = false
        end
    end)
end

Close.Activated:Connect(CloseMenu)

--==================================================
-- CLOSE BUTTON ANIMATION
--==================================================

Close.MouseEnter:Connect(function()
    TweenService:Create(Close,TweenFast,{
        BackgroundTransparency = 0.58
    }):Play()
end)

Close.MouseLeave:Connect(function()
    TweenService:Create(Close,TweenFast,{
        BackgroundTransparency = 0.82
    }):Play()
end)

--==================================================
-- DRAG FUNCTION
--==================================================

local function MakeDraggable(object, handle)

    local dragging = false
    local dragStart
    local startPosition

    handle.InputBegan:Connect(function(input)

        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

            dragging = true
            dragStart = input.Position
            startPosition = object.Position

            input.Changed:Connect(function()

                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end

            end)
        end
    end)

    UserInputService.InputChanged:Connect(function(input)

        if not dragging then return end

        if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then

            local delta = input.Position - dragStart

            object.Position = UDim2.new(
                startPosition.X.Scale,
                startPosition.X.Offset + delta.X,
                startPosition.Y.Scale,
                startPosition.Y.Offset + delta.Y
            )
        end
    end)
end

-- Header draggable
MakeDraggable(Main,Header)

--==================================================
-- FLOATING CROWN
--==================================================

local Crown = Instance.new("TextButton")
Crown.Name = "CrownButton"
Crown.Size = UDim2.new(0,54,0,54)
Crown.Position = UDim2.new(0,24,0.5,-27)
Crown.BackgroundColor3 = Color3.fromRGB(22,27,42)
Crown.BackgroundTransparency = 0.08
Crown.BorderSizePixel = 0
Crown.AutoButtonColor = false
Crown.Text = "👑"
Crown.TextSize = 24
Crown.Font = Enum.Font.GothamBold
Crown.ZIndex = 100
Crown.Parent = Gui

local CrownCorner = Instance.new("UICorner")
CrownCorner.CornerRadius = UDim.new(1,0)
CrownCorner.Parent = Crown

local CrownStroke = Instance.new("UIStroke")
CrownStroke.Color = Color3.fromRGB(100,160,255)
CrownStroke.Thickness = 1.5
CrownStroke.Transparency = 0.25
CrownStroke.Parent = Crown

local CrownGradient = Instance.new("UIGradient")
CrownGradient.Rotation = 45
CrownGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0,Color3.fromRGB(40,55,90)),
    ColorSequenceKeypoint.new(1,Color3.fromRGB(80,45,130))
})
CrownGradient.Parent = Crown

--==================================================
-- CROWN GLOW
--==================================================

local CrownGlow = Instance.new("ImageLabel")
CrownGlow.BackgroundTransparency = 1
CrownGlow.AnchorPoint = Vector2.new(0.5,0.5)
CrownGlow.Position = UDim2.new(0.5,0,0.5,0)
CrownGlow.Size = UDim2.new(1,25,1,25)
CrownGlow.Image = "rbxassetid://6014261993"
CrownGlow.ImageColor3 = Color3.fromRGB(70,130,255)
CrownGlow.ImageTransparency = 0.65
CrownGlow.ZIndex = 99
CrownGlow.Parent = Crown

--==================================================
-- CROWN CLICK
--==================================================

Crown.Activated:Connect(function()

    if Open then
        CloseMenu()
    else
        OpenMenu()
    end
end)

Crown.MouseEnter:Connect(function()

    TweenService:Create(
        Crown,
        TweenFast,
        {
            Size = UDim2.new(0,60,0,60)
        }
    ):Play()

    TweenService:Create(
        CrownStroke,
        TweenFast,
        {
            Thickness = 2.5,
            Transparency = 0
        }
    ):Play()
end)

Crown.MouseLeave:Connect(function()

    TweenService:Create(
        Crown,
        TweenFast,
        {
            Size = UDim2.new(0,54,0,54)
        }
    ):Play()

    TweenService:Create(
        CrownStroke,
        TweenFast,
        {
            Thickness = 1.5,
            Transparency = 0.25
        }
    ):Play()
end)

--==================================================
-- CROWN DRAG
--==================================================

MakeDraggable(Crown,Crown)

--==================================================
-- LOGO CLICK
--==================================================

Logo.InputBegan:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        ShowHome()
    end
end)

--==================================================
-- SEARCH FOCUS
--==================================================

SearchBox.Focused:Connect(function()

    TweenService:Create(
        SearchStroke,
        TweenFast,
        {
            Transparency = 0.35,
            Thickness = 1.3
        }
    ):Play()
end)

SearchBox.FocusLost:Connect(function()

    TweenService:Create(
        SearchStroke,
        TweenFast,
        {
            Transparency = 0.82,
            Thickness = 1
        }
    ):Play()
end)

--==================================================
-- INITIAL STATE
--==================================================

ShowHome()

Main.Visible = false
Open = false

print("================================")
print("       QUOCANHMENU V4")
print("       PREMIUM GLASS UI")
print("       LOADED SUCCESSFULLY")
print("================================")
