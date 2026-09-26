--// QUOC ANH MENU V5
--// PART 1/3
--// UI CORE + DATABASE

if game.CoreGui:FindFirstChild("QuocAnhMenuV5") then
    game.CoreGui.QuocAnhMenuV5:Destroy()
end

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local Player = Players.LocalPlayer

--==================================================
-- DATABASE
--==================================================

local Scripts = {

    ["Steal a Egg"] = {

        {
            Name = "Sever Hop",
            Code = [[
loadstring(game:HttpGet("https://pastefy.app/YoZocJ8O/raw"))()
]]
        },

        {
            Name = "Steal Egg",
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
            Name = "Chilli Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
]]
        },

        {
            Name = "Foxname Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Fn-stealanegg.lua"))()
]]
        },

        {
            Name = "Sena Hub",
            Code = [[
loadstring(game:HttpGet("https://senahub.xyz/raw/loader"))()
]]
        },

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
_G.Config = {
    ApiKey = "ZKCOMMUNITYcfdb742a751aad57d79b375ea6c7cbc7"
}

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
            Name = "Fake Admin [ VIP] KEY",
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
repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

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
loadstring(game:HttpGet("https://raw.githubusercontent.com/1st-Mars/Annie/main/1st.lua"))()
]]
        },

        {
            Name = "Nero Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/NeroHubClub/AutoMythicFruitFinder/refs/heads/main/NeroHubFruitFinder"))()
]]
        },

        {
            Name = "Teddy Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub.lua"))()
]]
        },

        {
            Name = "Zenith Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/LookP/Roblox/refs/heads/main/ZenithHUB%20ZC%20Rivals"))()
]]
        },

        {
            Name = "Speed Hub X",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
]]
        },

        {
            Name = "HoHo Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
]]
        },

        {
            Name = "Banana Hub",
            Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Banana/refs/heads/main/Banana/script.luau"))()
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
-- COLORS
--==================================================

local BG = Color3.fromRGB(13, 15, 22)
local PANEL = Color3.fromRGB(22, 25, 35)
local PANEL2 = Color3.fromRGB(28, 32, 44)
local WHITE = Color3.fromRGB(245, 247, 255)
local MUTED = Color3.fromRGB(145, 151, 170)
local ACCENT = Color3.fromRGB(139, 92, 246)
local ACCENT2 = Color3.fromRGB(99, 102, 241)
local GREEN = Color3.fromRGB(78, 220, 150)
local RED = Color3.fromRGB(255, 90, 110)

--==================================================
-- SCREEN GUI
--==================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "QuocAnhMenuV5"
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 20
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
ScreenGui.Parent = CoreGui

--==================================================
-- MAIN WINDOW
--==================================================

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.fromOffset(720, 405)
Main.Position = UDim2.new(0.5, -360, 0.5, -202)
Main.BackgroundColor3 = BG
Main.BackgroundTransparency = 0.18
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
Main.ZIndex = 10
Main.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 22)
MainCorner.Parent = Main

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(100, 105, 135)
MainStroke.Transparency = 0.45
MainStroke.Thickness = 1.2
MainStroke.Parent = Main

--==================================================
-- GLASS BACKGROUND
--==================================================

local Glass = Instance.new("Frame")
Glass.Name = "Glass"
Glass.Size = UDim2.fromScale(1, 1)
Glass.BackgroundColor3 = Color3.fromRGB(25, 28, 40)
Glass.BackgroundTransparency = 0.48
Glass.BorderSizePixel = 0
Glass.ZIndex = 11
Glass.Parent = Main

local GlassCorner = Instance.new("UICorner")
GlassCorner.CornerRadius = UDim.new(0, 22)
GlassCorner.Parent = Glass

--==================================================
-- HEADER
--==================================================

local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1, -24, 0, 66)
Header.Position = UDim2.fromOffset(12, 10)
Header.BackgroundTransparency = 1
Header.ZIndex = 20
Header.Parent = Main

local Logo = Instance.new("Frame")
Logo.Size = UDim2.fromOffset(44, 44)
Logo.Position = UDim2.fromOffset(2, 10)
Logo.BackgroundColor3 = ACCENT
Logo.BackgroundTransparency = 0.08
Logo.BorderSizePixel = 0
Logo.ZIndex = 21
Logo.Parent = Header

local LogoCorner = Instance.new("UICorner")
LogoCorner.CornerRadius = UDim.new(0, 14)
LogoCorner.Parent = Logo

