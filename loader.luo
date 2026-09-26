-- QUOC ANH MENU
-- PART 1/3

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local pg = player:WaitForChild("PlayerGui")

local old = pg:FindFirstChild("QuocAnhMenu")
if old then old:Destroy() end

local C = {
    bg = Color3.fromRGB(7,8,10),
    panel = Color3.fromRGB(12,13,16),
    card = Color3.fromRGB(20,21,25),
    card2 = Color3.fromRGB(25,26,31),
    white = Color3.fromRGB(245,245,248),
    gray = Color3.fromRGB(150,152,160),
    line = Color3.fromRGB(55,57,64),
    accent = Color3.fromRGB(220,220,225),
}

local Scripts = {
    ["Steal a Egg"] = {
        {"Sever Hop", 'loadstring(game:HttpGet("https://pastefy.app/YoZocJ8O/raw"))()'},
        {"Steal Egg", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"))()'},
        {"Spawner Pet", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/chocolascript-glitch/Chocola-Pet-Spawner-steal-an-egg/refs/heads/main/script.lua"))()'},
        {"RealKid Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"))()'},
        {"Lennon Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/lennonxscripts/lennonfarm/refs/heads/main/farmv1.lua"))()'},
        {"Miranda v2", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/mirandaafk.lua"))()'},
        {"Miranda", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"))()'},
        {"Chilli Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()'},
        {"Foxname Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Fn-stealanegg.lua"))()'},
        {"Sena Hub", 'loadstring(game:HttpGet("https://senahub.xyz/raw/loader"))()'},
        {"Kira Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/LSSOPS/OpenSource/refs/heads/main/KiraHub_Steal_An_Egg.lua"))()'},
        {"Zeroin", 'loadstring(game:HttpGet("https://zeroinhub.com/api/script"))()'},
        {"ZERO POINT HUB", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/JaxRol/ZeroPoint/refs/heads/main/KeySystem"))()'},
        {"ZK Hub [PREMIUM] [KEY]", '_G.Config={ApiKey="ZKCOMMUNITYcfdb742a751aad57d79b375ea6c7cbc7"} loadstring(game:HttpGet("https://zkcommunity.cloud/loader.lua"))()'},
        {"SAIOPS HUB", 'loadstring(game:HttpGet("https://api.saiops.cc/scripts/Steal-An-Egg-Script.lua"))()'},
        {"AJJANS HUB", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/virtuososvisualedits-prog/Ww/refs/heads/main/final-obfuscated.lua"))()'},
        {"LUMIN HUB", 'loadstring(game:HttpGet("http://luminon.top/loader.lua"))()'},
        {"Fake Admin [VIP] [KEY]", 'loadstring(game:HttpGet("https://pastefy.app/t06eyyrw/raw"))()'},
    },

    ["Blox Fruit"] = {
        {"Red Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Redz/refs/heads/main/Redz/script.luau"))()'},
        {"Night Hub", 'repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer getgenv().team="Marines" loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-NightMystic/Bloxfruits/refs/heads/main/Script.lua"))()'},
        {"Gravity Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()'},
        {"Xynapse Hub", 'loadstring(game:HttpGet("https://pastebin.com/raw/uECLqG3j",true))()'},
        {"Zee Hub", 'loadstring(game:HttpGet("https://link.trwxz.com/LS-Zee-Hub-VIP"))()'},
        {"Quantum Hub", 'loadstring(game:HttpGet("https://pastebin.com/raw/r5h2r57F"))()'},
        {"Zinner Hub", 'getgenv().Team="Pirates" loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangNguyenk8/Scripts/refs/heads/main/Loader.lua"))()'},
        {"Andepzai Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/main/AnDepZaiHubBeta.lua"))()'},
        {"OMG Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()'},
        {"Annie Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/1st-Mars/Annie/main/1st.lua"))()'},
        {"Nero Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NeroHubClub/AutoMythicFruitFinder/refs/heads/main/NeroHubFruitFinder"))()'},
        {"Teddy Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub.lua"))()'},
        {"Zenith Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/LookP/Roblox/refs/heads/main/ZenithHUB%20ZC%20Rivals"))()'},
        {"Speed Hub X", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()'},
        {"HoHo Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()'},
        {"Banana Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Banana/refs/heads/main/Banana/script.luau"))()'},
    },

    ["Blade Ball"] = {
        {"KAZZ Hub", 'loadstring(game:HttpGet("https://api.jnkie.com/api/v1/loaders/public/353accd2d41a5a30c879705a8ff47926fab2c8b7d7baf34d31c0522b8c6c0a41/download"))()'},
        {"Dryx Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Doortthemort/676/refs/heads/main/Main.lua"))()'},
        {"Arceney Hub", 'loadstring(game:HttpGet("https://arceney.win/cdn/loader.luau?v=scrb"))()'},
        {"Wings Hub [Premium] [KEY]", 'loadstring(game:HttpGet("https://wings.ac/loader"))()'},
        {"Argon Hub", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/luwriy/jwhub/refs/heads/main/loader"))()'},
    }
}

