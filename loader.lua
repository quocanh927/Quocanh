--// QUOCANHMENU
--// Glass UI Edition
--// 25 Scripts
--// Search / Drag / Animation / Home / Categories

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

pcall(function()
    local old = PlayerGui:FindFirstChild("QuocAnhMenu")
    if old then
        old:Destroy()
    end
end)

--==================================================
-- SETTINGS
--==================================================

local SETTINGS = {
    Width = 590,
    Height = 350,

    Background = Color3.fromRGB(15, 17, 24),
    Panel = Color3.fromRGB(24, 27, 37),

    Text = Color3.fromRGB(245, 246, 250),
    SubText = Color3.fromRGB(155, 160, 175),

    Accent = Color3.fromRGB(150, 110, 255),
    Accent2 = Color3.fromRGB(90, 150, 255),

    Button = Color3.fromRGB(255, 255, 255),

    Animation = 0.22
}

--==================================================
-- HELPERS
--==================================================

local function New(class, properties)
    local object = Instance.new(class)

    for property, value in pairs(properties) do
        object[property] = value
    end

    return object
end

local function Corner(object, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius)
    corner.Parent = object
    return corner
end

local function Stroke(object, color, transparency, thickness)
    local stroke = Instance.new("UIStroke")

    stroke.Color = color or Color3.new(1, 1, 1)
    stroke.Transparency = transparency or 0.8
    stroke.Thickness = thickness or 1

    stroke.Parent = object

    return stroke
end

local function Padding(object, left, right, top, bottom)
    local pad = Instance.new("UIPadding")

    pad.PaddingLeft = UDim.new(0, left or 0)
    pad.PaddingRight = UDim.new(0, right or 0)
    pad.PaddingTop = UDim.new(0, top or 0)
    pad.PaddingBottom = UDim.new(0, bottom or 0)

    pad.Parent = object

    return pad
end

local function Tween(object, properties, duration)
    local info = TweenInfo.new(
        duration or SETTINGS.Animation,
        Enum.EasingStyle.Quart,
        Enum.EasingDirection.Out
    )

    local tween = TweenService:Create(
        object,
        info,
        properties
    )

    tween:Play()

    return tween
end

local function SafeLoad(url)
    task.spawn(function()
        pcall(function()
            local source = game:HttpGet(url)
            local fn = loadstring(source)

            if fn then
                fn()
            end
        end)
    end)
end

--==================================================
-- SCRIPT DATA
--==================================================