local LogoText = Instance.new("TextLabel")
LogoText.Size = UDim2.fromScale(1, 1)
LogoText.BackgroundTransparency = 1
LogoText.Text = "Q"
LogoText.TextColor3 = WHITE
LogoText.Font = Enum.Font.GothamBlack
LogoText.TextSize = 23
LogoText.ZIndex = 22
LogoText.Parent = Logo

local Title = Instance.new("TextLabel")
Title.Size = UDim2.fromOffset(230, 28)
Title.Position = UDim2.fromOffset(58, 7)
Title.BackgroundTransparency = 1
Title.Text = "QUOC ANH MENU"
Title.TextColor3 = WHITE
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 21
Title.Parent = Header

local Subtitle = Instance.new("TextLabel")
Subtitle.Size = UDim2.fromOffset(250, 20)
Subtitle.Position = UDim2.fromOffset(58, 32)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "Universal Script Library"
Subtitle.TextColor3 = MUTED
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextSize = 11
Subtitle.TextXAlignment = Enum.TextXAlignment.Left
Subtitle.ZIndex = 21
Subtitle.Parent = Header

--==================================================
-- STATUS
--==================================================

local Status = Instance.new("Frame")
Status.Size = UDim2.fromOffset(82, 30)
Status.Position = UDim2.new(1, -290, 0, 17)
Status.BackgroundColor3 = Color3.fromRGB(30, 38, 38)
Status.BackgroundTransparency = 0.15
Status.BorderSizePixel = 0
Status.ZIndex = 21
Status.Parent = Header

local StatusCorner = Instance.new("UICorner")
StatusCorner.CornerRadius = UDim.new(1, 0)
StatusCorner.Parent = Status

local StatusDot = Instance.new("Frame")
StatusDot.Size = UDim2.fromOffset(7, 7)
StatusDot.Position = UDim2.fromOffset(12, 12)
StatusDot.BackgroundColor3 = GREEN
StatusDot.BorderSizePixel = 0
Status.ZIndex = 22
StatusDot.Parent = Status

local DotCorner = Instance.new("UICorner")
DotCorner.CornerRadius = UDim.new(1, 0)
DotCorner.Parent = StatusDot

local StatusText = Instance.new("TextLabel")
StatusText.Size = UDim2.fromOffset(55, 30)
StatusText.Position = UDim2.fromOffset(25, 0)
StatusText.BackgroundTransparency = 1
StatusText.Text = "ONLINE"
StatusText.TextColor3 = GREEN
StatusText.Font = Enum.Font.GothamBold
StatusText.TextSize = 9
StatusText.ZIndex = 22
StatusText.Parent = Status

--==================================================
-- SEARCH
--==================================================

local SearchBox = Instance.new("Frame")
SearchBox.Name = "SearchBox"
SearchBox.Size = UDim2.fromOffset(185, 34)
SearchBox.Position = UDim2.new(1, -195, 0, 15)
SearchBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SearchBox.BackgroundTransparency = 0.91
SearchBox.BorderSizePixel = 0
SearchBox.ZIndex = 21
SearchBox.Parent = Header

local SearchCorner = Instance.new("UICorner")
SearchCorner.CornerRadius = UDim.new(1, 0)
SearchCorner.Parent = SearchBox

local SearchIcon = Instance.new("TextLabel")
SearchIcon.Size = UDim2.fromOffset(30, 34)
SearchIcon.BackgroundTransparency = 1
SearchIcon.Text = "⌕"
SearchIcon.TextColor3 = MUTED
SearchIcon.Font = Enum.Font.GothamBold
SearchIcon.TextSize = 20
SearchIcon.ZIndex = 22
SearchIcon.Parent = SearchBox

local Search = Instance.new("TextBox")
Search.Size = UDim2.new(1, -35, 1, 0)
Search.Position = UDim2.fromOffset(32, 0)
Search.BackgroundTransparency = 1
Search.PlaceholderText = "Search script..."
Search.PlaceholderColor3 = MUTED
Search.Text = ""
Search.TextColor3 = WHITE
Search.Font = Enum.Font.Gotham
Search.TextSize = 11
Search.TextXAlignment = Enum.TextXAlignment.Left
Search.ClearTextOnFocus = false
Search.ZIndex = 22
Search.Parent = SearchBox

--==================================================
-- BODY
--==================================================

local Body = Instance.new("Frame")
Body.Size = UDim2.new(1, -24, 1, -88)
Body.Position = UDim2.fromOffset(12, 78)
Body.BackgroundTransparency = 1
Body.ZIndex = 20
Body.Parent = Main

--==================================================
-- SIDEBAR
--==================================================

