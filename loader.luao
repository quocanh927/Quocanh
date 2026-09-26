--// QUOC ANH MENU
--// PART 1/3
--// Glass UI + Services + Script Database

repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local LocalPlayer = Players.LocalPlayer

--==================================================
-- CONFIG
--==================================================

local CONFIG = {
    Name = "QuocAnhMenu",
    DisplayOrder = 10,

    MainSize = UDim2.fromOffset(560, 350),

    MainColor = Color3.fromRGB(18, 18, 24),
    CardColor = Color3.fromRGB(30, 30, 38),
    Accent = Color3.fromRGB(120, 170, 255),

    MainTransparency = 0.42,
    HeaderTransparency = 0.28,
    SidebarTransparency = 0.35,
    CardTransparency = 0.12,

    TextColor = Color3.fromRGB(245, 245, 250),
    SubTextColor = Color3.fromRGB(165, 165, 180),
}

--==================================================
-- CLEAN OLD GUI
--==================================================

pcall(function()
    local old = CoreGui:FindFirstChild(CONFIG.Name)
    if old then
        old:Destroy()
    end
end)

pcall(function()
    local old = LocalPlayer.PlayerGui:FindFirstChild(CONFIG.Name)
    if old then
        old:Destroy()
    end
end)

--==================================================
-- SCRIPT DATABASE
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
            Name = "Fake Admin [VIP] KEY",
            Code = [[
loadstring(game:HttpGet("https://pastefy.app/t06eyyrw/raw"))()
]]
        },
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
        },
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
        },
    }
}

--==================================================
-- GUI
--==================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = CONFIG.Name
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
ScreenGui.DisplayOrder = CONFIG.DisplayOrder

pcall(function()
    ScreenGui.Parent = CoreGui
end)

if not ScreenGui.Parent then
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end

--==================================================
-- MAIN
--==================================================

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = CONFIG.MainSize
Main.Position = UDim2.fromScale(0.5, 0.5)
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = CONFIG.MainColor

-- IMPORTANT:
-- Transparent background allows text/UI behind the menu
-- to remain visible through the glass.
Main.BackgroundTransparency = CONFIG.MainTransparency

Main.BorderSizePixel = 0
Main.ZIndex = 10
Main.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 16)
MainCorner.Parent = Main

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(100, 100, 125)
MainStroke.Transparency = 0.55
MainStroke.Thickness = 1
MainStroke.Parent = Main

--==================================================
-- GLASS BACKGROUND
--==================================================

local Glass = Instance.new("Frame")
Glass.Name = "Glass"
Glass.Size = UDim2.fromScale(1, 1)
Glass.Position = UDim2.fromScale(0, 0)
Glass.BackgroundColor3 = Color3.fromRGB(20, 20, 28)
Glass.BackgroundTransparency = 0.72
Glass.BorderSizePixel = 0
Glass.ZIndex = 11
Glass.Parent = Main

local GlassCorner = Instance.new("UICorner")
GlassCorner.CornerRadius = UDim.new(0, 16)
GlassCorner.Parent = Glass

--==================================================
-- HEADER
--==================================================

local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1, -20, 0, 48)
Header.Position = UDim2.fromOffset(10, 10)
Header.BackgroundColor3 = Color3.fromRGB(25, 25, 34)
Header.BackgroundTransparency = CONFIG.HeaderTransparency
Header.BorderSizePixel = 0
Header.ZIndex = 20
Header.Parent = Main

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0, 12)
HeaderCorner.Parent = Header

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, -20, 1, 0)
Title.Position = UDim2.fromOffset(12, 0)
Title.BackgroundTransparency = 1
Title.Text = "👑  QuocAnhMenu"
Title.TextColor3 = CONFIG.TextColor
Title.TextSize = 19
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 21
Title.Parent = Header

--==================================================
-- SEARCH
--==================================================

