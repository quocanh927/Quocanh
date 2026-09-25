--// QUOCANHMENU FULL
--// PART 1/2

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- Xóa menu cũ
local Old = PlayerGui:FindFirstChild("QuocAnhMenu")
if Old then
    Old:Destroy()
end

--==================================================
-- GUI
--==================================================

local Gui = Instance.new("ScreenGui")
Gui.Name = "QuocAnhMenu"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.Parent = PlayerGui

--==================================================
-- COLORS
--==================================================

local C = {
    Main = Color3.fromRGB(18,18,25),
    Panel = Color3.fromRGB(24,24,34),
    Panel2 = Color3.fromRGB(30,30,42),
    Hover = Color3.fromRGB(43,43,60),
    Purple = Color3.fromRGB(140,85,255),
    Purple2 = Color3.fromRGB(100,55,200),
    White = Color3.fromRGB(245,245,255),
    Gray = Color3.fromRGB(155,155,175),
    DarkGray = Color3.fromRGB(90,90,110)
}

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
    s.Color = color or Color3.new(1,1,1)
    s.Thickness = thickness or 1
    s.Transparency = transparency or 0
    s.Parent = obj
    return s
end

local function Tween(obj,time,properties)
    local t = TweenService:Create(
        obj,
        TweenInfo.new(
            time,
            Enum.EasingStyle.Quart,
            Enum.EasingDirection.Out
        ),
        properties
    )

    t:Play()
    return t
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
-- MAIN FRAME
--==================================================

local Shadow = New("Frame",Gui,{
    Name = "Shadow",
    Size = UDim2.fromOffset(620,390),
    Position = UDim2.new(0.5,-310,0.5,-188),
    BackgroundColor3 = Color3.new(0,0,0),
    BackgroundTransparency = 0.55,
    BorderSizePixel = 0,
    ZIndex = 1
})

Corner(Shadow,20)

local Main = New("Frame",Gui,{
    Name = "Main",
    Size = UDim2.fromOffset(620,390),
    Position = UDim2.new(0.5,-310,0.5,-195),
    BackgroundColor3 = C.Main,
    BackgroundTransparency = 0.04,
    BorderSizePixel = 0,
    ZIndex = 5
})

Corner(Main,20)
Stroke(Main,Color3.fromRGB(100,100,130),1,0.35)

--==================================================
-- GLASS TOP LIGHT
--==================================================

local TopGlow = New("Frame",Main,{
    Size = UDim2.new(1,0,0,3),
    Position = UDim2.fromOffset(0,0),
    BackgroundColor3 = C.Purple,
    BackgroundTransparency = 0.25,
    BorderSizePixel = 0,
    ZIndex = 20
})

Corner(TopGlow,3)

--==================================================
-- HEADER
--==================================================

local Header = New("Frame",Main,{
    Size = UDim2.new(1,0,0,65),
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    ZIndex = 10
})

local Logo = New("TextButton",Header,{
    Size = UDim2.fromOffset(46,46),
    Position = UDim2.fromOffset(10,9),
    BackgroundColor3 = C.Purple2,
    BackgroundTransparency = 0.08,
    Text = "👑",
    TextSize = 22,
    Font = Enum.Font.GothamBold,
    TextColor3 = C.White,
    BorderSizePixel = 0,
    AutoButtonColor = false,
    ZIndex = 12
})

Corner(Logo,14)

local Title = New("TextLabel",Header,{
    Size = UDim2.fromOffset(220,27),
    Position = UDim2.fromOffset(67,7),
    BackgroundTransparency = 1,
    Text = "QuocAnhMenu",
    TextColor3 = C.White,
    TextSize = 21,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 11
})

local Subtitle = New("TextLabel",Header,{
    Size = UDim2.fromOffset(240,20),
    Position = UDim2.fromOffset(68,34),
    BackgroundTransparency = 1,
    Text = "Script Hub • NoKey",
    TextColor3 = C.Gray,
    TextSize = 11,
    Font = Enum.Font.Gotham,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 11
})

--==================================================
-- SEARCH
--==================================================