local Scripts = {

    ["STEAL A EGG"] = {

        {
            Name = "Sever Hop",
            Icon = "↻",
            URL = "https://pastefy.app/YoZocJ8O/raw"
        },

        {
            Name = "Steal Egg",
            Icon = "🥚",
            URL = "https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"
        },

        {
            Name = "Spawner Pet",
            Icon = "🐾",
            URL = "https://raw.githubusercontent.com/chocolascript-glitch/Chocola-Pet-Spawner-steal-an-egg/refs/heads/main/script.lua"
        },

        {
            Name = "RealKid Hub",
            Icon = "◆",
            URL = "https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"
        },

        {
            Name = "Lennon Hub",
            Icon = "◆",
            URL = "https://raw.githubusercontent.com/lennonxscripts/lennonfarm/refs/heads/main/farmv1.lua"
        },

        {
            Name = "Miranda v2",
            Icon = "◆",
            URL = "https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/mirandaafk.lua"
        },

        {
            Name = "Miranda",
            Icon = "◆",
            URL = "https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"
        },

        {
            Name = "Chilli Hub",
            Icon = "🌶",
            URL = "https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"
        },

        {
            Name = "Foxname Hub",
            Icon = "◆",
            URL = "https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Fn-stealanegg.lua"
        },

        {
            Name = "Sena Hub",
            Icon = "◆",
            URL = "https://senahub.xyz/raw/loader"
        }

    },

    ["BLOX FRUIT"] = {

        {
            Name = "Red Hub",
            Icon = "🔴",
            URL = "https://raw.githubusercontent.com/bloxfruitsnokey/Redz/refs/heads/main/Redz/script.luau"
        },

        {
            Name = "Night Hub",
            Icon = "🌙",
            URL = "https://raw.githubusercontent.com/Dev-NightMystic/Bloxfruits/refs/heads/main/Script.lua"
        },

        {
            Name = "Gravity Hub",
            Icon = "◆",
            URL = "https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"
        },

        {
            Name = "Xynapse Hub",
            Icon = "◆",
            URL = "https://pastebin.com/raw/uECLqG3j"
        },

        {
            Name = "Zee Hub",
            Icon = "◆",
            URL = "https://link.trwxz.com/LS-Zee-Hub-VIP"
        },

        {
            Name = "Quantum Hub",
            Icon = "◆",
            URL = "https://pastebin.com/raw/r5h2r57F"
        },

        {
            Name = "Zinner Hub",
            Icon = "◆",
            URL = "https://raw.githubusercontent.com/HoangNguyenk8/Scripts/refs/heads/main/Loader.lua"
        },

        {
            Name = "Andepzai Hub",
            Icon = "◆",
            URL = "https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/main/AnDepZaiHubBeta.lua"
        },

        {
            Name = "OMG Hub",
            Icon = "◆",
            URL = "https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"
        },

        {
            Name = "Annie Hub",
            Icon = "◆",
            URL = "https://raw.githubusercontent.com/1st-Mars/Annie/main/1st.lua"
        }

    },

    ["BLADE BALL"] = {

        {
            Name = "KAZZ Hub",
            Icon = "◆",
            URL = "https://api.jnkie.com/api/v1/loaders/public/353accd2d41a5a30c879705a8ff47926fab2c8b7d7baf34d31c0522b8c6c0a41/download"
        },

        {
            Name = "Dryx Hub",
            Icon = "◆",
            URL = "https://raw.githubusercontent.com/Doortthemort/676/refs/heads/main/Main.lua"
        },

        {
            Name = "Arceney Hub",
            Icon = "◆",
            URL = "https://arceney.win/cdn/loader.luau?v=scrb"
        },

        {
            Name = "Wings Hub [Premium]",
            Icon = "◆",
            URL = "https://wings.ac/loader"
        },

        {
            Name = "Argon Hub",
            Icon = "◆",
            URL = "https://raw.githubusercontent.com/luwriy/jwhub/refs/heads/main/loader"
        }

    }

}

--==================================================
-- GUI
--==================================================

local Gui = New("ScreenGui", {
    Name = "QuocAnhMenu",
    Parent = PlayerGui,

    ResetOnSpawn = false,
    IgnoreGuiInset = true,

    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

    DisplayOrder = 999999
})

--==================================================
-- SHADOW
--==================================================

local Shadow = New("Frame", {
    Parent = Gui,

    Size = UDim2.fromOffset(
        SETTINGS.Width + 18,
        SETTINGS.Height + 18
    ),

    Position = UDim2.new(
        0.5,
        -(SETTINGS.Width / 2) - 9,
        0.5,
        -(SETTINGS.Height / 2) - 3
    ),

    BackgroundColor3 = Color3.new(0, 0, 0),

    BackgroundTransparency = 0.55
})

Corner(Shadow, 25)

--==================================================
-- MAIN
--==================================================

local Main = New("Frame", {
    Parent = Gui,

    Size = UDim2.fromOffset(
        SETTINGS.Width,
        SETTINGS.Height
    ),

    Position = UDim2.new(
        0.5,
        -SETTINGS.Width / 2,
        0.5,
        -SETTINGS.Height / 2
    ),

    BackgroundColor3 = SETTINGS.Background,

    BackgroundTransparency = 0.06
})

Corner(Main, 22)

Stroke(
    Main,
    Color3.fromRGB(255, 255, 255),
    0.82,
    1
)

--==================================================
-- BACKGROUND GLASS LAYERS
--==================================================

local Glass1 = New("Frame", {
    Parent = Main,

    Position = UDim2.fromOffset(1, 1),

    Size = UDim2.new(1, -2, 1, -2),

    BackgroundColor3 = Color3.fromRGB(255, 255, 255),

    BackgroundTransparency = 0.965,

    ZIndex = 1
})

Corner(Glass1, 21)

local Glass2 = New("Frame", {
    Parent = Main,

    Position = UDim2.fromOffset(2, 2),

    Size = UDim2.new(1, -4, 0, 70),

    BackgroundColor3 = SETTINGS.Accent,

    BackgroundTransparency = 0.94,

    ZIndex = 2
})