local Gui = Instance.new("ScreenGui")
Gui.Name = "QuocAnhMenu"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.DisplayOrder = 999
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
Gui.Parent = pg

local Scale = Instance.new("UIScale")
Scale.Parent = Gui

local function updateScale()
    local cam = workspace.CurrentCamera
    if not cam then return end
    local w = cam.ViewportSize.X
    Scale.Scale = math.clamp(w / 700, 0.55, 0.92)
end

updateScale()

if workspace.CurrentCamera then
    workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(updateScale)
end

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.fromOffset(620,350)
Main.Position = UDim2.new(0.5,-310,0.5,-175)
Main.BackgroundColor3 = C.bg
Main.BackgroundTransparency = 0.08
Main.BorderSizePixel = 0
Main.Visible = true
Main.ZIndex = 10
Main.Parent = Gui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0,16)
MainCorner.Parent = Main

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = C.line
MainStroke.Thickness = 1
MainStroke.Transparency = 0.15
MainStroke.Parent = Main

local Header = Instance.new("Frame")
Header.Size = UDim2.new(1,0,0,58)
Header.BackgroundTransparency = 1
Header.ZIndex = 11
Header.Parent = Main

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0,190,1,0)
Title.Position = UDim2.fromOffset(18,0)
Title.BackgroundTransparency = 1
Title.Text = "👑 QuocAnhMenu"
Title.TextColor3 = C.white
Title.TextSize = 20
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 12
Title.Parent = Header

local Sub = Instance.new("TextLabel")
Sub.Size = UDim2.new(0,150,0,20)
Sub.Position = UDim2.fromOffset(20,36)
Sub.BackgroundTransparency = 1
Sub.Text = "SCRIPT HUB"
Sub.TextColor3 = C.gray
Sub.TextSize = 9
Sub.Font = Enum.Font.GothamMedium
Sub.TextXAlignment = Enum.TextXAlignment.Left
Sub.ZIndex = 12
Sub.Parent = Header

local Search = Instance.new("TextBox")
Search.Size = UDim2.fromOffset(190,32)
Search.Position = UDim2.new(1,-248,0,13)
Search.BackgroundColor3 = C.card
Search.BackgroundTransparency = 0.05
Search.BorderSizePixel = 0
Search.PlaceholderText = "🔍  Tìm script..."
Search.PlaceholderColor3 = C.gray
Search.Text = ""
Search.TextColor3 = C.white
Search.TextSize = 12
Search.Font = Enum.Font.Gotham
Search.ClearTextOnFocus = false
Search.ZIndex = 12
Search.Parent = Header

local SearchCorner = Instance.new("UICorner")
SearchCorner.CornerRadius = UDim.new(0,9)
SearchCorner.Parent = Search

local SearchStroke = Instance.new("UIStroke")
SearchStroke.Color = C.line
SearchStroke.Thickness = 1
SearchStroke.Parent = Search

local Side = Instance.new("Frame")
Side.Size = UDim2.fromOffset(150,280)
Side.Position = UDim2.fromOffset(10,60)
Side.BackgroundColor3 = C.panel
Side.BackgroundTransparency = 0.1
Side.BorderSizePixel = 0
Side.ZIndex = 11
Side.Parent = Main

local SideCorner = Instance.new("UICorner")
SideCorner.CornerRadius = UDim.new(0,12)
SideCorner.Parent = Side