local Search = Instance.new("TextBox")
Search.Name = "Search"
Search.Size = UDim2.fromOffset(155, 32)
Search.Position = UDim2.new(1, -165, 0, 8)
Search.BackgroundColor3 = Color3.fromRGB(15, 15, 21)
Search.BackgroundTransparency = 0.22
Search.BorderSizePixel = 0
Search.PlaceholderText = "🔍 Search..."
Search.PlaceholderColor3 = Color3.fromRGB(130, 130, 145)
Search.Text = ""
Search.TextColor3 = CONFIG.TextColor
Search.TextSize = 12
Search.Font = Enum.Font.Gotham
Search.ClearTextOnFocus = false
Search.ZIndex = 22
Search.Parent = Header

local SearchCorner = Instance.new("UICorner")
SearchCorner.CornerRadius = UDim.new(0, 9)
SearchCorner.Parent = Search

--==================================================
-- SIDEBAR
--==================================================

local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.new(0, 145, 1, -78)
Sidebar.Position = UDim2.fromOffset(10, 68)
Sidebar.BackgroundColor3 = Color3.fromRGB(25, 25, 34)
Sidebar.BackgroundTransparency = CONFIG.SidebarTransparency
Sidebar.BorderSizePixel = 0
Sidebar.ZIndex = 20
Sidebar.Parent = Main

local SidebarCorner = Instance.new("UICorner")
SidebarCorner.CornerRadius = UDim.new(0, 12)
SidebarCorner.Parent = Sidebar

local SidePadding = Instance.new("UIPadding")
SidePadding.PaddingTop = UDim.new(0, 10)
SidePadding.PaddingLeft = UDim.new(0, 8)
SidePadding.PaddingRight = UDim.new(0, 8)
SidePadding.Parent = Sidebar

local SideLayout = Instance.new("UIListLayout")
SideLayout.Padding = UDim.new(0, 7)
SideLayout.SortOrder = Enum.SortOrder.LayoutOrder
SideLayout.Parent = Sidebar

--==================================================
-- CONTENT
--==================================================

local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Size = UDim2.new(1, -165, 1, -78)
Content.Position = UDim2.fromOffset(155, 68)
Content.BackgroundTransparency = 1
Content.BorderSizePixel = 0
Content.ZIndex = 20
Content.Parent = Main

--==================================================
-- SCROLL
--==================================================

local Scroll = Instance.new("ScrollingFrame")
Scroll.Name = "Scroll"
Scroll.Size = UDim2.new(1, -8, 1, -8)
Scroll.Position = UDim2.fromOffset(4, 4)
Scroll.BackgroundTransparency = 1
Scroll.BorderSizePixel = 0
Scroll.ScrollBarThickness = 3
Scroll.ScrollBarImageTransparency = 0.35
Scroll.CanvasSize = UDim2.fromOffset(0, 0)
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
Scroll.ScrollingDirection = Enum.ScrollingDirection.Y
Scroll.ZIndex = 25
Scroll.Parent = Content

local ScrollPadding = Instance.new("UIPadding")
ScrollPadding.PaddingTop = UDim.new(0, 4)
ScrollPadding.PaddingBottom = UDim.new(0, 10)
ScrollPadding.PaddingLeft = UDim.new(0, 4)
ScrollPadding.PaddingRight = UDim.new(0, 7)
ScrollPadding.Parent = Scroll

local ScrollLayout = Instance.new("UIListLayout")
ScrollLayout.Padding = UDim.new(0, 8)
ScrollLayout.SortOrder = Enum.SortOrder.LayoutOrder
ScrollLayout.Parent = Scroll
--// QUOC ANH MENU
--// PART 2/3
--// Home + Categories + Script Cards

--==================================================
-- VARIABLES
--==================================================

local CurrentCategory = "Home"
local CurrentSearch = ""

local CategoryButtons = {}
local ScriptCards = {}

--==================================================
-- CLEAR CONTENT
--==================================================

local function ClearContent()
    for _, obj in ipairs(Scroll:GetChildren()) do
        if not obj:IsA("UIListLayout")
        and not obj:IsA("UIPadding") then
            obj:Destroy()
        end
    end

    ScriptCards = {}
end

--==================================================
-- TEXT HELPER
--==================================================

