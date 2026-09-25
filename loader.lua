--==================================================
-- QUOCANHMENU
-- PART 1/2
--==================================================

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

--==================================================
-- REMOVE OLD
--==================================================

pcall(function()
    local old = PlayerGui:FindFirstChild("QuocAnhMenu")
    if old then
        old:Destroy()
    end
end)

--==================================================
-- GUI
--==================================================

local Gui = Instance.new("ScreenGui")
Gui.Name = "QuocAnhMenu"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.DisplayOrder = 999999
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
Gui.Enabled = true
Gui.Parent = PlayerGui

--==================================================
-- COLORS
--==================================================

local C = {
    Background = Color3.fromRGB(17,17,24),
    Panel = Color3.fromRGB(25,25,34),
    Panel2 = Color3.fromRGB(34,34,46),
    Hover = Color3.fromRGB(44,42,62),
    Purple = Color3.fromRGB(150,100,255),
    Purple2 = Color3.fromRGB(105,72,190),
    White = Color3.fromRGB(245,245,250),
    Gray = Color3.fromRGB(160,160,175),
    DarkGray = Color3.fromRGB(105,105,120),
    Green = Color3.fromRGB(90,220,145)
}

--==================================================
-- VARIABLES
--==================================================

local MenuOpen = true
local CurrentCategory = "HOME"

local CategoryButtons = {}
local ScriptButtons = {}

--==================================================
-- HELPERS
--==================================================

local function New(class,parent,props)

    local obj = Instance.new(class)

    for property,value in pairs(props or {}) do
        obj[property] = value
    end

    obj.Parent = parent

    return obj
end

local function Corner(obj,radius)

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0,radius)
    c.Parent = obj

    return c
end

local function Stroke(obj,color,thickness,transparency)

    local s = Instance.new("UIStroke")

    s.Color = color
    s.Thickness = thickness or 1
    s.Transparency = transparency or 0

    s.Parent = obj

    return s
end

local function Tween(obj,time,properties)

    pcall(function()

        TweenService:Create(
            obj,
            TweenInfo.new(
                time,
                Enum.EasingStyle.Quad,
                Enum.EasingDirection.Out
            ),
            properties
        ):Play()

    end)
end

--==================================================
-- SCRIPT DATA
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/1st-Mars/Annie/main/1st.lua"))()
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
-- MAIN SHADOW
--==================================================

local Shadow = New("Frame",Gui,{
    Name = "Shadow",
    Size = UDim2.fromOffset(520,330),
    Position = UDim2.new(0.5,-260,0.5,-158),
    BackgroundColor3 = Color3.fromRGB(0,0,0),
    BackgroundTransparency = 0.55,
    BorderSizePixel = 0,
    ZIndex = 1
})

Corner(Shadow,18)

--==================================================
-- MAIN
--==================================================

local Main = New("Frame",Gui,{
    Name = "Main",
    Size = UDim2.fromOffset(520,330),
    Position = UDim2.new(0.5,-260,0.5,-165),
    BackgroundColor3 = C.Background,
    BackgroundTransparency = 0.08,
    BorderSizePixel = 0,
    ZIndex = 5,
    Active = true
})

Corner(Main,18)

Stroke(
    Main,
    Color3.fromRGB(80,75,105),
    1,
    0.35
)

--==================================================
-- HEADER
--==================================================

local Header = New("Frame",Main,{
    Name = "Header",
    Size = UDim2.new(1,0,0,48),
    Position = UDim2.fromOffset(0,0),
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    ZIndex = 10,
    Active = true
})

--==================================================
-- LOGO
--==================================================

local Logo = New("TextButton",Header,{
    Name = "Logo",
    Size = UDim2.fromOffset(34,34),
    Position = UDim2.fromOffset(9,7),
    BackgroundColor3 = C.Purple2,
    BorderSizePixel = 0,
    Text = "Q",
    TextColor3 = C.White,
    TextSize = 16,
    Font = Enum.Font.GothamBold,
    AutoButtonColor = false,
    ZIndex = 30,
    Active = true
})

Corner(Logo,17)

--==================================================
-- TITLE
--==================================================

local Title = New("TextLabel",Header,{
    Size = UDim2.new(0,170,0,22),
    Position = UDim2.fromOffset(50,5),
    BackgroundTransparency = 1,
    Text = "QuocAnhMenu",
    TextColor3 = C.White,
    TextSize = 14,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 20
})