local SideTitle = Instance.new("TextLabel")
SideTitle.Size = UDim2.new(1,-20,0,25)
SideTitle.Position = UDim2.fromOffset(10,8)
SideTitle.BackgroundTransparency = 1
SideTitle.Text = "MENU"
SideTitle.TextColor3 = C.gray
SideTitle.TextSize = 10
SideTitle.Font = Enum.Font.GothamBold
SideTitle.TextXAlignment = Enum.TextXAlignment.Left
SideTitle.ZIndex = 12
SideTitle.Parent = Side

local SideList = Instance.new("Frame")
SideList.Size = UDim2.new(1,-14,1,-43)
SideList.Position = UDim2.fromOffset(7,37)
SideList.BackgroundTransparency = 1
SideList.ZIndex = 12
SideList.Parent = Side

local SideLayout = Instance.new("UIListLayout")
SideLayout.Padding = UDim.new(0,5)
SideLayout.SortOrder = Enum.SortOrder.LayoutOrder
SideLayout.Parent = SideList

local Content = Instance.new("Frame")
Content.Size = UDim2.new(1,-170,1,-68)
Content.Position = UDim2.fromOffset(165,60)
Content.BackgroundTransparency = 1
Content.ZIndex = 11
Content.Parent = Main

local PageTitle = Instance.new("TextLabel")
PageTitle.Size = UDim2.new(1,0,0,32)
PageTitle.BackgroundTransparency = 1
PageTitle.Text = "Home"
PageTitle.TextColor3 = C.white
PageTitle.TextSize = 19
PageTitle.Font = Enum.Font.GothamBold
PageTitle.TextXAlignment = Enum.TextXAlignment.Left
PageTitle.ZIndex = 12
PageTitle.Parent = Content

local PageSub = Instance.new("TextLabel")
PageSub.Size = UDim2.new(1,0,0,20)
PageSub.Position = UDim2.fromOffset(0,28)
PageSub.BackgroundTransparency = 1
PageSub.Text = "Chọn game để xem script"
PageSub.TextColor3 = C.gray
PageSub.TextSize = 10
PageSub.Font = Enum.Font.Gotham
PageSub.TextXAlignment = Enum.TextXAlignment.Left
PageSub.ZIndex = 12
PageSub.Parent = Content

local HomePage = Instance.new("Frame")
HomePage.Size = UDim2.new(1,0,1,-55)
HomePage.Position = UDim2.fromOffset(0,55)
HomePage.BackgroundTransparency = 1
HomePage.ZIndex = 12
HomePage.Parent = Content

local Welcome = Instance.new("TextLabel")
Welcome.Size = UDim2.new(1,0,0,82)
Welcome.BackgroundColor3 = C.card
Welcome.BackgroundTransparency = 0.05
Welcome.BorderSizePixel = 0
Welcome.Text = "Xin chào, tôi là OWNER.\nScript hiện chưa hoàn thiện, chúng tôi đang cố update.\nĐây là 1 bản script tổng hợp các script No Key khác.\nNếu script nào có Key thì tôi đã ghi chữ [KEY] nhỏ ở sau."
Welcome.TextColor3 = C.white
Welcome.TextSize = 11
Welcome.Font = Enum.Font.Gotham
Welcome.TextWrapped = true
Welcome.TextXAlignment = Enum.TextXAlignment.Left
Welcome.TextYAlignment = Enum.TextYAlignment.Center
Welcome.ZIndex = 13
Welcome.Parent = HomePage

local WelcomePad = Instance.new("UIPadding")
WelcomePad.PaddingLeft = UDim.new(0,13)
WelcomePad.PaddingRight = UDim.new(0,10)
WelcomePad.Parent = Welcome

local WC = Instance.new("UICorner")
WC.CornerRadius = UDim.new(0,11)
WC.Parent = Welcome

local HomeCards = Instance.new("Frame")
HomeCards.Size = UDim2.new(1,0,0,120)
HomeCards.Position = UDim2.fromOffset(0,94)
HomeCards.BackgroundTransparency = 1
HomeCards.ZIndex = 13
HomeCards.Parent = HomePage