local function CreateText(parent, text, size, position, font, color)
    local label = Instance.new("TextLabel")

    label.Size = size
    label.Position = position
    label.BackgroundTransparency = 1

    label.Text = text
    label.TextColor3 = color or CONFIG.TextColor
    label.TextSize = 14
    label.Font = font or Enum.Font.Gotham

    label.TextXAlignment = Enum.TextXAlignment.Left
    label.TextYAlignment = Enum.TextYAlignment.Center

    label.ZIndex = 30
    label.Parent = parent

    return label
end

--==================================================
-- HOME
--==================================================

local function CreateHome()

    ClearContent()

    local Welcome = Instance.new("Frame")
    Welcome.Size = UDim2.new(1, 0, 0, 82)
    Welcome.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    Welcome.BackgroundTransparency = 0.18
    Welcome.BorderSizePixel = 0
    Welcome.ZIndex = 26
    Welcome.Parent = Scroll

    local WelcomeCorner = Instance.new("UICorner")
    WelcomeCorner.CornerRadius = UDim.new(0, 12)
    WelcomeCorner.Parent = Welcome

    CreateText(
        Welcome,
        "👑  QuocAnhMenu",
        UDim2.new(1, -20, 0, 30),
        UDim2.fromOffset(12, 9),
        Enum.Font.GothamBold,
        CONFIG.TextColor
    )

    CreateText(
        Welcome,
        "Script hub • chọn game ở bên trái",
        UDim2.new(1, -20, 0, 25),
        UDim2.fromOffset(12, 43),
        Enum.Font.Gotham,
        CONFIG.SubTextColor
    )

    -- STATUS

    local Status = Instance.new("Frame")
    Status.Size = UDim2.new(1, 0, 0, 58)
    Status.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    Status.BackgroundTransparency = 0.2
    Status.BorderSizePixel = 0
    Status.ZIndex = 26
    Status.Parent = Scroll

    local StatusCorner = Instance.new("UICorner")
    StatusCorner.CornerRadius = UDim.new(0, 12)
    StatusCorner.Parent = Status

    CreateText(
        Status,
        "●  Online",
        UDim2.new(1, -20, 0, 25),
        UDim2.fromOffset(12, 7),
        Enum.Font.GothamBold,
        Color3.fromRGB(120, 255, 160)
    )

    CreateText(
        Status,
        "QuocAnhMenu is ready",
        UDim2.new(1, -20, 0, 20),
        UDim2.fromOffset(12, 32),
        Enum.Font.Gotham,
        CONFIG.SubTextColor
    )

    -- INFO

    local Info = Instance.new("Frame")
    Info.Size = UDim2.new(1, 0, 0, 110)
    Info.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    Info.BackgroundTransparency = 0.2
    Info.BorderSizePixel = 0
    Info.ZIndex = 26
    Info.Parent = Scroll

    local InfoCorner = Instance.new("UICorner")
    InfoCorner.CornerRadius = UDim.new(0, 12)
    InfoCorner.Parent = Info

    CreateText(
        Info,
        "Hướng dẫn",
        UDim2.new(1, -20, 0, 25),
        UDim2.fromOffset(12, 8),
        Enum.Font.GothamBold,
        CONFIG.TextColor
    )

    CreateText(
        Info,
        "• Chọn category ở sidebar",
        UDim2.new(1, -20, 0, 20),
        UDim2.fromOffset(12, 35),
        Enum.Font.Gotham,
        CONFIG.SubTextColor
    )

    CreateText(
        Info,
        "• Dùng 🔍 để tìm script",
        UDim2.new(1, -20, 0, 20),
        UDim2.fromOffset(12, 57),
        Enum.Font.Gotham,
        CONFIG.SubTextColor
    )

    CreateText(
        Info,
        "• Bấm script để execute",
        UDim2.new(1, -20, 0, 20),
        UDim2.fromOffset(12, 79),
        Enum.Font.Gotham,
        CONFIG.SubTextColor
    )
end

--==================================================
-- EXECUTE
--==================================================

local function ExecuteScript(code, card)

    if not code or code == "" then
        return
    end

    local oldText = card.Title.Text
    card.Title.Text = "⏳  Running..."

    task.spawn(function()

        local success, result = pcall(function()

            local fn, err = loadstring(code)

            if not fn then
                error(err or "loadstring failed")
            end

            return fn()

        end)

        if success then
            card.Title.Text = "✓  " .. oldText

            task.wait(1)

            if card and card.Parent then
                card.Title.Text = oldText
            end
        else
            card.Title.Text = "✕  Error"

            warn("[QuocAnhMenu]", result)

            task.wait(1.5)

            if card and card.Parent then
                card.Title.Text = oldText
            end
        end
    end)