local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.fromOffset(158, 1)
Sidebar.Position = UDim2.fromOffset(0, 0)
Sidebar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sidebar.BackgroundTransparency = 0.94
Sidebar.BorderSizePixel = 0
Sidebar.ZIndex = 21
Sidebar.Parent = Body

local SidebarCorner = Instance.new("UICorner")
SidebarCorner.CornerRadius = UDim.new(0, 17)
SidebarCorner.Parent = Sidebar

local SidePadding = Instance.new("UIPadding")
SidePadding.PaddingTop = UDim.new(0, 13)
SidePadding.PaddingLeft = UDim.new(0, 10)
SidePadding.PaddingRight = UDim.new(0, 10)
SidePadding.Parent = Sidebar

local SideLayout = Instance.new("UIListLayout")
SideLayout.Padding = UDim.new(0, 8)
SideLayout.SortOrder = Enum.SortOrder.LayoutOrder
SideLayout.Parent = Sidebar

--==================================================
-- CONTENT
--==================================================

local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Size = UDim2.new(1, -170, 1, 0)
Content.Position = UDim2.fromOffset(170, 0)
Content.BackgroundTransparency = 1
Content.ZIndex = 21
Content.Parent = Body

local ContentHeader = Instance.new("Frame")
ContentHeader.Size = UDim2.new(1, 0, 0, 48)
ContentHeader.BackgroundTransparency = 1
Content.ZIndex = 22
ContentHeader.Parent = Content

local CategoryTitle = Instance.new("TextLabel")
CategoryTitle.Size = UDim2.new(1, -100, 0, 28)
CategoryTitle.Position = UDim2.fromOffset(5, 1)
CategoryTitle.BackgroundTransparency = 1
CategoryTitle.Text = "Home"
CategoryTitle.TextColor3 = WHITE
CategoryTitle.Font = Enum.Font.GothamBold
CategoryTitle.TextSize = 19
CategoryTitle.TextXAlignment = Enum.TextXAlignment.Left
CategoryTitle.ZIndex = 23
CategoryTitle.Parent = ContentHeader

local CategoryInfo = Instance.new("TextLabel")
CategoryInfo.Size = UDim2.new(1, -100, 0, 18)
CategoryInfo.Position = UDim2.fromOffset(5, 28)
CategoryInfo.BackgroundTransparency = 1
CategoryInfo.Text = "Welcome to Quoc Anh Menu"
CategoryInfo.TextColor3 = MUTED
CategoryInfo.Font = Enum.Font.Gotham
CategoryInfo.TextSize = 10
CategoryInfo.TextXAlignment = Enum.TextXAlignment.Left
CategoryInfo.ZIndex = 23
CategoryInfo.Parent = ContentHeader

local CountBadge = Instance.new("TextLabel")
CountBadge.Size = UDim2.fromOffset(72, 28)
CountBadge.Position = UDim2.new(1, -77, 0, 7)
CountBadge.BackgroundColor3 = ACCENT
CountBadge.BackgroundTransparency = 0.15
CountBadge.Text = "0 SCRIPTS"
CountBadge.TextColor3 = WHITE
CountBadge.Font = Enum.Font.GothamBold
CountBadge.TextSize = 8
CountBadge.ZIndex = 23
CountBadge.Parent = ContentHeader

local CountCorner = Instance.new("UICorner")
CountCorner.CornerRadius = UDim.new(1, 0)
CountCorner.Parent = CountBadge

--==================================================
-- SCRIPT SCROLL
--==================================================

local ScriptScroll = Instance.new("ScrollingFrame")
ScriptScroll.Name = "ScriptScroll"
ScriptScroll.Size = UDim2.new(1, 0, 1, -53)
ScriptScroll.Position = UDim2.fromOffset(0, 53)
ScriptScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptScroll.BackgroundTransparency = 0.96
ScriptScroll.BorderSizePixel = 0
ScriptScroll.ScrollBarThickness = 3
ScriptScroll.ScrollBarImageColor3 = ACCENT
ScriptScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
ScriptScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScriptScroll.ScrollingDirection = Enum.ScrollingDirection.Y
ScriptScroll.ZIndex = 22
ScriptScroll.Parent = Content

local ScrollCorner = Instance.new("UICorner")
ScrollCorner.CornerRadius = UDim.new(0, 17)
ScrollCorner.Parent = ScriptScroll