local HGrid = Instance.new("UIGridLayout")
HGrid.CellSize = UDim2.new(1/3,-7,1,0)
HGrid.CellPadding = UDim2.fromOffset(8,0)
HGrid.Parent = HomeCards

local CategoryButtons = {}

local function makeHomeCard(name, icon)
    local b = Instance.new("TextButton")
    b.Name = name
    b.BackgroundColor3 = C.card
    b.BorderSizePixel = 0
    b.Text = ""
    b.AutoButtonColor = false
    b.ZIndex = 14
    b.Parent = HomeCards

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0,11)
    c.Parent = b

    local s = Instance.new("UIStroke")
    s.Color = C.line
    s.Thickness = 1
    s.Parent = b

    local i = Instance.new("TextLabel")
    i.Size = UDim2.new(1,0,0,38)
    i.Position = UDim2.fromOffset(0,10)
    i.BackgroundTransparency = 1
    i.Text = icon
    i.TextColor3 = C.white
    i.TextSize = 22
    i.Font = Enum.Font.GothamBold
    i.ZIndex = 15
    i.Parent = b

    local t = Instance.new("TextLabel")
    t.Size = UDim2.new(1,-8,0,35)
    t.Position = UDim2.fromOffset(4,55)
    t.BackgroundTransparency = 1
    t.Text = name
    t.TextColor3 = C.white
    t.TextSize = 11
    t.Font = Enum.Font.GothamBold
    t.TextWrapped = true
    t.ZIndex = 15
    t.Parent = b

    local n = Instance.new("TextLabel")
    n.Size = UDim2.new(1,0,0,18)
    n.Position = UDim2.fromOffset(0,91)
    n.BackgroundTransparency = 1
    n.Text = tostring(#Scripts[name]).." Scripts"
    n.TextColor3 = C.gray
    n.TextSize = 9
    n.Font = Enum.Font.Gotham
    n.ZIndex = 15
    n.Parent = b

    CategoryButtons[name] = b
end

makeHomeCard("Steal a Egg","🥚")
makeHomeCard("Blox Fruit","🍎")
makeHomeCard("Blade Ball","⚔️")
-- QUOC ANH MENU
-- PART 2/3

local ScriptPage = Instance.new("Frame")
ScriptPage.Size = UDim2.new(1,0,1,-55)
ScriptPage.Position = UDim2.fromOffset(0,55)
ScriptPage.BackgroundTransparency = 1
ScriptPage.Visible = false
ScriptPage.ZIndex = 12
ScriptPage.Parent = Content

local ScriptScroll = Instance.new("ScrollingFrame")
ScriptScroll.Size = UDim2.new(1,0,1,0)
ScriptScroll.BackgroundTransparency = 1
ScriptScroll.BorderSizePixel = 0
ScriptScroll.ScrollBarThickness = 3
ScriptScroll.ScrollBarImageTransparency = 0.35
ScriptScroll.CanvasSize = UDim2.fromOffset(0,0)
ScriptScroll.AutomaticCanvasSize = Enum.AutomaticSize.None
ScriptScroll.ScrollingDirection = Enum.ScrollingDirection.Y
ScriptScroll.ZIndex = 13
ScriptScroll.Parent = ScriptPage

local Grid = Instance.new("UIGridLayout")
Grid.CellSize = UDim2.new(0.5,-6,0,54)
Grid.CellPadding = UDim2.fromOffset(8,8)
Grid.SortOrder = Enum.SortOrder.LayoutOrder
Grid.Parent = ScriptScroll

Grid:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    ScriptScroll.CanvasSize = UDim2.fromOffset(0,Grid.AbsoluteContentSize.Y + 10)
end)

local currentCategory = "Steal a Egg"
local SideButtons = {}

local function clearScripts()
    for _,v in ipairs(ScriptScroll:GetChildren()) do
        if v:IsA("TextButton") then
            v:Destroy()
        end
    end
end

local function runScript(code)
    task.spawn(function()
        local ok,err = pcall(function()
            loadstring(code)()
        end)
        if not ok then
            warn("[QuocAnhMenu] Script error:",err)
        end
    end)
end