local SearchFrame = New("Frame",Header,{
    Size = UDim2.fromOffset(185,38),
    Position = UDim2.new(1,-228,0,13),
    BackgroundColor3 = C.Panel2,
    BackgroundTransparency = 0.05,
    BorderSizePixel = 0,
    ZIndex = 12
})

Corner(SearchFrame,12)
Stroke(SearchFrame,Color3.fromRGB(80,80,105),1,0.4)

local SearchIcon = New("TextLabel",SearchFrame,{
    Size = UDim2.fromOffset(38,38),
    Position = UDim2.fromOffset(0,0),
    BackgroundTransparency = 1,
    Text = "⌕",
    TextColor3 = C.White,
    TextSize = 24,
    Font = Enum.Font.GothamBold,
    ZIndex = 13
})

local SearchBox = New("TextBox",SearchFrame,{
    Size = UDim2.new(1,-40,1,0),
    Position = UDim2.fromOffset(39,0),
    BackgroundTransparency = 1,
    PlaceholderText = "Tìm script...",
    PlaceholderColor3 = C.Gray,
    Text = "",
    TextColor3 = C.White,
    TextSize = 12,
    Font = Enum.Font.Gotham,
    ClearTextOnFocus = false,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 13
})

--==================================================
-- CLOSE
--==================================================

local Close = New("TextButton",Header,{
    Size = UDim2.fromOffset(32,32),
    Position = UDim2.new(1,-38,0,16),
    BackgroundColor3 = C.Panel2,
    Text = "×",
    TextColor3 = C.White,
    TextSize = 22,
    Font = Enum.Font.GothamBold,
    BorderSizePixel = 0,
    AutoButtonColor = false,
    ZIndex = 20
})

Corner(Close,10)

--==================================================
-- SIDEBAR
--==================================================

local Sidebar = New("Frame",Main,{
    Size = UDim2.fromOffset(160,310),
    Position = UDim2.fromOffset(10,68),
    BackgroundColor3 = C.Panel,
    BackgroundTransparency = 0.08,
    BorderSizePixel = 0,
    ZIndex = 7
})

Corner(Sidebar,16)
Stroke(Sidebar,Color3.fromRGB(70,70,95),1,0.5)

local SideTitle = New("TextLabel",Sidebar,{
    Size = UDim2.new(1,-20,0,25),
    Position = UDim2.fromOffset(10,8),
    BackgroundTransparency = 1,
    Text = "MENU",
    TextColor3 = C.Gray,
    TextSize = 10,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 8
})

local CategoryHolder = New("Frame",Sidebar,{
    Size = UDim2.new(1,-12,1,-42),
    Position = UDim2.fromOffset(6,37),
    BackgroundTransparency = 1,
    ZIndex = 8
})

local CategoryLayout = New("UIListLayout",CategoryHolder,{
    Padding = UDim.new(0,6),
    SortOrder = Enum.SortOrder.LayoutOrder
})

--==================================================
-- CONTENT
--==================================================

local Content = New("Frame",Main,{
    Size = UDim2.new(1,-180,1,-78),
    Position = UDim2.fromOffset(174,68),
    BackgroundColor3 = C.Panel,
    BackgroundTransparency = 0.08,
    BorderSizePixel = 0,
    ZIndex = 7
})

Corner(Content,16)
Stroke(Content,Color3.fromRGB(70,70,95),1,0.5)

local ContentTitle = New("TextLabel",Content,{
    Size = UDim2.new(1,-24,0,28),
    Position = UDim2.fromOffset(13,8),
    BackgroundTransparency = 1,
    Text = "Trang chủ",
    TextColor3 = C.White,
    TextSize = 18,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 8
})

local ContentSub = New("TextLabel",Content,{
    Size = UDim2.new(1,-24,0,20),
    Position = UDim2.fromOffset(14,34),
    BackgroundTransparency = 1,
    Text = "Chào mừng đến với QuocAnhMenu",
    TextColor3 = C.Gray,
    TextSize = 11,
    Font = Enum.Font.Gotham,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 8
})

--==================================================
-- SCROLL
--==================================================