local ScrollPadding = Instance.new("UIPadding")
ScrollPadding.PaddingTop = UDim.new(0, 8)
ScrollPadding.PaddingBottom = UDim.new(0, 10)
ScrollPadding.PaddingLeft = UDim.new(0, 8)
ScrollPadding.PaddingRight = UDim.new(0, 8)
ScrollPadding.Parent = ScriptScroll

local ScriptLayout = Instance.new("UIListLayout")
ScriptLayout.Padding = UDim.new(0, 7)
ScriptLayout.SortOrder = Enum.SortOrder.LayoutOrder
ScriptLayout.Parent = ScriptScroll

--==================================================
-- DRAG FUNCTION
--==================================================

local function MakeDraggable(Object, Handle)

    local Dragging = false
    local DragStart
    local StartPosition

    Handle.InputBegan:Connect(function(Input)

        if Input.UserInputType == Enum.UserInputType.MouseButton1
        or Input.UserInputType == Enum.UserInputType.Touch then

            Dragging = true
            DragStart = Input.Position
            StartPosition = Object.Position

            Input.Changed:Connect(function()

                if Input.UserInputState == Enum.UserInputState.End then
                    Dragging = false
                end

            end)

        end

    end)

    UserInputService.InputChanged:Connect(function(Input)

        if not Dragging then
            return
        end

        if Input.UserInputType == Enum.UserInputType.MouseMovement
        or Input.UserInputType == Enum.UserInputType.Touch then

            local Delta = Input.Position - DragStart

            Object.Position = UDim2.new(
                StartPosition.X.Scale,
                StartPosition.X.Offset + Delta.X,
                StartPosition.Y.Scale,
                StartPosition.Y.Offset + Delta.Y
            )

        end

    end)

end

MakeDraggable(Main, Header)

--==================================================
-- GLOBAL FUNCTIONS
--==================================================

local CurrentCategory = "Home"

local function ClearScripts()

    for _, Child in ipairs(ScriptScroll:GetChildren()) do

        if Child:IsA("GuiObject") then
            Child:Destroy()
        end

    end

end

local function UpdateCount(Number)

    CountBadge.Text = tostring(Number) .. " SCRIPTS"

end
--// QUOC ANH MENU V5
--// PART 2/3
--// SIDEBAR + SCRIPT CARDS + HOME + SEARCH

--==================================================
-- SIDEBAR BUTTON
--==================================================

local SidebarButtons = {}

local Icons = {
    ["Home"] = "⌂",
    ["Steal a Egg"] = "🥚",
    ["Blox Fruit"] = "⚔",
    ["Blade Ball"] = "◈"
}

local function CreateSidebarButton(Name)

    local Button = Instance.new("TextButton")
    Button.Name = Name
    Button.Size = UDim2.new(1, 0, 0, 50)
    Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Button.BackgroundTransparency = 0.96
    Button.BorderSizePixel = 0
    Button.AutoButtonColor = false
    Button.Text = ""
    Button.ZIndex = 22
    Button.Parent = Sidebar

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 14)
    Corner.Parent = Button

    local Icon = Instance.new("Frame")
    Icon.Name = "Icon"
    Icon.Size = UDim2.fromOffset(34, 34)
    Icon.Position = UDim2.new(0, 7, 0.5, -17)
    Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon.BackgroundTransparency = 0.94
    Icon.BorderSizePixel = 0
    Icon.ZIndex = 23
    Icon.Parent = Button

    local IconCorner = Instance.new("UICorner")
    IconCorner.CornerRadius = UDim.new(1, 0)
    IconCorner.Parent = Icon

    local IconText = Instance.new("TextLabel")
    IconText.Size = UDim2.fromScale(1, 1)
    IconText.BackgroundTransparency = 1
    IconText.Text = Icons[Name] or "•"
    IconText.TextColor3 = MUTED
    IconText.Font = Enum.Font.GothamBold
    IconText.TextSize = 15
    IconText.ZIndex = 24
    IconText.Parent = Icon

    local Text = Instance.new("TextLabel")
    Text.Size = UDim2.new(1, -52, 1, 0)
    Text.Position = UDim2.fromOffset(48, 0)
    Text.BackgroundTransparency = 1
    Text.Text = Name
    Text.TextColor3 = MUTED
    Text.Font = Enum.Font.GothamMedium
    Text.TextSize = 10
    Text.TextXAlignment = Enum.TextXAlignment.Left
    Text.ZIndex = 23
    Text.Parent = Button

    SidebarButtons[Name] = {
        Button = Button,
        Icon = Icon,
        IconText = IconText,
        Text = Text
    }

    return Button
end