local function addScript(name,code,index)
    local b = Instance.new("TextButton")
    b.Name = "Script_"..index
    b.BackgroundColor3 = C.card
    b.BackgroundTransparency = 0.02
    b.BorderSizePixel = 0
    b.AutoButtonColor = false
    b.Text = ""
    b.LayoutOrder = index
    b.ZIndex = 14
    b.Parent = ScriptScroll

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0,10)
    corner.Parent = b

    local stroke = Instance.new("UIStroke")
    stroke.Color = C.line
    stroke.Thickness = 1
    stroke.Parent = b

    local icon = Instance.new("TextLabel")
    icon.Size = UDim2.fromOffset(30,30)
    icon.Position = UDim2.fromOffset(8,12)
    icon.BackgroundColor3 = C.card2
    icon.BorderSizePixel = 0
    icon.Text = "▶"
    icon.TextColor3 = C.white
    icon.TextSize = 11
    icon.Font = Enum.Font.GothamBold
    icon.ZIndex = 15
    icon.Parent = b

    local ic = Instance.new("UICorner")
    ic.CornerRadius = UDim.new(0,8)
    ic.Parent = icon

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1,-48,1,-4)
    label.Position = UDim2.fromOffset(45,2)
    label.BackgroundTransparency = 1
    label.Text = name
    label.TextColor3 = C.white
    label.TextSize = 11
    label.Font = Enum.Font.GothamSemibold
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.TextYAlignment = Enum.TextYAlignment.Center
    label.TextTruncate = Enum.TextTruncate.AtEnd
    label.ZIndex = 16
    label.Parent = b

    b.MouseEnter:Connect(function()
        TweenService:Create(
            b,
            TweenInfo.new(0.12),
            {BackgroundColor3=C.card2}
        ):Play()
    end)

    b.MouseLeave:Connect(function()
        TweenService:Create(
            b,
            TweenInfo.new(0.12),
            {BackgroundColor3=C.card}
        ):Play()
    end)

    b.MouseButton1Click:Connect(function()
        runScript(code)
    end)
end

local function showScripts(category)
    currentCategory = category
    PageTitle.Text = category
    PageSub.Text = tostring(#Scripts[category]).." script có sẵn"

    HomePage.Visible = false
    ScriptPage.Visible = true

    clearScripts()

    local q = string.lower(Search.Text or "")
    local index = 0

    for _,data in ipairs(Scripts[category]) do
        local name = data[1]
        local code = data[2]

        if q == "" or string.find(string.lower(name),q,1,true) then
            index += 1
            addScript(name,code,index)
        end
    end

    if index == 0 then
        local empty = Instance.new("TextLabel")
        empty.Name = "NoResult"
        empty.Size = UDim2.new(1,0,0,60)
        empty.BackgroundTransparency = 1
        empty.Text = "Không tìm thấy script"
        empty.TextColor3 = C.gray
        empty.TextSize = 13
        empty.Font = Enum.Font.GothamMedium
        empty.ZIndex = 15
        empty.Parent = ScriptScroll
    end
end

local function showHome()
    currentCategory = "Home"
    PageTitle.Text = "Home"
    PageSub.Text = "Chọn game để xem script"
    HomePage.Visible = true
    ScriptPage.Visible = false
end

local function makeSideButton(name,icon,order)
    local b = Instance.new("TextButton")
    b.Name = name
    b.Size = UDim2.new(1,0,0,40)
    b.BackgroundColor3 = C.card
    b.BackgroundTransparency = 0.25
    b.BorderSizePixel = 0
    b.Text = ""
    b.AutoButtonColor = false
    b.LayoutOrder = order
    b.ZIndex = 13
    b.Parent = SideList

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0,9)
    c.Parent = b

    local ic = Instance.new("TextLabel")
    ic.Size = UDim2.fromOffset(35,40)
    ic.BackgroundTransparency = 1
    ic.Text = icon
    ic.TextColor3 = C.white
    ic.TextSize = 14
    ic.Font = Enum.Font.GothamBold
    ic.ZIndex = 14
    ic.Parent = b

    local tx = Instance.new("TextLabel")
    tx.Size = UDim2.new(1,-42,1,0)
    tx.Position = UDim2.fromOffset(38,0)
    tx.BackgroundTransparency = 1
    tx.Text = name
    tx.TextColor3 = C.white
    tx.TextSize = 10
    tx.Font = Enum.Font.GothamSemibold
    tx.TextXAlignment = Enum.TextXAlignment.Left
    tx.ZIndex = 14
    tx.Parent = b

    SideButtons[name] = b

    b.MouseButton1Click:Connect(function()
        if name == "Home" then
            showHome()
        else
            showScripts(name)
        end
    end)