local Scroll = New("ScrollingFrame",Content,{
    Size = UDim2.new(1,-14,1,-65),
    Position = UDim2.fromOffset(7,61),
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    ScrollBarThickness = 3,
    ScrollBarImageColor3 = C.Purple,
    CanvasSize = UDim2.new(0,0,0,0),
    AutomaticCanvasSize = Enum.AutomaticSize.Y,
    ScrollingDirection = Enum.ScrollingDirection.Y,
    ZIndex = 8
})

local ScrollPadding = New("UIPadding",Scroll,{
    PaddingLeft = UDim.new(0,5),
    PaddingRight = UDim.new(0,5),
    PaddingBottom = UDim.new(0,8)
})

local List = New("UIListLayout",Scroll,{
    Padding = UDim.new(0,8),
    SortOrder = Enum.SortOrder.LayoutOrder
})

--==================================================
-- HOME CARD
--==================================================

local HomeCard = New("Frame",Scroll,{
    Size = UDim2.new(1,0,0,150),
    BackgroundColor3 = C.Panel2,
    BackgroundTransparency = 0.08,
    BorderSizePixel = 0,
    LayoutOrder = 1,
    ZIndex = 9
})

Corner(HomeCard,14)
Stroke(HomeCard,Color3.fromRGB(75,75,100),1,0.45)

local HomeTitle = New("TextLabel",HomeCard,{
    Size = UDim2.new(1,-24,0,32),
    Position = UDim2.fromOffset(12,10),
    BackgroundTransparency = 1,
    Text = "Xin chào! Tôi là QuocAnhMenu 👋",
    TextColor3 = C.White,
    TextSize = 16,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 10
})

local HomeText = New("TextLabel",HomeCard,{
    Size = UDim2.new(1,-24,1,-50),
    Position = UDim2.fromOffset(12,43),
    BackgroundTransparency = 1,
    Text = "Đây là script tổng hợp các script NoKey khác.\n\nVì menu mới tạo nên hiện tại chưa có quá nhiều script. Chúng tôi sẽ cập nhật định kỳ để bổ sung thêm script.\n\nChọn game bên trái để xem danh sách.",
    TextColor3 = Color3.fromRGB(215,215,230),
    TextSize = 12,
    Font = Enum.Font.Gotham,
    TextWrapped = true,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Top,
    ZIndex = 10
})

--==================================================
-- INFO CARD
--==================================================

local InfoCard = New("Frame",Scroll,{
    Size = UDim2.new(1,0,0,135),
    BackgroundColor3 = C.Panel2,
    BackgroundTransparency = 0.08,
    BorderSizePixel = 0,
    LayoutOrder = 2,
    ZIndex = 9
})

Corner(InfoCard,14)

local InfoTitle = New("TextLabel",InfoCard,{
    Size = UDim2.new(1,-24,0,28),
    Position = UDim2.fromOffset(12,9),
    BackgroundTransparency = 1,
    Text = "📌 Hướng dẫn",
    TextColor3 = C.White,
    TextSize = 15,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 10
})

local InfoText = New("TextLabel",InfoCard,{
    Size = UDim2.new(1,-24,1,-42),
    Position = UDim2.fromOffset(12,38),
    BackgroundTransparency = 1,
    Text = "• Chọn game ở thanh bên trái.\n• Bấm vào tên script để chạy.\n• Dùng kính lúp để tìm script.\n• Nút 👑 bên ngoài có thể mở/đóng menu.\n• Menu và nút 👑 đều có thể kéo.",
    TextColor3 = C.Gray,
    TextSize = 12,
    Font = Enum.Font.Gotham,
    TextWrapped = true,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Top,
    ZIndex = 10
})

--==================================================
-- VARIABLES
--==================================================

local CurrentCategory = "HOME"
local MenuOpen = true

local CategoryButtons = {}
local ScriptButtons = {}

--==================================================
-- CLEAR SCRIPTS
--==================================================

local function ClearScripts()

    for _,button in ipairs(ScriptButtons) do
        if button and button.Parent then
            button:Destroy()
        end
    end

    ScriptButtons = {}
end

--==================================================
-- RUN LOADER
--==================================================