local HomeButton = CreateSidebarButton("Home")
local EggButton = CreateSidebarButton("Steal a Egg")
local BloxButton = CreateSidebarButton("Blox Fruit")
local BladeButton = CreateSidebarButton("Blade Ball")

--==================================================
-- SELECT SIDEBAR
--==================================================

local function SelectSidebar(Name)

    for ButtonName, Data in pairs(SidebarButtons) do

        local Selected = ButtonName == Name

        if Selected then

            TweenService:Create(
                Data.Button,
                TweenInfo.new(0.18),
                {
                    BackgroundTransparency = 0.82,
                    BackgroundColor3 = ACCENT
                }
            ):Play()

            TweenService:Create(
                Data.Icon,
                TweenInfo.new(0.18),
                {
                    BackgroundTransparency = 0.05,
                    BackgroundColor3 = ACCENT2
                }
            ):Play()

            Data.IconText.TextColor3 = WHITE
            Data.Text.TextColor3 = WHITE
            Data.Text.Font = Enum.Font.GothamBold

        else

            TweenService:Create(
                Data.Button,
                TweenInfo.new(0.18),
                {
                    BackgroundTransparency = 0.96,
                    BackgroundColor3 = Color3.fromRGB(255,255,255)
                }
            ):Play()

            TweenService:Create(
                Data.Icon,
                TweenInfo.new(0.18),
                {
                    BackgroundTransparency = 0.94,
                    BackgroundColor3 = Color3.fromRGB(255,255,255)
                }
            ):Play()

            Data.IconText.TextColor3 = MUTED
            Data.Text.TextColor3 = MUTED
            Data.Text.Font = Enum.Font.GothamMedium

        end
    end
end

--==================================================
-- SCRIPT CARD
--==================================================

local function CreateScriptCard(Item, Index)

    local Card = Instance.new("Frame")
    Card.Name = "Script_" .. Index
    Card.Size = UDim2.new(1, 0, 0, 55)
    Card.BackgroundColor3 = PANEL2
    Card.BackgroundTransparency = 0.28
    Card.BorderSizePixel = 0
    Card.ZIndex = 23
    Card.Parent = ScriptScroll

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 14)
    Corner.Parent = Card

    local Stroke = Instance.new("UIStroke")
    Stroke.Color = Color3.fromRGB(90, 95, 120)
    Stroke.Transparency = 0.82
    Stroke.Thickness = 1
    Stroke.Parent = Card

    -- ICON

    local Icon = Instance.new("Frame")
    Icon.Size = UDim2.fromOffset(35, 35)
    Icon.Position = UDim2.fromOffset(9, 10)
    Icon.BackgroundColor3 = ACCENT
    Icon.BackgroundTransparency = 0.78
    Icon.BorderSizePixel = 0
    Icon.ZIndex = 24
    Icon.Parent = Card

    local IconCorner = Instance.new("UICorner")
    IconCorner.CornerRadius = UDim.new(1, 0)
    IconCorner.Parent = Icon

    local IconText = Instance.new("TextLabel")
    IconText.Size = UDim2.fromScale(1, 1)
    IconText.BackgroundTransparency = 1
    IconText.Text = "✦"
    IconText.TextColor3 = WHITE
    IconText.Font = Enum.Font.GothamBold
    IconText.TextSize = 14
    IconText.ZIndex = 25
    IconText.Parent = Icon

    -- NAME

    local Name = Instance.new("TextLabel")
    Name.Size = UDim2.new(1, -155, 0, 25)
    Name.Position = UDim2.fromOffset(54, 7)
    Name.BackgroundTransparency = 1
    Name.Text = Item.Name
    Name.TextColor3 = WHITE
    Name.Font = Enum.Font.GothamBold
    Name.TextSize = 12
    Name.TextXAlignment = Enum.TextXAlignment.Left
    Name.TextTruncate = Enum.TextTruncate.AtEnd
    Name.ZIndex = 24
    Name.Parent = Card

    local Type = Instance.new("TextLabel")
    Type.Size = UDim2.new(1, -155, 0, 18)
    Type.Position = UDim2.fromOffset(54, 29)
    Type.BackgroundTransparency = 1
    Type.Text = "Script Loader  •  #" .. Index
    Type.TextColor3 = MUTED
    Type.Font = Enum.Font.Gotham
    Type.TextSize = 8
    Type.TextXAlignment = Enum.TextXAlignment.Left
    Type.ZIndex = 24
    Type.Parent = Card

    -- EXECUTE

    local Execute = Instance.new("TextButton")
    Execute.Size = UDim2.fromOffset(74, 31)
    Execute.Position = UDim2.new(1, -84, 0.5, -15)
    Execute.BackgroundColor3 = ACCENT
    Execute.BackgroundTransparency = 0.08
    Execute.BorderSizePixel = 0
    Execute.Text = "RUN  ›"
    Execute.TextColor3 = WHITE
    Execute.Font = Enum.Font.GothamBold
    Execute.TextSize = 9
    Execute.AutoButtonColor = false
    Execute.ZIndex = 25
    Execute.Parent = Card

    local ExecuteCorner = Instance.new("UICorner")
    ExecuteCorner.CornerRadius = UDim.new(1, 0)
    ExecuteCorner.Parent = Execute

    Execute.MouseEnter:Connect(function()

        TweenService:Create(
            Card,
            TweenInfo.new(0.15),
            {
                BackgroundTransparency = 0.12
            }
        ):Play()

        TweenService:Create(
            Execute,
            TweenInfo.new(0.15),
            {
                BackgroundColor3 = ACCENT2
            }
        ):Play()

    end)

    Execute.MouseLeave:Connect(function()

        TweenService:Create(
            Card,
            TweenInfo.new(0.15),
            {
                BackgroundTransparency = 0.28
            }
        ):Play()

        TweenService:Create(
            Execute,
            TweenInfo.new(0.15),
            {
                BackgroundColor3 = ACCENT
            }
        ):Play()

    end)

    Execute.MouseButton1Click:Connect(function()

        Execute.Text = "RUNNING..."

        task.spawn(function()

            local Success, Error = pcall(function()
                loadstring(Item.Code)()
            end)

            if Success then
                Execute.Text = "DONE ✓"
            else
                Execute.Text = "ERROR"
                warn("[QuocAnhMenu] " .. tostring(Error))
            end

            task.wait(1.2)

            if Execute.Parent then
                Execute.Text = "RUN  ›"
            end

        end)

    end)

    return Card