end

makeSideButton("Home","⌂",1)
makeSideButton("Steal a Egg","🥚",2)
makeSideButton("Blox Fruit","B",3)
makeSideButton("Blade Ball","⚔",4)

for name,b in pairs(CategoryButtons) do
    b.MouseButton1Click:Connect(function()
        showScripts(name)
    end)

    b.MouseEnter:Connect(function()
        TweenService:Create(
            b,
            TweenInfo.new(0.12),
            {BackgroundColor3=C.card2}
        ):Play()
    end)

    b.MouseLeave:Connect(function()
        TweenService:Create(
            b,
            TweenInfo.new(0.12),
            {BackgroundColor3=C.card}
        ):Play()
    end)
end

Search:GetPropertyChangedSignal("Text"):Connect(function()
    if currentCategory ~= "Home" then
        showScripts(currentCategory)
    end
end)
-- QUOC ANH MENU
-- PART 3/3

-- NÚT TRÒN 👑

local Crown = Instance.new("TextButton")
Crown.Name = "CrownButton"
Crown.Size = UDim2.fromOffset(44,44)
Crown.Position = UDim2.new(0,25,0.5,-22)
Crown.BackgroundColor3 = Color3.fromRGB(8,9,11)
Crown.BackgroundTransparency = 0.03
Crown.BorderSizePixel = 0
Crown.Text = "👑"
Crown.TextColor3 = C.white
Crown.TextSize = 21
Crown.Font = Enum.Font.GothamBold
Crown.AutoButtonColor = false
Crown.ZIndex = 100
Crown.Parent = Gui

local CrownCorner = Instance.new("UICorner")
CrownCorner.CornerRadius = UDim.new(1,0)
CrownCorner.Parent = Crown

local CrownStroke = Instance.new("UIStroke")
CrownStroke.Color = C.line
CrownStroke.Thickness = 1.5
CrownStroke.Parent = Crown

Crown.MouseEnter:Connect(function()
    TweenService:Create(
        Crown,
        TweenInfo.new(0.12),
        {BackgroundColor3=C.card2}
    ):Play()
end)

Crown.MouseLeave:Connect(function()
    TweenService:Create(
        Crown,
        TweenInfo.new(0.12),
        {BackgroundColor3=Color3.fromRGB(8,9,11)}
    ):Play()
end)

local menuOpen = true

Crown.MouseButton1Click:Connect(function()
    menuOpen = not menuOpen

    if menuOpen then
        Main.Visible = true
        Main.BackgroundTransparency = 0.08
    else
        Main.Visible = false
    end
end)

-- KÉO MENU

local draggingMenu = false
local dragStart
local startPos

Header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        draggingMenu = true
        dragStart = input.Position
        startPos = Main.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                draggingMenu = false
            end
        end)
    end
end)

UIS.InputChanged:Connect(function(input)
    if draggingMenu and
        (input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch) then

        local delta = input.Position - dragStart

        Main.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- KÉO NÚT TRÒN

local draggingCrown = false
local crownStart
local crownPos

Crown.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        draggingCrown = true
        crownStart = input.Position
        crownPos = Crown.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                draggingCrown = false
            end
        end)
    end
end)

UIS.InputChanged:Connect(function(input)
    if draggingCrown and
        (input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch) then

        local delta = input.Position - crownStart

        Crown.Position = UDim2.new(
            crownPos.X.Scale,
            crownPos.X.Offset + delta.X,
            crownPos.Y.Scale,
            crownPos.Y.Offset + delta.Y
        )
    end
end)

-- CHỐNG CLICK NHẦM KHI ĐANG KÉO NÚT

Crown.Activated:Connect(function()
    if draggingCrown then
        return
    end
end)

-- MỞ HOME NGAY KHI CHẠY

showHome()

print("QuocAnhMenu loaded successfully")