end

--==================================================
-- CREATE SCRIPT CARD
--==================================================

local function CreateScriptCard(data)

    local Card = Instance.new("TextButton")

    Card.Name = data.Name
    Card.Size = UDim2.new(1, 0, 0, 50)

    Card.BackgroundColor3 = CONFIG.CardColor
    Card.BackgroundTransparency = CONFIG.CardTransparency

    Card.BorderSizePixel = 0

    Card.AutoButtonColor = false

    Card.Text = ""

    Card.ZIndex = 27
    Card.Parent = Scroll

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 11)
    Corner.Parent = Card

    local Stroke = Instance.new("UIStroke")
    Stroke.Color = Color3.fromRGB(85, 85, 105)
    Stroke.Transparency = 0.65
    Stroke.Thickness = 1
    Stroke.Parent = Card

    local Icon = Instance.new("TextLabel")
    Icon.Size = UDim2.fromOffset(36, 50)
    Icon.Position = UDim2.fromOffset(8, 0)
    Icon.BackgroundTransparency = 1
    Icon.Text = "▶"
    Icon.TextColor3 = CONFIG.Accent
    Icon.TextSize = 13
    Icon.Font = Enum.Font.GothamBold
    Icon.ZIndex = 28
    Icon.Parent = Card

    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Size = UDim2.new(1, -55, 1, 0)
    Title.Position = UDim2.fromOffset(45, 0)
    Title.BackgroundTransparency = 1
    Title.Text = data.Name
    Title.TextColor3 = CONFIG.TextColor
    Title.TextSize = 13
    Title.Font = Enum.Font.GothamMedium
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.ZIndex = 28
    Title.Parent = Card

    Card.Title = Title

    table.insert(ScriptCards, {
        Frame = Card,
        Data = data
    })

    -- HOVER

    Card.MouseEnter:Connect(function()

        TweenService:Create(
            Card,
            TweenInfo.new(0.15),
            {
                BackgroundColor3 = Color3.fromRGB(45, 45, 58),
                BackgroundTransparency = 0.04
            }
        ):Play()

        TweenService:Create(
            Stroke,
            TweenInfo.new(0.15),
            {
                Transparency = 0.2
            }
        ):Play()
    end)

    Card.MouseLeave:Connect(function()

        TweenService:Create(
            Card,
            TweenInfo.new(0.15),
            {
                BackgroundColor3 = CONFIG.CardColor,
                BackgroundTransparency = CONFIG.CardTransparency
            }
        ):Play()

        TweenService:Create(
            Stroke,
            TweenInfo.new(0.15),
            {
                Transparency = 0.65
            }
        ):Play()
    end)

    Card.Activated:Connect(function()
        ExecuteScript(data.Code, Card)
    end)

    return Card
end

--==================================================
-- SHOW CATEGORY
--==================================================

local function ShowCategory(category)

    CurrentCategory = category
    CurrentSearch = ""

    Search.Text = ""

    if category == "Home" then
        CreateHome()
        return
    end

    ClearContent()

    local list = Scripts[category]

    if not list then
        return
    end

    for _, data in ipairs(list) do
        CreateScriptCard(data)
    end
end

--==================================================
-- SEARCH
--==================================================

local function ApplySearch()

    local query = string.lower(Search.Text or "")

    CurrentSearch = query

    if CurrentCategory == "Home" then
        return
    end

    for _, item in ipairs(ScriptCards) do

        local name = string.lower(item.Data.Name)

        if query == "" or string.find(name, query, 1, true) then
            item.Frame.Visible = true
        else
            item.Frame.Visible = false
        end
    end
end

Search:GetPropertyChangedSignal("Text"):Connect(ApplySearch)

--==================================================
-- CATEGORY BUTTON
--==================================================