Corner(Glass2, 20)

--==================================================
-- TOP HIGHLIGHT
--==================================================

local Highlight = New("Frame", {
    Parent = Main,

    Position = UDim2.fromOffset(18, 1),

    Size = UDim2.new(1, -36, 0, 1),

    BackgroundColor3 = Color3.fromRGB(255, 255, 255),

    BackgroundTransparency = 0.65,

    ZIndex = 5
})

Corner(Highlight, 10)

--==================================================
-- HEADER
--==================================================

local Header = New("Frame", {
    Parent = Main,

    Position = UDim2.fromOffset(12, 8),

    Size = UDim2.new(1, -24, 0, 58),

    BackgroundTransparency = 1,

    ZIndex = 10
})

--==================================================
-- LOGO
--==================================================

local Logo = New("Frame", {
    Parent = Header,

    Position = UDim2.fromOffset(2, 5),

    Size = UDim2.fromOffset(46, 46),

    BackgroundColor3 = Color3.fromRGB(255, 255, 255),

    BackgroundTransparency = 0.91
})

Corner(Logo, 15)

Stroke(
    Logo,
    Color3.fromRGB(255, 255, 255),
    0.75,
    1
)

local LogoText = New("TextLabel", {
    Parent = Logo,

    Size = UDim2.fromScale(1, 1),

    BackgroundTransparency = 1,

    Text = "👑",

    TextSize = 21,

    ZIndex = 20
})

--==================================================
-- TITLE
--==================================================

local Title = New("TextLabel", {
    Parent = Header,

    Position = UDim2.fromOffset(60, 4),

    Size = UDim2.fromOffset(250, 26),

    BackgroundTransparency = 1,

    Text = "QuocAnhMenu",

    TextColor3 = SETTINGS.Text,

    TextSize = 19,

    Font = Enum.Font.GothamBold,

    TextXAlignment = Enum.TextXAlignment.Left
})

local Subtitle = New("TextLabel", {
    Parent = Header,

    Position = UDim2.fromOffset(61, 29),

    Size = UDim2.fromOffset(250, 18),

    BackgroundTransparency = 1,

    Text = "SCRIPT HUB  •  NO KEY",

    TextColor3 = SETTINGS.SubText,

    TextSize = 9,

    Font = Enum.Font.GothamMedium,

    TextXAlignment = Enum.TextXAlignment.Left
})

--==================================================
-- SEARCH
--==================================================

local SearchHolder = New("Frame", {
    Parent = Header,

    Position = UDim2.new(1, -185, 0, 9),

    Size = UDim2.fromOffset(120, 38),

    BackgroundColor3 = Color3.fromRGB(255, 255, 255),

    BackgroundTransparency = 0.91
})

Corner(SearchHolder, 12)

Stroke(
    SearchHolder,
    Color3.fromRGB(255, 255, 255),
    0.86,
    1
)

local SearchIcon = New("TextLabel", {
    Parent = SearchHolder,

    Position = UDim2.fromOffset(9, 0),

    Size = UDim2.fromOffset(24, 38),

    BackgroundTransparency = 1,

    Text = "⌕",

    TextColor3 = Color3.fromRGB(215, 217, 225),

    TextSize = 20,

    Font = Enum.Font.Gotham
})

local SearchBox = New("TextBox", {
    Parent = SearchHolder,

    Position = UDim2.fromOffset(31, 0),

    Size = UDim2.new(1, -38, 1, 0),

    BackgroundTransparency = 1,

    Text = "",

    PlaceholderText = "Search...",

    PlaceholderColor3 = Color3.fromRGB(135, 140, 155),

    TextColor3 = SETTINGS.Text,

    TextSize = 10,

    Font = Enum.Font.Gotham,

    ClearTextOnFocus = false
})

--==================================================
-- CLOSE
--==================================================

local Close = New("TextButton", {
    Parent = Header,

    Position = UDim2.new(1, -52, 0, 9),

    Size = UDim2.fromOffset(38, 38),

    BackgroundColor3 = Color3.fromRGB(255, 70, 90),

    BackgroundTransparency = 0.13,

    Text = "×",

    TextColor3 = Color3.new(1, 1, 1),

    TextSize = 22,

    Font = Enum.Font.GothamBold
})

Corner(Close, 12)

--==================================================
-- SIDEBAR
--==================================================