local SubTitle = New("TextLabel",Header,{
    Size = UDim2.new(0,180,0,18),
    Position = UDim2.fromOffset(50,25),
    BackgroundTransparency = 1,
    Text = "Script Hub",
    TextColor3 = C.Gray,
    TextSize = 9,
    Font = Enum.Font.Gotham,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 20
})

--==================================================
-- SEARCH FRAME
--==================================================

local SearchFrame = New("Frame",Header,{
    Name = "SearchFrame",
    Size = UDim2.fromOffset(135,32),
    Position = UDim2.new(1,-180,0,8),
    BackgroundColor3 = C.Panel2,
    BorderSizePixel = 0,
    ZIndex = 20
})

Corner(SearchFrame,10)

Stroke(
    SearchFrame,
    Color3.fromRGB(70,70,90),
    1,
    0.55
)

local SearchIcon = New("TextLabel",SearchFrame,{
    Size = UDim2.fromOffset(25,32),
    Position = UDim2.fromOffset(5,0),
    BackgroundTransparency = 1,
    Text = "⌕",
    TextColor3 = C.White,
    TextSize = 20,
    Font = Enum.Font.GothamBold,
    ZIndex = 21
})

local SearchBox = New("TextBox",SearchFrame,{
    Size = UDim2.new(1,-34,1,0),
    Position = UDim2.fromOffset(31,0),
    BackgroundTransparency = 1,
    PlaceholderText = "Tìm script...",
    PlaceholderColor3 = C.DarkGray,
    Text = "",
    TextColor3 = C.White,
    TextSize = 10,
    Font = Enum.Font.Gotham,
    ClearTextOnFocus = false,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 22,
    Active = true
})

--==================================================
-- CLOSE
--==================================================

local Close = New("TextButton",Header,{
    Name = "Close",
    Size = UDim2.fromOffset(28,28),
    Position = UDim2.new(1,-38,0,10),
    BackgroundColor3 = C.Panel2,
    BorderSizePixel = 0,
    Text = "×",
    TextColor3 = C.White,
    TextSize = 18,
    Font = Enum.Font.GothamBold,
    AutoButtonColor = false,
    ZIndex = 30,
    Active = true
})

Corner(Close,14)

--==================================================
-- SIDEBAR
--==================================================

local Sidebar = New("Frame",Main,{
    Name = "Sidebar",
    Size = UDim2.fromOffset(135,265),
    Position = UDim2.fromOffset(10,55),
    BackgroundColor3 = C.Panel,
    BorderSizePixel = 0,
    ZIndex = 7
})

Corner(Sidebar,14)

Stroke(
    Sidebar,
    Color3.fromRGB(65,65,85),
    1,
    0.55
)

local SideTitle = New("TextLabel",Sidebar,{
    Size = UDim2.new(1,-20,0,25),
    Position = UDim2.fromOffset(10,8),
    BackgroundTransparency = 1,
    Text = "MENU",
    TextColor3 = C.Gray,
    TextSize = 9,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 10
})

local CategoryHolder = New("Frame",Sidebar,{
    Name = "CategoryHolder",
    Size = UDim2.new(1,-12,1,-42),
    Position = UDim2.fromOffset(6,35),
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    ZIndex = 8
})

local CategoryLayout = Instance.new("UIListLayout")
CategoryLayout.Padding = UDim.new(0,5)
CategoryLayout.SortOrder = Enum.SortOrder.LayoutOrder
CategoryLayout.Parent = CategoryHolder

--==================================================
-- CONTENT
--==================================================

local Content = New("Frame",Main,{
    Name = "Content",
    Size = UDim2.new(1,-157,1,-65),
    Position = UDim2.fromOffset(147,55),
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    ZIndex = 7
})

local ContentTitle = New("TextLabel",Content,{
    Size = UDim2.new(1,-5,0,24),
    Position = UDim2.fromOffset(4,0),
    BackgroundTransparency = 1,
    Text = "Trang chủ",
    TextColor3 = C.White,
    TextSize = 15,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 10
})

local ContentSub = New("TextLabel",Content,{
    Size = UDim2.new(1,-5,0,20),
    Position = UDim2.fromOffset(4,23),
    BackgroundTransparency = 1,
    Text = "Chào mừng đến với QuocAnhMenu",
    TextColor3 = C.Gray,
    TextSize = 9,
    Font = Enum.Font.Gotham,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 10
})