local function SetCategoryVisual(category)

    for name, button in pairs(CategoryButtons) do

        if name == category then

            TweenService:Create(
                button,
                TweenInfo.new(0.15),
                {
                    BackgroundColor3 = CONFIG.Accent,
                    BackgroundTransparency = 0.12
                }
            ):Play()

            button.TextColor3 = Color3.fromRGB(255,255,255)

        else

            TweenService:Create(
                button,
                TweenInfo.new(0.15),
                {
                    BackgroundColor3 = Color3.fromRGB(35,35,45),
                    BackgroundTransparency = 0.55
                }
            ):Play()

            button.TextColor3 = CONFIG.SubTextColor
        end
    end
end

--==================================================
-- MAKE CATEGORY
--==================================================

local function MakeCategory(name, icon)

    local Button = Instance.new("TextButton")

    Button.Name = name
    Button.Size = UDim2.new(1, 0, 0, 42)

    Button.BackgroundColor3 = Color3.fromRGB(35,35,45)
    Button.BackgroundTransparency = 0.55

    Button.BorderSizePixel = 0

    Button.AutoButtonColor = false

    Button.Text = icon .. "  " .. name

    Button.TextColor3 = CONFIG.SubTextColor
    Button.TextSize = 12
    Button.Font = Enum.Font.GothamMedium

    Button.TextXAlignment = Enum.TextXAlignment.Left

    Button.ZIndex = 25
    Button.Parent = Sidebar

    local Pad = Instance.new("UIPadding")
    Pad.PaddingLeft = UDim.new(0, 12)
    Pad.Parent = Button

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 9)
    Corner.Parent = Button

    CategoryButtons[name] = Button

    Button.MouseEnter:Connect(function()

        if CurrentCategory ~= name then
            TweenService:Create(
                Button,
                TweenInfo.new(0.12),
                {
                    BackgroundTransparency = 0.3
                }
            ):Play()
        end
    end)

    Button.MouseLeave:Connect(function()

        if CurrentCategory ~= name then
            TweenService:Create(
                Button,
                TweenInfo.new(0.12),
                {
                    BackgroundTransparency = 0.55
                }
            ):Play()
        end
    end)

    Button.Activated:Connect(function()

        SetCategoryVisual(name)
        ShowCategory(name)

    end)

    return Button
end

--==================================================
-- CREATE SIDEBAR
--==================================================

MakeCategory("Home", "⌂")
MakeCategory("Steal a Egg", "🥚")
MakeCategory("Blox Fruit", "🍎")
MakeCategory("Blade Ball", "⚔")

--==================================================
-- INITIAL
--==================================================

SetCategoryVisual("Home")
ShowCategory("Home")
--// QUOC ANH MENU
--// PART 3/3
--// Drag + Crown + Open/Close + Final Glass Fix

--==================================================
-- DRAG SYSTEM
--==================================================

local function MakeDraggable(object, handle)

    local dragging = false
    local dragStart
    local startPosition

    handle = handle or object

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

        if not dragging then
            return
        end

        if input.UserInputType ~= Enum.UserInputType.MouseMovement
        and input.UserInputType ~= Enum.UserInputType.Touch then
            return
        end

        local delta = input.Position - dragStart

        object.Position = UDim2.new(
            startPosition.X.Scale,
            startPosition.X.Offset + delta.X,
            startPosition.Y.Scale,
            startPosition.Y.Offset + delta.Y
        )
    end)
end

MakeDraggable(Main, Header)

--==================================================
-- CROWN BUTTON
--==================================================

local Crown = Instance.new("TextButton")

Crown.Name = "CrownButton"
Crown.Size = UDim2.fromOffset(54, 54)

Crown.Position = UDim2.new(
    0.5,
    0,
    0.5,
    -220
)

Crown.AnchorPoint = Vector2.new(0.5, 0.5)

Crown.BackgroundColor3 = Color3.fromRGB(25,25,32)
Crown.BackgroundTransparency = 0.08

Crown.BorderSizePixel = 0

Crown.Text = "👑"
Crown.TextSize = 24

Crown.AutoButtonColor = false

Crown.ZIndex = 100

Crown.Parent = ScreenGui

local CrownCorner = Instance.new("UICorner")
CrownCorner.CornerRadius = UDim.new(1, 0)
CrownCorner.Parent = Crown