local Sidebar = New("Frame", {
    Parent = Main,

    Position = UDim2.fromOffset(12, 73),

    Size = UDim2.fromOffset(142, 265),

    BackgroundColor3 = Color3.fromRGB(255, 255, 255),

    BackgroundTransparency = 0.95,

    ZIndex = 5
})

Corner(Sidebar, 17)

Stroke(
    Sidebar,
    Color3.fromRGB(255, 255, 255),
    0.9,
    1
)

--==================================================
-- SIDEBAR HEADER
--==================================================

local SideHeader = New("TextLabel", {
    Parent = Sidebar,

    Position = UDim2.fromOffset(13, 10),

    Size = UDim2.new(1, -26, 0, 20),

    BackgroundTransparency = 1,

    Text = "LIBRARY",

    TextColor3 = Color3.fromRGB(125, 130, 145),

    TextSize = 8,

    Font = Enum.Font.GothamBold,

    TextXAlignment = Enum.TextXAlignment.Left
})

--==================================================
-- CONTENT
--==================================================

local Content = New("Frame", {
    Parent = Main,

    Position = UDim2.fromOffset(164, 73),

    Size = UDim2.new(1, -176, 265),

    BackgroundColor3 = Color3.fromRGB(255, 255, 255),

    BackgroundTransparency = 0.965,

    ZIndex = 5
})

Corner(Content, 17)

Stroke(
    Content,
    Color3.fromRGB(255, 255, 255),
    0.91,
    1
)

--==================================================
-- PAGE TITLE
--==================================================

local PageTitle = New("TextLabel", {
    Parent = Content,

    Position = UDim2.fromOffset(16, 10),

    Size = UDim2.new(1, -32, 0, 25),

    BackgroundTransparency = 1,

    Text = "HOME",

    TextColor3 = SETTINGS.Text,

    TextSize = 15,

    Font = Enum.Font.GothamBold,

    TextXAlignment = Enum.TextXAlignment.Left
})

local PageLine = New("Frame", {
    Parent = Content,

    Position = UDim2.fromOffset(16, 37),

    Size = UDim2.new(1, -32, 0, 1),

    BackgroundColor3 = Color3.fromRGB(255, 255, 255),

    BackgroundTransparency = 0.92
})

--==================================================
-- HOME
--==================================================

local HomeScroll = New("ScrollingFrame", {
    Parent = Content,

    Position = UDim2.fromOffset(14, 45),

    Size = UDim2.new(1, -28, 1, -55),

    BackgroundTransparency = 1,

    BorderSizePixel = 0,

    ScrollBarThickness = 3,

    ScrollBarImageColor3 = SETTINGS.Accent,

    ScrollBarImageTransparency = 0.3,

    CanvasSize = UDim2.new(0, 0, 0, 0),

    AutomaticCanvasSize = Enum.AutomaticSize.Y,

    ZIndex = 7
})

local HomeLayout = New("UIListLayout", {
    Parent = HomeScroll,

    Padding = UDim.new(0, 8),

    SortOrder = Enum.SortOrder.LayoutOrder
})

--==================================================
-- HOME CARD
--==================================================

local Welcome = New("Frame", {
    Parent = HomeScroll,

    Size = UDim2.new(1, -6, 0, 82),

    BackgroundColor3 = SETTINGS.Accent,

    BackgroundTransparency = 0.88,

    LayoutOrder = 1
})

Corner(Welcome, 13)

Stroke(
    Welcome,
    Color3.fromRGB(190, 170, 255),
    0.78,
    1
)

local WelcomeTitle = New("TextLabel", {
    Parent = Welcome,

    Position = UDim2.fromOffset(14, 10),

    Size = UDim2.new(1, -28, 0, 24),

    BackgroundTransparency = 1,

    Text = "Xin chào! Tôi là QuocAnhMenu 👋",

    TextColor3 = Color3.new(1, 1, 1),

    TextSize = 13,

    Font = Enum.Font.GothamBold,

    TextXAlignment = Enum.TextXAlignment.Left
})