local function ExecuteScript(code)

    task.spawn(function()

        local success,err = pcall(function()

            local source = game:HttpGet(code)

            local fn,loadError = loadstring(source)

            if not fn then
                error(loadError or "loadstring failed")
            end

            fn()
        end)

        if not success then
            warn("[QuocAnhMenu] Error:",err)
        end
    end)
end

--==================================================
-- CREATE SCRIPT BUTTON
--==================================================

local function CreateScriptButton(data,index)

    local Button = New("TextButton",Scroll,{
        Size = UDim2.new(1,0,0,58),
        BackgroundColor3 = C.Panel2,
        BackgroundTransparency = 0.05,
        BorderSizePixel = 0,
        Text = "",
        AutoButtonColor = false,
        LayoutOrder = index,
        ZIndex = 10
    })

    Corner(Button,13)
    Stroke(Button,Color3.fromRGB(70,70,95),1,0.5)

    local Circle = New("Frame",Button,{
        Size = UDim2.fromOffset(40,40),
        Position = UDim2.fromOffset(9,9),
        BackgroundColor3 = C.Purple2,
        BackgroundTransparency = 0.1,
        BorderSizePixel = 0,
        ZIndex = 11
    })

    Corner(Circle,20)

    local Play = New("TextLabel",Circle,{
        Size = UDim2.fromScale(1,1),
        BackgroundTransparency = 1,
        Text = "▶",
        TextColor3 = C.White,
        TextSize = 13,
        Font = Enum.Font.GothamBold,
        ZIndex = 12
    })

    local Name = New("TextLabel",Button,{
        Name = "ScriptName",
        Size = UDim2.new(1,-65,1,0),
        Position = UDim2.fromOffset(60,0),
        BackgroundTransparency = 1,
        Text = data.Name,
        TextColor3 = C.White,
        TextSize = 14,
        Font = Enum.Font.GothamSemibold,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 11
    })

    Button.MouseEnter:Connect(function()

        Tween(Button,0.12,{
            BackgroundColor3 = C.Hover
        })

        Tween(Circle,0.12,{
            BackgroundColor3 = C.Purple
        })
    end)

    Button.MouseLeave:Connect(function()

        Tween(Button,0.12,{
            BackgroundColor3 = C.Panel2
        })

        Tween(Circle,0.12,{
            BackgroundColor3 = C.Purple2
        })
    end)

    Button.Activated:Connect(function()
        ExecuteScript(data.Code)
    end)

    table.insert(ScriptButtons,Button)
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
    ContentSub.Text = tostring(#Scripts[category]) .. " script có sẵn"

    for index,data in ipairs(Scripts[category]) do
        CreateScriptButton(data,index)
    end

    Scroll.CanvasPosition = Vector2.new(0,0)
end

--==================================================
-- CATEGORY VISUAL
--==================================================

local function SetCategoryVisual(selected)

    for category,button in pairs(CategoryButtons) do

        local Line = button:FindFirstChild("ActiveLine")

        if category == selected then

            Tween(button,0.15,{
                BackgroundColor3 = C.Hover
            })

            if Line then
                Tween(Line,0.15,{
                    BackgroundTransparency = 0
                })
            end

        else

            Tween(button,0.15,{
                BackgroundColor3 = C.Panel
            })

            if Line then
                Tween(Line,0.15,{
                    BackgroundTransparency = 1
                })
            end
        end
    end
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
        Name = category,
        Size = UDim2.new(1,0,0,50),
        BackgroundColor3 = C.Panel,
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Text = "",
        AutoButtonColor = false,
        LayoutOrder = index,
        ZIndex = 10
    })

    Corner(Button,12)

    Stroke(
        Button,
        Color3.fromRGB(65,65,85),
        1,
        0.65
    )

    local IconCircle = New("Frame",Button,{
        Size = UDim2.fromOffset(34,34),
        Position = UDim2.fromOffset(7,8),
        BackgroundColor3 = C.Panel2,
        BorderSizePixel = 0,
        ZIndex = 11
    })

    Corner(IconCircle,17)

    local Icon = New("TextLabel",IconCircle,{
        Size = UDim2.fromScale(1,1),
        BackgroundTransparency = 1,
        Text = CategoryIcons[category] or "•",
        TextColor3 = C.White,
        TextSize = 15,
        Font = Enum.Font.GothamBold,
        ZIndex = 12
    })

    local Name = New("TextLabel",Button,{
        Size = UDim2.new(1,-52,1,0),
        Position = UDim2.fromOffset(48,0),
        BackgroundTransparency = 1,
        Text = category == "HOME" and "Home" or category,
        TextColor3 = C.White,
        TextSize = 12,
        Font = Enum.Font.GothamSemibold,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 11
    })

    local ActiveLine = New("Frame",Button,{
        Name = "ActiveLine",
        Size = UDim2.fromOffset(3,28),
        Position = UDim2.new(0,0,0.5,-14),
        BackgroundColor3 = C.Purple,
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ZIndex = 12
    })

    Corner(ActiveLine,3)

    CategoryButtons[category] = Button

    Button.MouseEnter:Connect(function()

        if CurrentCategory ~= category then

            Tween(Button,0.15,{
                BackgroundColor3 = C.Hover
            })

            Tween(IconCircle,0.15,{
                BackgroundColor3 = C.Purple2
            })
        end
    end)

    Button.MouseLeave:Connect(function()

        if CurrentCategory ~= category then

            Tween(Button,0.15,{
                BackgroundColor3 = C.Panel
            })

            Tween(IconCircle,0.15,{
                BackgroundColor3 = C.Panel2
            })
        end
    end)

    Button.Activated:Connect(function()

        SetCategoryVisual(category)

        if category == "HOME" then
            ShowHome()
        else
            ShowCategory(category)
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

    local Query = string.lower(SearchBox.Text or "")

    ClearScripts()

    local Found = 0

    for _,data in ipairs(categoryData) do

        local ScriptName = string.lower(data.Name)

        if Query == "" or string.find(ScriptName,Query,1,true) then

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
            " kết quả cho \"" ..
            SearchBox.Text ..
            "\""
    end
end

SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    SearchScripts()
end)