local CrownStroke = Instance.new("UIStroke")
CrownStroke.Color = CONFIG.Accent
CrownStroke.Transparency = 0.25
CrownStroke.Thickness = 1.5
CrownStroke.Parent = Crown

--==================================================
-- CROWN DRAG
--==================================================

MakeDraggable(Crown, Crown)

--==================================================
-- OPEN / CLOSE
--==================================================

local Open = true
local Busy = false

local MainOriginalPosition = Main.Position

local function OpenMenu()

    if Busy or Open then
        return
    end

    Busy = true
    Open = true

    Main.Visible = true

    Main.Size = UDim2.fromOffset(500, 310)

    TweenService:Create(
        Main,
        TweenInfo.new(
            0.25,
            Enum.EasingStyle.Quint,
            Enum.EasingDirection.Out
        ),
        {
            Size = CONFIG.MainSize
        }
    ):Play()

    TweenService:Create(
        Crown,
        TweenInfo.new(0.2),
        {
            Rotation = -8
        }
    ):Play()

    task.delay(0.26, function()
        Busy = false
    end)
end

local function CloseMenu()

    if Busy or not Open then
        return
    end

    Busy = true
    Open = false

    local tween = TweenService:Create(
        Main,
        TweenInfo.new(
            0.2,
            Enum.EasingStyle.Quint,
            Enum.EasingDirection.In
        ),
        {
            Size = UDim2.fromOffset(500, 310)
        }
    )

    tween:Play()

    TweenService:Create(
        Crown,
        TweenInfo.new(0.2),
        {
            Rotation = 8
        }
    ):Play()

    task.delay(0.21, function()

        Main.Visible = false
        Busy = false

    end)
end

Crown.Activated:Connect(function()

    if Open then
        CloseMenu()
    else
        OpenMenu()
    end

end)

--==================================================
-- CROWN HOVER
--==================================================

Crown.MouseEnter:Connect(function()

    TweenService:Create(
        Crown,
        TweenInfo.new(0.12),
        {
            Size = UDim2.fromOffset(59,59),
            BackgroundTransparency = 0
        }
    ):Play()

end)

Crown.MouseLeave:Connect(function()

    TweenService:Create(
        Crown,
        TweenInfo.new(0.12),
        {
            Size = UDim2.fromOffset(54,54),
            BackgroundTransparency = 0.08
        }
    ):Play()

end)

--==================================================
-- FINAL GLASS LAYERING FIX
--==================================================

-- Main is intentionally translucent.
Main.BackgroundTransparency = 0.42

-- The glass layer is even more transparent so
-- objects/text behind the menu remain visible.
Glass.BackgroundTransparency = 0.72

-- Header stays readable but does not become a solid wall.
Header.BackgroundTransparency = 0.28

-- Sidebar remains semi-transparent.
Sidebar.BackgroundTransparency = 0.35

-- Content itself has no background.
Content.BackgroundTransparency = 1

-- Scroll itself has no background.
Scroll.BackgroundTransparency = 1

--==================================================
-- ZINDEX
--==================================================

-- Background
Glass.ZIndex = 11

-- Header
Header.ZIndex = 20
Title.ZIndex = 21
Search.ZIndex = 22

-- Sidebar
Sidebar.ZIndex = 20

-- Content
Content.ZIndex = 20
Scroll.ZIndex = 25

-- Buttons/cards
for _, button in pairs(CategoryButtons) do
    button.ZIndex = 25
end

--==================================================
-- KEEP MENU ABOVE GAME WORLD UI,
-- BUT NOT AN ABSURDLY HIGH DISPLAY ORDER
--==================================================

ScreenGui.DisplayOrder = 10

--==================================================
-- FINAL POSITION
--==================================================

Main.Position = UDim2.fromScale(0.5, 0.5)

--==================================================
-- FINAL PRINT
--==================================================

print("======================================")
print("👑 QuocAnhMenu loaded successfully")
print("📂 Categories: Home / Steal a Egg / Blox Fruit / Blade Ball")
print("🔍 Search enabled")
print("🪟 Glass transparency enabled")
print("======================================")