end

--==================================================
-- HOME
--==================================================

local function CreateHome()

    ClearScripts()

    CategoryTitle.Text = "Welcome back"
    CategoryInfo.Text = "Quoc Anh Menu • Select a game category"

    local Total = 0

    for _, List in pairs(Scripts) do
        Total += #List
    end

    UpdateCount(Total)

    local HomeCard = Instance.new("Frame")
    HomeCard.Size = UDim2.new(1, 0, 0, 92)
    HomeCard.BackgroundColor3 = ACCENT
    HomeCard.BackgroundTransparency = 0.76
    HomeCard.BorderSizePixel = 0
    HomeCard.ZIndex = 23
    HomeCard.Parent = ScriptScroll

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 17)
    Corner.Parent = HomeCard

    local HomeTitle = Instance.new("TextLabel")
    HomeTitle.Size = UDim2.new(1, -25, 0, 28)
    HomeTitle.Position = UDim2.fromOffset(15, 12)
    HomeTitle.BackgroundTransparency = 1
    HomeTitle.Text = "👑  QUOC ANH MENU"
    HomeTitle.TextColor3 = WHITE
    HomeTitle.Font = Enum.Font.GothamBlack
    HomeTitle.TextSize = 17
    HomeTitle.TextXAlignment = Enum.TextXAlignment.Left
    HomeTitle.ZIndex = 24
    HomeTitle.Parent = HomeCard

    local HomeSub = Instance.new("TextLabel")
    HomeSub.Size = UDim2.new(1, -25, 0, 32)
    HomeSub.Position = UDim2.fromOffset(16, 45)
    HomeSub.BackgroundTransparency = 1
    HomeSub.Text = "Choose a category on the left to browse available scripts."
    HomeSub.TextColor3 = Color3.fromRGB(220, 220, 240)
    HomeSub.Font = Enum.Font.Gotham
    HomeSub.TextSize = 9
    HomeSub.TextXAlignment = Enum.TextXAlignment.Left
    HomeSub.ZIndex = 24
    HomeSub.Parent = HomeCard

    -- STAT CARDS

    local X = 0

    for Category, List in pairs(Scripts) do

        local Stat = Instance.new("Frame")
        Stat.Size = UDim2.new(0.32, -4, 0, 72)
        Stat.Position = UDim2.new(X, 0, 0, 103)
        Stat.BackgroundColor3 = PANEL2
        Stat.BackgroundTransparency = 0.25
        Stat.BorderSizePixel = 0
        Stat.ZIndex = 23
        Stat.Parent = ScriptScroll

        local StatCorner = Instance.new("UICorner")
        StatCorner.CornerRadius = UDim.new(0, 15)
        StatCorner.Parent = Stat

        local Num = Instance.new("TextLabel")
        Num.Size = UDim2.new(1, 0, 0, 32)
        Num.Position = UDim2.fromOffset(0, 9)
        Num.BackgroundTransparency = 1
        Num.Text = tostring(#List)
        Num.TextColor3 = WHITE
        Num.Font = Enum.Font.GothamBlack
        Num.TextSize = 20
        Num.ZIndex = 24
        Num.Parent = Stat

        local Cat = Instance.new("TextLabel")
        Cat.Size = UDim2.new(1, -6, 0, 20)
        Cat.Position = UDim2.fromOffset(3, 43)
        Cat.BackgroundTransparency = 1
        Cat.Text = Category
        Cat.TextColor3 = MUTED
        Cat.Font = Enum.Font.GothamMedium
        Cat.TextSize = 8
        Cat.TextTruncate = Enum.TextTruncate.AtEnd
        Cat.ZIndex = 24
        Cat.Parent = Stat

        X += 0.335

    end

end

--==================================================
-- SHOW CATEGORY
--==================================================

local function ShowCategory(Category)

    CurrentCategory = Category

    SelectSidebar(Category)

    if Category == "Home" then
        CreateHome()
        return
    end

    ClearScripts()

    local List = Scripts[Category] or {}

    CategoryTitle.Text = Category
    CategoryInfo.Text = "Available scripts for " .. Category
    UpdateCount(#List)

    for Index, Item in ipairs(List) do
        CreateScriptCard(Item, Index)
    end

end

--==================================================
-- SIDEBAR EVENTS
--==================================================

HomeButton.MouseButton1Click:Connect(function()
    ShowCategory("Home")
end)

EggButton.MouseButton1Click:Connect(function()
    ShowCategory("Steal a Egg")
end)

BloxButton.MouseButton1Click:Connect(function()
    ShowCategory("Blox Fruit")
end)

BladeButton.MouseButton1Click:Connect(function()
    ShowCategory("Blade Ball")
end)

--==================================================
-- SEARCH
--==================================================

Search:GetPropertyChangedSignal("Text"):Connect(function()

    local Query = string.lower(Search.Text or "")

    if Query == "" then

        ShowCategory(CurrentCategory)

        return
    end

    if CurrentCategory == "Home" then

        ClearScripts()

        CategoryTitle.Text = "Search"
        CategoryInfo.Text = "Searching all available scripts"

        local Results = {}

        for Category, List in pairs(Scripts) do

            for _, Item in ipairs(List) do

                if string.find(
                    string.lower(Item.Name),
                    Query,
                    1,
                    true
                ) then

                    table.insert(
                        Results,
                        {
                            Item = Item,
                            Category = Category
                        }
                    )

                end

            end

        end

        UpdateCount(#Results)

        for Index, Result in ipairs(Results) do

            local Card = CreateScriptCard(Result.Item, Index)

            local Type = Card:FindFirstChildOfClass("TextLabel")

            if Type then
                -- keep card clean
            end

        end

        return
    end

    local List = Scripts[CurrentCategory] or {}

    ClearScripts()

    local Found = 0

    for _, Item in ipairs(List) do

        if string.find(
            string.lower(Item.Name),
            Query,
            1,
            true
        ) then

            Found += 1

            CreateScriptCard(Item, Found)

        end

    end

    UpdateCount(Found)

end)

--==================================================
-- START
--==================================================

ShowCategory("Home")
--// QUOC ANH MENU V5
--// PART 3/3
--// FLOATING ROUND BUTTON + ANIMATIONS + RESPONSIVE

--==================================================
-- FLOATING CROWN BUTTON
--==================================================

local CrownButton = Instance.new("TextButton")
CrownButton.Name = "FloatingCrown"
CrownButton.Size = UDim2.fromOffset(64, 64)
CrownButton.Position = UDim2.new(0, 22, 0.5, -32)
CrownButton.BackgroundColor3 = ACCENT
CrownButton.BackgroundTransparency = 0.08
CrownButton.BorderSizePixel = 0
CrownButton.Text = "👑"
CrownButton.TextColor3 = WHITE
CrownButton.Font = Enum.Font.GothamBold
CrownButton.TextSize = 27
CrownButton.AutoButtonColor = false
CrownButton.ZIndex = 100
CrownButton.Parent = ScreenGui

local CrownCorner = Instance.new("UICorner")
CrownCorner.CornerRadius = UDim.new(1, 0)
CrownCorner.Parent = CrownButton

local CrownStroke = Instance.new("UIStroke")
CrownStroke.Color = Color3.fromRGB(190, 165, 255)
CrownStroke.Transparency = 0.25
CrownStroke.Thickness = 1.5
CrownStroke.Parent = CrownButton

local CrownScale = Instance.new("UIScale")
CrownScale.Scale = 1
CrownScale.Parent = CrownButton

--==================================================
-- CROWN HOVER
--==================================================

CrownButton.MouseEnter:Connect(function()

    TweenService:Create(
        CrownScale,
        TweenInfo.new(
            0.18,
            Enum.EasingStyle.Back,
            Enum.EasingDirection.Out
        ),
        {
            Scale = 1.1
        }
    ):Play()

    TweenService:Create(
        CrownButton,
        TweenInfo.new(0.18),
        {
            BackgroundColor3 = ACCENT2
        }
    ):Play()

end)

CrownButton.MouseLeave:Connect(function()

    TweenService:Create(
        CrownScale,
        TweenInfo.new(
            0.18,
            Enum.EasingStyle.Back,
            Enum.EasingDirection.Out
        ),
        {
            Scale = 1
        }
    ):Play()

    TweenService:Create(
        CrownButton,
        TweenInfo.new(0.18),
        {
            BackgroundColor3 = ACCENT
        }
    ):Play()

end)

--==================================================
-- OPEN / CLOSE
--==================================================

local Open = true

local function OpenMenu()

    Open = true

    Main.Visible = true

    Main.Size = UDim2.fromOffset(680, 380)

    Main.BackgroundTransparency = 1

    TweenService:Create(
        Main,
        TweenInfo.new(
            0.32,
            Enum.EasingStyle.Quint,
            Enum.EasingDirection.Out
        ),
        {
            Size = UDim2.fromOffset(720, 405),
            BackgroundTransparency = 0.18
        }
    ):Play()

    TweenService:Create(
        CrownScale,
        TweenInfo.new(0.2),
        {
            Scale = 0.9
        }
    ):Play()

    task.delay(0.12, function()

        TweenService:Create(
            CrownScale,
            TweenInfo.new(
                0.25,
                Enum.EasingStyle.Back,
                Enum.EasingDirection.Out
            ),
            {
                Scale = 1
            }
        ):Play()

    end)

end

local function CloseMenu()

    Open = false

    local Tween = TweenService:Create(
        Main,
        TweenInfo.new(
            0.25,
            Enum.EasingStyle.Quint,
            Enum.EasingDirection.In
        ),
        {
            Size = UDim2.fromOffset(680, 380),
            BackgroundTransparency = 1
        }
    )

    Tween:Play()

    Tween.Completed:Connect(function()

        if not Open then
            Main.Visible = false
        end

    end)

end

CrownButton.MouseButton1Click:Connect(function()

    if Open then
        CloseMenu()
    else
        OpenMenu()
    end

end)

--==================================================
-- DRAG CROWN
--==================================================

MakeDraggable(CrownButton, CrownButton)

--==================================================
-- MOBILE RESPONSIVE SCALE
--==================================================

local Camera = workspace.CurrentCamera

local UIScale = Instance.new("UIScale")
UIScale.Scale = 1
UIScale.Parent = Main

local function UpdateScale()

    if not Camera then
        return
    end

    local Viewport = Camera.ViewportSize

    local ScaleX = Viewport.X / 760
    local ScaleY = Viewport.Y / 450

    local Scale = math.min(ScaleX, ScaleY)

    Scale = math.clamp(
        Scale,
        0.72,
        1
    )

    UIScale.Scale = Scale

end

UpdateScale()

if Camera then

    Camera:GetPropertyChangedSignal("ViewportSize"):Connect(
        UpdateScale
    )

end

--==================================================
-- MENU FADE / HOVER
--==================================================

Main.MouseEnter:Connect(function()

    TweenService:Create(
        MainStroke,
        TweenInfo.new(0.2),
        {
            Transparency = 0.25
        }
    ):Play()

end)

Main.MouseLeave:Connect(function()

    TweenService:Create(
        MainStroke,
        TweenInfo.new(0.2),
        {
            Transparency = 0.45
        }
    ):Play()

end)

--==================================================
-- FINAL
--==================================================

print("====================================")
print("      QUOC ANH MENU V5 LOADED")
print("====================================")
print("Home       : Ready")
print("Steal Egg  : " .. #Scripts["Steal a Egg"])
print("Blox Fruit : " .. #Scripts["Blox Fruit"])
print("Blade Ball : " .. #Scripts["Blade Ball"])
print("====================================")