--==================================================
-- SEARCH FOCUS EFFECT
--==================================================

SearchBox.Focused:Connect(function()

    Tween(SearchFrame,0.15,{
        BackgroundColor3 = Color3.fromRGB(38,38,52)
    })

    Tween(SearchIcon,0.15,{
        TextColor3 = C.Purple
    })
end)

SearchBox.FocusLost:Connect(function()

    Tween(SearchFrame,0.15,{
        BackgroundColor3 = C.Panel2
    })

    Tween(SearchIcon,0.15,{
        TextColor3 = C.White
    })
end)

--==================================================
-- CLOSE BUTTON EFFECT
--==================================================

Close.MouseEnter:Connect(function()

    Tween(Close,0.15,{
        BackgroundColor3 = Color3.fromRGB(170,55,75)
    })
end)

Close.MouseLeave:Connect(function()

    Tween(Close,0.15,{
        BackgroundColor3 = C.Panel2
    })
end)

--==================================================
-- OPEN / CLOSE
--==================================================

local function OpenMenu()

    MenuOpen = true

    Main.Visible = true
    Shadow.Visible = true

    Main.Size = UDim2.fromOffset(590,370)

    Tween(Main,0.25,{
        Size = UDim2.fromOffset(620,390)
    })

    Tween(Shadow,0.25,{
        Size = UDim2.fromOffset(620,390)
    })
end

local function CloseMenu()

    MenuOpen = false

    Tween(Main,0.18,{
        Size = UDim2.fromOffset(590,370)
    })

    Tween(Shadow,0.18,{
        Size = UDim2.fromOffset(590,370)
    })

    task.delay(0.18,function()

        if not MenuOpen then
            Main.Visible = false
            Shadow.Visible = false
        end
    end)
end

Close.Activated:Connect(function()

    if MenuOpen then
        CloseMenu()
    else
        OpenMenu()
    end
end)

--==================================================
-- FLOATING ROUND ICON
--==================================================