--==================================================
-- SCROLL
--==================================================

local Scroll = New("ScrollingFrame",Content,{
    Name = "Scroll",
    Size = UDim2.new(1,0,1,-50),
    Position = UDim2.fromOffset(0,48),
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    ScrollBarThickness = 3,
    ScrollBarImageColor3 = C.Purple,
    CanvasSize = UDim2.new(0,0,0,0),
    AutomaticCanvasSize = Enum.AutomaticSize.Y,
    ScrollingDirection = Enum.ScrollingDirection.Y,
    ZIndex = 8,
    Active = true
})

local ScrollLayout = Instance.new("UIListLayout")
ScrollLayout.Padding = UDim.new(0,7)
ScrollLayout.SortOrder = Enum.SortOrder.LayoutOrder
ScrollLayout.Parent = Scroll

local ScrollPadding = Instance.new("UIPadding")
ScrollPadding.PaddingTop = UDim.new(0,2)
ScrollPadding.PaddingBottom = UDim.new(0,8)
ScrollPadding.Parent = Scroll

--==================================================
-- HOME CARD
--==================================================

local HomeCard = New("Frame",Scroll,{
    Name = "HomeCard",
    Size = UDim2.new(1,-5,0,108),
    BackgroundColor3 = C.Panel,
    BorderSizePixel = 0,
    LayoutOrder = 1,
    ZIndex = 10
})

Corner(HomeCard,12)

Stroke(
    HomeCard,
    Color3.fromRGB(70,65,95),
    1,
    0.5
)

local HomeIcon = New("Frame",HomeCard,{
    Size = UDim2.fromOffset(42,42),
    Position = UDim2.fromOffset(10,10),
    BackgroundColor3 = C.Purple2,
    BorderSizePixel = 0,
    ZIndex = 12
})

Corner(HomeIcon,21)

local HomeIconText = New("TextLabel",HomeIcon,{
    Size = UDim2.fromScale(1,1),
    BackgroundTransparency = 1,
    Text = "👑",
    TextSize = 19,
    TextColor3 = C.White,
    Font = Enum.Font.GothamBold,
    ZIndex = 13
})

local HomeTitle = New("TextLabel",HomeCard,{
    Size = UDim2.new(1,-65,0,25),
    Position = UDim2.fromOffset(62,9),
    BackgroundTransparency = 1,
    Text = "Xin chào! Tôi là QuocAnhMenu 👋",
    TextColor3 = C.White,
    TextSize = 11,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 12
})

local HomeText = New("TextLabel",HomeCard,{
    Size = UDim2.new(1,-20,0,62),
    Position = UDim2.fromOffset(10,50),
    BackgroundTransparency = 1,
    Text = "Đây là script tổng hợp các script NoKey khác.\nMenu đang được cập nhật thêm script mới.\nHãy chọn mục ở bên trái để xem script.",
    TextColor3 = C.Gray,
    TextSize = 9,
    Font = Enum.Font.Gotham,
    TextWrapped = true,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Top,
    ZIndex = 12
})

--==================================================
-- INFO CARD
--==================================================

local InfoCard = New("Frame",Scroll,{
    Name = "InfoCard",
    Size = UDim2.new(1,-5,0,95),
    BackgroundColor3 = C.Panel,
    BorderSizePixel = 0,
    LayoutOrder = 2,
    ZIndex = 10
})

Corner(InfoCard,12)

Stroke(
    InfoCard,
    Color3.fromRGB(70,65,95),
    1,
    0.5
)

local InfoTitle = New("TextLabel",InfoCard,{
    Size = UDim2.new(1,-20,0,22),
    Position = UDim2.fromOffset(10,8),
    BackgroundTransparency = 1,
    Text = "Hướng dẫn",
    TextColor3 = C.White,
    TextSize = 11,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 12
})

local InfoText = New("TextLabel",InfoCard,{
    Size = UDim2.new(1,-20,0,58),
    Position = UDim2.fromOffset(10,32),
    BackgroundTransparency = 1,
    Text = "🥚 Steal a Egg: script cho Steal a Egg\n⚔ Blox Fruit: script cho Blox Fruits\n⚽ Blade Ball: script cho Blade Ball\n🔎 Dùng ô tìm kiếm để lọc script.",
    TextColor3 = C.Gray,
    TextSize = 9,
    Font = Enum.Font.Gotham,
    TextWrapped = true,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Top,
    ZIndex = 12
})