local WelcomeDesc = New("TextLabel", {
    Parent = Welcome,

    Position = UDim2.fromOffset(14, 36),

    Size = UDim2.new(1, -28, 0, 36),

    BackgroundTransparency = 1,

    Text = "Tổng hợp nhiều script NoKey trong một menu nhỏ gọn. Chọn game bên trái để bắt đầu.",

    TextColor3 = Color3.fromRGB(205, 205, 220),

    TextSize = 10,

    Font = Enum.Font.Gotham,

    TextWrapped = true,

    TextXAlignment = Enum.TextXAlignment.Left,

    TextYAlignment = Enum.TextYAlignment.Top
})

--==================================================
-- HOME INFO CARDS
--==================================================

local function HomeCard(icon, title, text, order)
    local Card = New("Frame", {
        Parent = HomeScroll,

        Size = UDim2.new(1, -6, 0, 52),

        BackgroundColor3 = Color3.fromRGB(255, 255, 255),

        BackgroundTransparency = 0.94,

        LayoutOrder = order
    })

    Corner(Card, 11)

    Stroke(
        Card,
        Color3.fromRGB(255, 255, 255),
        0.91,
        1
    )

    local Icon = New("TextLabel", {
        Parent = Card,

        Position = UDim2.fromOffset(10, 8),

        Size = UDim2.fromOffset(36, 36),

        BackgroundColor3 = Color3.fromRGB(255, 255, 255),

        BackgroundTransparency = 0.9,

        Text = icon,

        TextSize = 16
    })

    Corner(Icon, 10)

    local T = New("TextLabel", {
        Parent = Card,

        Position = UDim2.fromOffset(56, 7),

        Size = UDim2.new(1, -68, 0, 18),

        BackgroundTransparency = 1,

        Text = title,

        TextColor3 = SETTINGS.Text,

        TextSize = 10,

        Font = Enum.Font.GothamBold,

        TextXAlignment = Enum.TextXAlignment.Left
    })

    local D = New("TextLabel", {
        Parent = Card,

        Position = UDim2.fromOffset(56, 25),

        Size = UDim2.new(1, -68, 0, 20),

        BackgroundTransparency = 1,

        Text = text,

        TextColor3 = SETTINGS.SubText,

        TextSize = 8,

        Font = Enum.Font.Gotham,

        TextWrapped = true,

        TextXAlignment = Enum.TextXAlignment.Left
    })

    return Card
end

HomeCard(
    "🔄",
    "Cập nhật",
    "Script sẽ được bổ sung và cập nhật thường xuyên.",
    2
)

HomeCard(
    "🔍",
    "Tìm kiếm",
    "Nhập tên script vào ô tìm kiếm ở phía trên.",
    3
)

HomeCard(
    "📂",
    "Danh mục",
    "Steal a Egg • Blox Fruit • Blade Ball.",
    4
)

HomeCard(
    "👑",
    "QuocAnhMenu",
    "Menu đang được phát triển thêm nhiều tính năng.",
    5
)

--==================================================
-- SCRIPT LIST
--==================================================

local ScriptScroll = New("ScrollingFrame", {
    Parent = Content,

    Position = UDim2.fromOffset(12, 45),

    Size = UDim2.new(1, -24, 1, -55),

    BackgroundTransparency = 1,

    BorderSizePixel = 0,

    ScrollBarThickness = 3,

    ScrollBarImageColor3 = SETTINGS.Accent,

    ScrollBarImageTransparency = 0.3,

    CanvasSize = UDim2.new(0, 0, 0, 0),

    AutomaticCanvasSize = Enum.AutomaticSize.Y,

    Visible = false,

    ZIndex = 7
})

local ScriptLayout = New("UIListLayout", {
    Parent = ScriptScroll,

    Padding = UDim.new(0, 7),

    SortOrder = Enum.SortOrder.LayoutOrder
})

--==================================================
-- CURRENT CATEGORY
--==================================================

local CurrentCategory = "HOME"

--==================================================
-- CATEGORY BUTTON
--==================================================

local CategoryButtons = {}

local function SetCategoryVisual(selected)
    for category, button in pairs(CategoryButtons) do
        local activeLine = button:FindFirstChild("ActiveLine")

        if category == selected then
            button.BackgroundColor3 = Color3.fromRGB(45, 45, 65)

            if activeLine then
                activeLine.BackgroundTransparency = 0
            end
        else
            button.BackgroundColor3 = Color3.fromRGB(25, 25, 35)

            if activeLine then
                activeLine.BackgroundTransparency = 1
            end
        end
    end
end