local CrownButton = New("TextButton",Gui,{
    Name = "CrownButton",
    Size = UDim2.fromOffset(54,54),
    Position = UDim2.new(0,22,0.5,-27),
    BackgroundColor3 = C.Purple2,
    BackgroundTransparency = 0.05,
    BorderSizePixel = 0,
    Text = "👑",
    TextColor3 = C.White,
    TextSize = 24,
    Font = Enum.Font.GothamBold,
    AutoButtonColor = false,
    ZIndex = 100
})

Corner(CrownButton,27)

Stroke(
    CrownButton,
    Color3.fromRGB(190,160,255),
    1.5,
    0.2
)

--==================================================
-- CROWN GLOW
--==================================================

local CrownGlow = New("Frame",Gui,{
    Size = UDim2.fromOffset(64,64),
    Position = UDim2.new(
        0,
        17,
        0.5,
        -32
    ),
    BackgroundColor3 = C.Purple,
    BackgroundTransparency = 0.86,
    BorderSizePixel = 0,
    ZIndex = 99
})

Corner(CrownGlow,32)

--==================================================
-- KEEP CROWN ABOVE GLOW
--==================================================

CrownButton.ZIndex = 101

--==================================================
-- CROWN DRAG
--==================================================

local CrownDragging = false
local CrownDragStart
local CrownStartPosition
local CrownMoved = false

CrownButton.InputBegan:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        CrownDragging = true
        CrownMoved = false

        CrownDragStart = input.Position
        CrownStartPosition = CrownButton.Position

        input.Changed:Connect(function()

            if input.UserInputState == Enum.UserInputState.End then
                CrownDragging = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)

    if not CrownDragging then
        return
    end

    if input.UserInputType ~= Enum.UserInputType.MouseMovement
    and input.UserInputType ~= Enum.UserInputType.Touch then
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
        NewPosition.X.Offset - 5,
        NewPosition.Y.Scale,
        NewPosition.Y.Offset - 5
    )
end)

--==================================================
-- CROWN CLICK
--==================================================

CrownButton.Activated:Connect(function()

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

    Tween(CrownButton,0.15,{
        Size = UDim2.fromOffset(58,58)
    })

    Tween(CrownGlow,0.15,{
        Size = UDim2.fromOffset(68,68),
        BackgroundTransparency = 0.78
    })
end)

CrownButton.MouseLeave:Connect(function()

    Tween(CrownButton,0.15,{
        Size = UDim2.fromOffset(54,54)
    })

    Tween(CrownGlow,0.15,{
        Size = UDim2.fromOffset(64,64),
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

    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        MainDragging = true

        MainDragStart = input.Position
        MainStartPosition = Main.Position

        input.Changed:Connect(function()

            if input.UserInputState == Enum.UserInputState.End then
                MainDragging = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)

    if not MainDragging then
        return
    end

    if input.UserInputType ~= Enum.UserInputType.MouseMovement
    and input.UserInputType ~= Enum.UserInputType.Touch then
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
-- HEADER HOVER
--==================================================

Logo.MouseEnter:Connect(function()

    Tween(Logo,0.15,{
        BackgroundColor3 = C.Purple
    })
end)

Logo.MouseLeave:Connect(function()

    Tween(Logo,0.15,{
        BackgroundColor3 = C.Purple2
    })
end)

--==================================================
-- LOGO CLICK
--==================================================

Logo.Activated:Connect(function()

    if MenuOpen then
        CloseMenu()
    else
        OpenMenu()
    end
end)

--==================================================
-- INITIAL STATE
--==================================================

HomeCard.Visible = true
InfoCard.Visible = true

ContentTitle.Text = "Trang chủ"
ContentSub.Text = "Chào mừng đến với QuocAnhMenu"

SetCategoryVisual("HOME")

--==================================================
-- SMALL ANIMATION
--==================================================

task.spawn(function()

    while Gui.Parent do

        Tween(CrownGlow,1.2,{
            BackgroundTransparency = 0.78
        })

        task.wait(1.2)

        Tween(CrownGlow,1.2,{
            BackgroundTransparency = 0.88
        })

        task.wait(1.2)
    end
end)

--==================================================
-- FINAL
--==================================================

print("================================")
print("      QuocAnhMenu Loaded")
print("      Version: Full")
print("      Status: Ready")
print("================================")