--==================================================
-- SCRIPT CLEAR
--==================================================

function ClearScripts()

    for _,button in ipairs(ScriptButtons) do

        if button and button.Parent then
            button:Destroy()
        end
    end

    ScriptButtons = {}
end

--==================================================
-- EXECUTE
--==================================================

function ExecuteScript(code)

    if type(code) ~= "string" or code == "" then
        return
    end

    task.spawn(function()

        local success,err = pcall(function()

            local fn = loadstring(code)

            if fn then
                fn()
            else
                error("loadstring không khả dụng")
            end

        end)

        if not success then
            warn("[QuocAnhMenu] Script Error:",err)
        end

    end)
end

--==================================================
-- SCRIPT BUTTON
--==================================================

function CreateScriptButton(data,index)

    local Button = New("TextButton",Scroll,{
        Name = "Script_" .. tostring(index),
        Size = UDim2.new(1,-5,0,43),
        BackgroundColor3 = C.Panel,
        BorderSizePixel = 0,
        Text = "",
        AutoButtonColor = false,
        LayoutOrder = index,
        ZIndex = 15,
        Active = true
    })

    Corner(Button,11)

    Stroke(
        Button,
        Color3.fromRGB(65,65,85),
        1,
        0.55
    )

    local IconCircle = New("Frame",Button,{
        Size = UDim2.fromOffset(29,29),
        Position = UDim2.fromOffset(7,7),
        BackgroundColor3 = C.Panel2,
        BorderSizePixel = 0,
        ZIndex = 16
    })

    Corner(IconCircle,15)

    local Icon = New("TextLabel",IconCircle,{
        Size = UDim2.fromScale(1,1),
        BackgroundTransparency = 1,
        Text = "▶",
        TextColor3 = C.Purple,
        TextSize = 10,
        Font = Enum.Font.GothamBold,
        ZIndex = 17
    })

    local Name = New("TextLabel",Button,{
        Size = UDim2.new(1,-48,1,0),
        Position = UDim2.fromOffset(45,0),
        BackgroundTransparency = 1,
        Text = tostring(data.Name),
        TextColor3 = C.White,
        TextSize = 10,
        Font = Enum.Font.GothamSemibold,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 17
    })

    Button.MouseEnter:Connect(function()

        Tween(Button,0.12,{
            BackgroundColor3 = C.Hover
        })

        Tween(IconCircle,0.12,{
            BackgroundColor3 = C.Purple2
        })
    end)

    Button.MouseLeave:Connect(function()

        Tween(Button,0.12,{
            BackgroundColor3 = C.Panel
        })

        Tween(IconCircle,0.12,{
            BackgroundColor3 = C.Panel2
        })
    end)

    Button.MouseButton1Click:Connect(function()
        ExecuteScript(data.Code)
    end)

    table.insert(ScriptButtons,Button)
end
--==================================================
-- QUOCANHMENU
-- PART 2/2
--==================================================

--==================================================
-- CATEGORY VISUAL
--==================================================

local function SetCategoryVisual(selected)

    for category,button in pairs(CategoryButtons) do

        local Line = button:FindFirstChild("ActiveLine")
        local IconCircle = button:FindFirstChild("IconCircle")

        if category == selected then

            Tween(button,0.12,{
                BackgroundColor3 = C.Hover
            })

            if Line then
                Tween(Line,0.12,{
                    BackgroundTransparency = 0
                })
            end

            if IconCircle then
                Tween(IconCircle,0.12,{
                    BackgroundColor3 = C.Purple2
                })
            end

        else

            Tween(button,0.12,{
                BackgroundColor3 = C.Panel
            })

            if Line then
                Tween(Line,0.12,{
                    BackgroundTransparency = 1
                })
            end

            if IconCircle then
                Tween(IconCircle,0.12,{
                    BackgroundColor3 = C.Panel2
                })
            end
        end
    end
end

--==================================================
-- SHOW HOME
--==================================================

local function ShowHome()

    CurrentCategory = "HOME"

    ClearScripts()

    HomeCard.Visible = true
    InfoCard.Visible = true

    ContentTitle.Text = "Trang chủ"
    ContentSub.Text = "Chào mừng đến với QuocAnhMenu"

    Scroll.CanvasPosition = Vector2.new(0,0)

    SetCategoryVisual("HOME")
end

--==================================================
-- SHOW CATEGORY
--==================================================

local function ShowCategory(category)

    if not Scripts[category] then
        return
    end

    CurrentCategory = category

    ClearScripts()

    HomeCard.Visible = false
    InfoCard.Visible = false

    ContentTitle.Text = category
    ContentSub.Text =
        tostring(#Scripts[category]) ..
        " script có sẵn"

    for index,data in ipairs(Scripts[category]) do
        CreateScriptButton(data,index)
    end

    Scroll.CanvasPosition = Vector2.new(0,0)

    SetCategoryVisual(category)
end

--==================================================
-- CATEGORY ICONS
--==================================================

local CategoryIcons = {
    ["HOME"] = "⌂",
    ["Steal a Egg"] = "🥚",
    ["Blox Fruit"] = "⚔",
    ["Blade Ball"] = "⚽"
}

local CategoryNames = {
    "HOME",
    "Steal a Egg",
    "Blox Fruit",
    "Blade Ball"
}

--==================================================
-- CREATE CATEGORY BUTTONS
--==================================================

for index,category in ipairs(CategoryNames) do

    local Button = New("TextButton",CategoryHolder,{
        Name = "Category_" .. category,
        Size = UDim2.new(1,0,0,45),
        BackgroundColor3 = C.Panel,
        BorderSizePixel = 0,
        Text = "",
        AutoButtonColor = false,
        LayoutOrder = index,
        ZIndex = 20,
        Active = true
    })

    Corner(Button,10)

    Stroke(
        Button,
        Color3.fromRGB(65,65,85),
        1,
        0.65
    )

    local IconCircle = New("Frame",Button,{
        Name = "IconCircle",
        Size = UDim2.fromOffset(30,30),
        Position = UDim2.fromOffset(6,7),
        BackgroundColor3 = C.Panel2,
        BorderSizePixel = 0,
        ZIndex = 21,
        Active = false
    })

    Corner(IconCircle,15)

    local Icon = New("TextLabel",IconCircle,{
        Size = UDim2.fromScale(1,1),
        BackgroundTransparency = 1,
        Text = CategoryIcons[category] or "•",
        TextColor3 = C.White,
        TextSize = 13,
        Font = Enum.Font.GothamBold,
        ZIndex = 22
    })

    local Name = New("TextLabel",Button,{
        Size = UDim2.new(1,-45,1,0),
        Position = UDim2.fromOffset(42,0),
        BackgroundTransparency = 1,
        Text = category == "HOME" and "Home" or category,
        TextColor3 = C.White,
        TextSize = 10,
        Font = Enum.Font.GothamSemibold,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 21
    })

    local ActiveLine = New("Frame",Button,{
        Name = "ActiveLine",
        Size = UDim2.fromOffset(3,24),
        Position = UDim2.new(0,0,0.5,-12),
        BackgroundColor3 = C.Purple,
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ZIndex = 23,
        Active = false
    })

    Corner(ActiveLine,3)

    CategoryButtons[category] = Button

    Button.MouseButton1Click:Connect(function()

        if category == "HOME" then
            ShowHome()
        else
            ShowCategory(category)
        end

    end)

    Button.MouseEnter:Connect(function()

        if CurrentCategory ~= category then

            Tween(Button,0.12,{
                BackgroundColor3 = C.Hover
            })

            Tween(IconCircle,0.12,{
                BackgroundColor3 = C.Purple2
            })
        end
    end)

    Button.MouseLeave:Connect(function()

        if CurrentCategory ~= category then

            Tween(Button,0.12,{
                BackgroundColor3 = C.Panel
            })

            Tween(IconCircle,0.12,{
                BackgroundColor3 = C.Panel2
            })
        end
    end)
end

--==================================================
-- SEARCH
--==================================================

local function SearchScripts()

    if CurrentCategory == "HOME" then
        return
    end

    local categoryData = Scripts[CurrentCategory]

    if not categoryData then
        return
    end

    local Query = string.lower(
        tostring(SearchBox.Text or "")
    )

    ClearScripts()

    local Found = 0

    for _,data in ipairs(categoryData) do

        local ScriptName =
            string.lower(
                tostring(data.Name)
            )

        if Query == ""
        or string.find(
            ScriptName,
            Query,
            1,
            true
        ) then

            Found = Found + 1

            CreateScriptButton(
                data,
                Found
            )
        end
    end

    if Query == "" then

        ContentSub.Text =
            tostring(#categoryData) ..
            " script có sẵn"

    else

        ContentSub.Text =
            tostring(Found) ..
            " kết quả"
    end
end

SearchBox:GetPropertyChangedSignal("Text"):Connect(
    SearchScripts
)

--==================================================
-- SEARCH FOCUS
--==================================================

SearchBox.Focused:Connect(function()

    Tween(SearchFrame,0.12,{
        BackgroundColor3 =
            Color3.fromRGB(42,42,56)
    })

    Tween(SearchIcon,0.12,{
        TextColor3 = C.Purple
    })
end)

SearchBox.FocusLost:Connect(function()

    Tween(SearchFrame,0.12,{
        BackgroundColor3 = C.Panel2
    })

    Tween(SearchIcon,0.12,{
        TextColor3 = C.White
    })
end)

--==================================================
-- OPEN / CLOSE
--==================================================

local function OpenMenu()

    MenuOpen = true

    Main.Visible = true
    Shadow.Visible = true

    Main.Size = UDim2.fromOffset(500,318)
    Shadow.Size = UDim2.fromOffset(500,318)

    Tween(Main,0.18,{
        Size = UDim2.fromOffset(520,330)
    })

    Tween(Shadow,0.18,{
        Size = UDim2.fromOffset(520,330)
    })
end

local function CloseMenu()

    MenuOpen = false

    Tween(Main,0.15,{
        Size = UDim2.fromOffset(500,318)
    })

    Tween(Shadow,0.15,{
        Size = UDim2.fromOffset(500,318)
    })

    task.delay(0.16,function()

        if not MenuOpen then

            Main.Visible = false
            Shadow.Visible = false

        end
    end)
end

--==================================================
-- CLOSE BUTTON
--==================================================

Close.MouseEnter:Connect(function()

    Tween(Close,0.12,{
        BackgroundColor3 =
            Color3.fromRGB(170,55,75)
    })
end)

Close.MouseLeave:Connect(function()

    Tween(Close,0.12,{
        BackgroundColor3 = C.Panel2
    })
end)

Close.MouseButton1Click:Connect(function()

    if MenuOpen then
        CloseMenu()
    else
        OpenMenu()
    end
end)

--==================================================
-- CROWN GLOW
--==================================================

local CrownGlow = New("Frame",Gui,{
    Name = "CrownGlow",
    Size = UDim2.fromOffset(58,58),
    Position = UDim2.new(
        0,
        18,
        0.5,
        -29
    ),
    BackgroundColor3 = C.Purple,
    BackgroundTransparency = 0.86,
    BorderSizePixel = 0,
    ZIndex = 90,
    Active = false
})

Corner(CrownGlow,29)

--==================================================
-- CROWN BUTTON
--==================================================

local CrownButton = New("TextButton",Gui,{
    Name = "CrownButton",
    Size = UDim2.fromOffset(50,50),
    Position = UDim2.new(
        0,
        22,
        0.5,
        -25
    ),
    BackgroundColor3 = C.Purple2,
    BackgroundTransparency = 0.05,
    BorderSizePixel = 0,
    Text = "👑",
    TextColor3 = C.White,
    TextSize = 22,
    Font = Enum.Font.GothamBold,
    AutoButtonColor = false,
    ZIndex = 100,
    Active = true
})

Corner(CrownButton,25)

Stroke(
    CrownButton,
    Color3.fromRGB(190,160,255),
    1.5,
    0.2
)

--==================================================
-- CROWN DRAG
--==================================================

local CrownDragging = false
local CrownDragStart
local CrownStartPosition
local CrownMoved = false

CrownButton.InputBegan:Connect(function(input)

    if input.UserInputType ==
        Enum.UserInputType.MouseButton1
    or input.UserInputType ==
        Enum.UserInputType.Touch then

        CrownDragging = true
        CrownMoved = false

        CrownDragStart = input.Position
        CrownStartPosition =
            CrownButton.Position

        input.Changed:Connect(function()

            if input.UserInputState ==
                Enum.UserInputState.End then

                CrownDragging = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)

    if not CrownDragging then
        return
    end

    if input.UserInputType ~=
        Enum.UserInputType.MouseMovement
    and input.UserInputType ~=
        Enum.UserInputType.Touch then

        return
    end

    local Delta =
        input.Position - CrownDragStart

    if math.abs(Delta.X) > 5
    or math.abs(Delta.Y) > 5 then

        CrownMoved = true
    end

    local NewPosition = UDim2.new(
        CrownStartPosition.X.Scale,
        CrownStartPosition.X.Offset + Delta.X,
        CrownStartPosition.Y.Scale,
        CrownStartPosition.Y.Offset + Delta.Y
    )

    CrownButton.Position = NewPosition

    CrownGlow.Position = UDim2.new(
        NewPosition.X.Scale,
        NewPosition.X.Offset - 4,
        NewPosition.Y.Scale,
        NewPosition.Y.Offset - 4
    )
end)

--==================================================
-- CROWN CLICK
--==================================================

CrownButton.MouseButton1Click:Connect(function()

    if CrownMoved then

        CrownMoved = false
        return
    end

    if MenuOpen then
        CloseMenu()
    else
        OpenMenu()
    end
end)

--==================================================
-- CROWN HOVER
--==================================================

CrownButton.MouseEnter:Connect(function()

    Tween(CrownButton,0.12,{
        Size = UDim2.fromOffset(54,54)
    })

    Tween(CrownGlow,0.12,{
        Size = UDim2.fromOffset(62,62),
        BackgroundTransparency = 0.78
    })
end)

CrownButton.MouseLeave:Connect(function()

    Tween(CrownButton,0.12,{
        Size = UDim2.fromOffset(50,50)
    })

    Tween(CrownGlow,0.12,{
        Size = UDim2.fromOffset(58,58),
        BackgroundTransparency = 0.86
    })
end)

--==================================================
-- MAIN MENU DRAG
--==================================================

local MainDragging = false
local MainDragStart
local MainStartPosition

Header.InputBegan:Connect(function(input)

    if input.UserInputType ==
        Enum.UserInputType.MouseButton1
    or input.UserInputType ==
        Enum.UserInputType.Touch then

        MainDragging = true

        MainDragStart = input.Position
        MainStartPosition = Main.Position

        input.Changed:Connect(function()

            if input.UserInputState ==
                Enum.UserInputState.End then

                MainDragging = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)

    if not MainDragging then
        return
    end

    if input.UserInputType ~=
        Enum.UserInputType.MouseMovement
    and input.UserInputType ~=
        Enum.UserInputType.Touch then

        return
    end

    local Delta =
        input.Position - MainDragStart

    local NewPosition = UDim2.new(
        MainStartPosition.X.Scale,
        MainStartPosition.X.Offset + Delta.X,
        MainStartPosition.Y.Scale,
        MainStartPosition.Y.Offset + Delta.Y
    )

    Main.Position = NewPosition

    Shadow.Position = UDim2.new(
        NewPosition.X.Scale,
        NewPosition.X.Offset,
        NewPosition.Y.Scale,
        NewPosition.Y.Offset + 7
    )
end)

--==================================================
-- LOGO CLICK
--==================================================

Logo.MouseButton1Click:Connect(function()

    if MenuOpen then
        CloseMenu()
    else
        OpenMenu()
    end
end)

Logo.MouseEnter:Connect(function()

    Tween(Logo,0.12,{
        BackgroundColor3 = C.Purple
    })
end)

Logo.MouseLeave:Connect(function()

    Tween(Logo,0.12,{
        BackgroundColor3 = C.Purple2
    })
end)

--==================================================
-- INITIAL
--==================================================

Main.Visible = true
Shadow.Visible = true

HomeCard.Visible = true
InfoCard.Visible = true

CurrentCategory = "HOME"

ContentTitle.Text = "Trang chủ"
ContentSub.Text =
    "Chào mừng đến với QuocAnhMenu"

SetCategoryVisual("HOME")

--==================================================
-- CROWN ANIMATION
--==================================================

task.spawn(function()

    while Gui.Parent do

        Tween(CrownGlow,1.1,{
            BackgroundTransparency = 0.78
        })

        task.wait(1.1)

        Tween(CrownGlow,1.1,{
            BackgroundTransparency = 0.88
        })

        task.wait(1.1)
    end
end)

--==================================================
-- READY
--==================================================

print("================================")
print("       QuocAnhMenu")
print("       Version: Compact")
print("       Status: Ready")
print("================================")
