--// QUOC ANH MENU - PART 1/3
--// BLACK GLASS UI + HEADER ANIMATION + AVATAR HOME

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local LP = Players.LocalPlayer
local PlayerGui = LP:WaitForChild("PlayerGui")

local Old = PlayerGui:FindFirstChild("QuocAnhMenu")
if Old then
    Old:Destroy()
end

--==================================================
-- COLORS
--==================================================

local C = {
    black = Color3.fromRGB(5,6,8),
    dark = Color3.fromRGB(9,10,13),
    panel = Color3.fromRGB(13,14,18),
    card = Color3.fromRGB(20,21,26),
    card2 = Color3.fromRGB(28,29,35),
    white = Color3.fromRGB(245,245,248),
    muted = Color3.fromRGB(145,148,158),
    line = Color3.fromRGB(58,60,68),
    accent = Color3.fromRGB(105,108,120),
    accent2 = Color3.fromRGB(155,158,170)
}

-- aliases dùng cho Part 2
local WHITE = C.white
local MUTED = C.muted
local PANEL2 = C.card
local ACCENT = C.accent
local ACCENT2 = C.accent2

--==================================================
-- SCRIPT DATABASE
--==================================================

local Scripts = {

    ["Steal a Egg"] = {
        {"Sever Hop",'loadstring(game:HttpGet("https://pastefy.app/YoZocJ8O/raw"))()'},
        {"Steal Egg",'loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"))()'},
        {"Spawner Pet",'loadstring(game:HttpGet("https://raw.githubusercontent.com/chocolascript-glitch/Chocola-Pet-Spawner-steal-an-egg/refs/heads/main/script.lua"))()'},
        {"RealKid Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"))()'},
        {"Lennon Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/lennonxscripts/lennonfarm/refs/heads/main/farmv1.lua"))()'},
        {"Miranda v2",'loadstring(game:HttpGet("https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/mirandaafk.lua"))()'},
        {"Miranda",'loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"))()'},
        {"Chilli Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()'},
        {"Foxname Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Fn-stealanegg.lua"))()'},
        {"Sena Hub",'loadstring(game:HttpGet("https://senahub.xyz/raw/loader"))()'},
        {"Kira Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/LSSOPS/OpenSource/refs/heads/main/KiraHub_Steal_An_Egg.lua"))()'},
        {"Zeroin",'loadstring(game:HttpGet("https://zeroinhub.com/api/script"))()'},
        {"ZERO POINT HUB",'loadstring(game:HttpGet("https://raw.githubusercontent.com/JaxRol/ZeroPoint/refs/heads/main/KeySystem"))()'},
        {"ZK Hub [PREMIUM] [KEY]",'_G.Config={ApiKey="ZKCOMMUNITYcfdb742a751aad57d79b375ea6c7cbc7"} loadstring(game:HttpGet("https://zkcommunity.cloud/loader.lua"))()'},
        {"SAIOPS HUB",'loadstring(game:HttpGet("https://api.saiops.cc/scripts/Steal-An-Egg-Script.lua"))()'},
        {"AJJANS HUB",'loadstring(game:HttpGet("https://raw.githubusercontent.com/virtuososvisualedits-prog/Ww/refs/heads/main/final-obfuscated.lua"))()'},
        {"LUMIN HUB",'loadstring(game:HttpGet("http://luminon.top/loader.lua"))()'},
        {"Fake Admin [VIP] [KEY]",'loadstring(game:HttpGet("https://pastefy.app/t06eyyrw/raw"))()'}
    },

    ["Blox Fruit"] = {
        {"Red Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Redz/refs/heads/main/Redz/script.luau"))()'},
        {"Night Hub",'repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer getgenv().team="Marines" loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-NightMystic/Bloxfruits/refs/heads/main/Script.lua"))()'},
        {"Gravity Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()'},
        {"Xynapse Hub",'loadstring(game:HttpGet("https://pastebin.com/raw/uECLqG3j",true))()'},
        {"Zee Hub",'loadstring(game:HttpGet("https://link.trwxz.com/LS-Zee-Hub-VIP"))()'},
        {"Quantum Hub",'loadstring(game:HttpGet("https://pastebin.com/raw/r5h2r57F"))()'},
        {"Zinner Hub",'getgenv().Team="Pirates" loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangNguyenk8/Scripts/refs/heads/main/Loader.lua"))()'},
        {"Andepzai Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/main/AnDepZaiHubBeta.lua"))()'},
        {"OMG Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()'},
        {"Annie Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/1st-Mars/Annie/main/1st.lua"))()'},
        {"Nero Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/NeroHubClub/AutoMythicFruitFinder/refs/heads/main/NeroHubFruitFinder"))()'},
        {"Teddy Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub.lua"))()'},
        {"Zenith Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/LookP/Roblox/refs/heads/main/ZenithHUB%20ZC%20Rivals"))()'},
        {"Speed Hub X",'loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()'},
        {"HoHo Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()'},
        {"Banana Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Banana/refs/heads/main/Banana/script.luau"))()'}
    },

    ["Blade Ball"] = {
        {"KAZZ Hub",'loadstring(game:HttpGet("https://api.jnkie.com/api/v1/loaders/public/353accd2d41a5a30c879705a8ff47926fab2c8b7d7baf34d31c0522b8c6c0a41/download"))()'},
        {"Dryx Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/Doortthemort/676/refs/heads/main/Main.lua"))()'},
        {"Arceney Hub",'loadstring(game:HttpGet("https://arceney.win/cdn/loader.luau?v=scrb"))()'},
        {"Wings Hub [PREMIUM] [KEY]",'loadstring(game:HttpGet("https://wings.ac/loader"))()'},
        {"Argon Hub",'loadstring(game:HttpGet("https://raw.githubusercontent.com/luwriy/jwhub/refs/heads/main/loader"))()'}
    }
}

--==================================================
-- GUI
--==================================================

local Gui = Instance.new("ScreenGui")
Gui.Name = "QuocAnhMenu"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.DisplayOrder = 999
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
Gui.Parent = PlayerGui

local Scale = Instance.new("UIScale")
Scale.Parent = Gui

local function Resize()
    local Camera = workspace.CurrentCamera
    if Camera then
        Scale.Scale = math.clamp(Camera.ViewportSize.X / 720,0.55,0.92)
    end
end

Resize()

if workspace.CurrentCamera then
    workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(Resize)
end

--==================================================
-- MAIN
--==================================================

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.fromOffset(650,370)
Main.Position = UDim2.new(.5,-325,.5,-185)
Main.BackgroundColor3 = C.black
Main.BackgroundTransparency = .06
Main.BorderSizePixel = 0
Main.ZIndex = 10
Main.Parent = Gui

Instance.new("UICorner",Main).CornerRadius = UDim.new(0,18)

local MainStroke = Instance.new("UIStroke",Main)
MainStroke.Color = C.line
MainStroke.Thickness = 1

--==================================================
-- HEADER
--==================================================

local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1,0,0,60)
Header.BackgroundTransparency = 1
Header.ZIndex = 11
Header.Parent = Main

-- Thanh đen dài bao quanh tên
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.fromOffset(245,40)
TitleBar.Position = UDim2.fromOffset(14,9)
TitleBar.BackgroundColor3 = C.dark
TitleBar.BackgroundTransparency = .05
TitleBar.BorderSizePixel = 0
TitleBar.ZIndex = 12
TitleBar.Parent = Header

Instance.new("UICorner",TitleBar).CornerRadius = UDim.new(0,14)

local TitleStroke = Instance.new("UIStroke",TitleBar)
TitleStroke.Color = C.line
TitleStroke.Thickness = 1
TitleStroke.Transparency = .15

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1,-20,1,0)
Title.Position = UDim2.fromOffset(10,0)
Title.BackgroundTransparency = 1
Title.Text = "👑  QuocAnhMenu"
Title.TextColor3 = C.white
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 14
Title.Parent = TitleBar

-- animation viền nhẹ
task.spawn(function()
    while TitleBar.Parent do
        TweenService:Create(
            TitleStroke,
            TweenInfo.new(1.1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),
            {Transparency=.55}
        ):Play()
        task.wait(1.1)

        TweenService:Create(
            TitleStroke,
            TweenInfo.new(1.1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),
            {Transparency=.1}
        ):Play()
        task.wait(1.1)
    end
end)

local Search = Instance.new("TextBox")
Search.Size = UDim2.fromOffset(170,34)
Search.Position = UDim2.new(1,-185,0,12)
Search.BackgroundColor3 = C.card
Search.BackgroundTransparency = .08
Search.BorderSizePixel = 0
Search.PlaceholderText = "⌕  Tìm script..."
Search.PlaceholderColor3 = C.muted
Search.Text = ""
Search.TextColor3 = C.white
Search.TextSize = 10
Search.Font = Enum.Font.Gotham
Search.ClearTextOnFocus = false
Search.ZIndex = 15
Search.Parent = Header

Instance.new("UICorner",Search).CornerRadius = UDim.new(0,11)

local SearchStroke = Instance.new("UIStroke",Search)
SearchStroke.Color = C.line
SearchStroke.Thickness = 1

--==================================================
-- SIDEBAR
--==================================================

local Side = Instance.new("Frame")
Side.Name = "Sidebar"
Side.Size = UDim2.fromOffset(155,295)
Side.Position = UDim2.fromOffset(10,65)
Side.BackgroundColor3 = C.panel
Side.BackgroundTransparency = .05
Side.BorderSizePixel = 0
Side.ZIndex = 11
Side.Parent = Main

Instance.new("UICorner",Side).CornerRadius = UDim.new(0,13)

local SideStroke = Instance.new("UIStroke",Side)
SideStroke.Color = C.line
SideStroke.Thickness = 1

local MenuLabel = Instance.new("TextLabel")
MenuLabel.Size = UDim2.new(1,-20,0,25)
MenuLabel.Position = UDim2.fromOffset(10,8)
MenuLabel.BackgroundTransparency = 1
MenuLabel.Text = "MENU"
MenuLabel.TextColor3 = C.muted
MenuLabel.TextSize = 9
MenuLabel.Font = Enum.Font.GothamBold
MenuLabel.TextXAlignment = Enum.TextXAlignment.Left
MenuLabel.ZIndex = 13
MenuLabel.Parent = Side

local SideList = Instance.new("Frame")
SideList.Size = UDim2.new(1,-14,1,-43)
SideList.Position = UDim2.fromOffset(7,37)
SideList.BackgroundTransparency = 1
SideList.ZIndex = 12
SideList.Parent = Side

local SideLayout = Instance.new("UIListLayout")
SideLayout.SortOrder = Enum.SortOrder.LayoutOrder
SideLayout.Padding = UDim.new(0,6)
SideLayout.Parent = SideList

--==================================================
-- CONTENT
--==================================================

local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Size = UDim2.new(1,-175,1,-70)
Content.Position = UDim2.fromOffset(170,65)
Content.BackgroundTransparency = 1
Content.ZIndex = 11
Content.Parent = Main

local CategoryTitle = Instance.new("TextLabel")
CategoryTitle.Size = UDim2.new(1,-8,0,27)
CategoryTitle.BackgroundTransparency = 1
CategoryTitle.Text = "Home"
CategoryTitle.TextColor3 = C.white
CategoryTitle.TextSize = 19
CategoryTitle.Font = Enum.Font.GothamBold
CategoryTitle.TextXAlignment = Enum.TextXAlignment.Left
CategoryTitle.ZIndex = 13
CategoryTitle.Parent = Content

local CategoryInfo = Instance.new("TextLabel")
CategoryInfo.Size = UDim2.new(1,-8,0,18)
CategoryInfo.Position = UDim2.fromOffset(0,27)
CategoryInfo.BackgroundTransparency = 1
CategoryInfo.Text = "Welcome back, Owner"
CategoryInfo.TextColor3 = C.muted
CategoryInfo.TextSize = 9
CategoryInfo.Font = Enum.Font.Gotham
CategoryInfo.TextXAlignment = Enum.TextXAlignment.Left
CategoryInfo.ZIndex = 13
CategoryInfo.Parent = Content

local Count = Instance.new("TextLabel")
Count.Size = UDim2.fromOffset(55,22)
Count.Position = UDim2.new(1,-55,0,2)
Count.BackgroundColor3 = C.card
Count.BackgroundTransparency = .1
Count.BorderSizePixel = 0
Count.TextColor3 = C.white
Count.TextSize = 9
Count.Font = Enum.Font.GothamBold
Count.ZIndex = 14
Count.Parent = Content

Instance.new("UICorner",Count).CornerRadius = UDim.new(1,0)

local CountStroke = Instance.new("UIStroke",Count)
CountStroke.Color = C.line
CountStroke.Thickness = 1

local ScriptScroll = Instance.new("ScrollingFrame")
ScriptScroll.Name = "ScriptScroll"
ScriptScroll.Size = UDim2.new(1,0,1,-52)
ScriptScroll.Position = UDim2.fromOffset(0,52)
ScriptScroll.BackgroundTransparency = 1
ScriptScroll.BorderSizePixel = 0
ScriptScroll.ScrollBarThickness = 3
ScriptScroll.ScrollBarImageColor3 = C.line
ScriptScroll.CanvasSize = UDim2.new(0,0,0,0)
ScriptScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScriptScroll.ScrollingDirection = Enum.ScrollingDirection.Y
ScriptScroll.ZIndex = 20
ScriptScroll.Parent = Content

local ScrollPadding = Instance.new("UIPadding")
ScrollPadding.PaddingTop = UDim.new(0,2)
ScrollPadding.PaddingBottom = UDim.new(0,8)
ScrollPadding.PaddingLeft = UDim.new(0,2)
ScrollPadding.PaddingRight = UDim.new(0,4)
ScrollPadding.Parent = ScriptScroll

local ScrollLayout = Instance.new("UIListLayout")
ScrollLayout.SortOrder = Enum.SortOrder.LayoutOrder
ScrollLayout.Padding = UDim.new(0,8)
ScrollLayout.Parent = ScriptScroll

--==================================================
-- HELPERS
--==================================================

CurrentCategory = "Home"

local function UpdateCount(Number)
    Count.Text = tostring(Number)
end

local function ClearScripts()
    for _,Child in ipairs(ScriptScroll:GetChildren()) do
        if not Child:IsA("UIListLayout")
        and not Child:IsA("UIPadding") then
            Child:Destroy()
        end
    end
end
--// QUOC ANH MENU - PART 2/3
--// SIDEBAR + HOME AVATAR + SCRIPT CARDS + SEARCH

--==================================================
-- SIDEBAR BUTTONS
--==================================================

local SidebarButtons = {}

local Icons = {
    ["Home"] = "⌂",
    ["Steal a Egg"] = "🥚",
    ["Blox Fruit"] = "⚔",
    ["Blade Ball"] = "◈"
}

local function CreateSidebarButton(Name,Order)

    local Button = Instance.new("TextButton")
    Button.Name = Name
    Button.LayoutOrder = Order
    Button.Size = UDim2.new(1,0,0,50)
    Button.BackgroundColor3 = Color3.fromRGB(255,255,255)
    Button.BackgroundTransparency = .96
    Button.BorderSizePixel = 0
    Button.AutoButtonColor = false
    Button.Text = ""
    Button.ZIndex = 22
    Button.Parent = SideList

    Instance.new("UICorner",Button).CornerRadius = UDim.new(0,14)

    local Icon = Instance.new("Frame")
    Icon.Name = "Icon"
    Icon.Size = UDim2.fromOffset(34,34)
    Icon.Position = UDim2.new(0,7,.5,-17)
    Icon.BackgroundColor3 = Color3.fromRGB(255,255,255)
    Icon.BackgroundTransparency = .94
    Icon.BorderSizePixel = 0
    Icon.ZIndex = 23
    Icon.Parent = Button

    Instance.new("UICorner",Icon).CornerRadius = UDim.new(1,0)

    local IconText = Instance.new("TextLabel")
    IconText.Size = UDim2.fromScale(1,1)
    IconText.BackgroundTransparency = 1
    IconText.Text = Icons[Name] or "•"
    IconText.TextColor3 = MUTED
    IconText.Font = Enum.Font.GothamBold
    IconText.TextSize = 15
    IconText.ZIndex = 24
    IconText.Parent = Icon

    local Text = Instance.new("TextLabel")
    Text.Size = UDim2.new(1,-52,1,0)
    Text.Position = UDim2.fromOffset(48,0)
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

local HomeButton = CreateSidebarButton("Home",1)
local EggButton = CreateSidebarButton("Steal a Egg",2)
local BloxButton = CreateSidebarButton("Blox Fruit",3)
local BladeButton = CreateSidebarButton("Blade Ball",4)

--==================================================
-- SELECT SIDEBAR
--==================================================

local function SelectSidebar(Name)

    for ButtonName,Data in pairs(SidebarButtons) do

        local Selected = ButtonName == Name

        if Selected then

            TweenService:Create(
                Data.Button,
                TweenInfo.new(.18,Enum.EasingStyle.Quart),
                {
                    BackgroundTransparency=.82,
                    BackgroundColor3=ACCENT
                }
            ):Play()

            TweenService:Create(
                Data.Icon,
                TweenInfo.new(.18,Enum.EasingStyle.Quart),
                {
                    BackgroundTransparency=.05,
                    BackgroundColor3=ACCENT2
                }
            ):Play()

            Data.IconText.TextColor3=WHITE
            Data.Text.TextColor3=WHITE
            Data.Text.Font=Enum.Font.GothamBold

        else

            TweenService:Create(
                Data.Button,
                TweenInfo.new(.18,Enum.EasingStyle.Quart),
                {
                    BackgroundTransparency=.96,
                    BackgroundColor3=Color3.fromRGB(255,255,255)
                }
            ):Play()

            TweenService:Create(
                Data.Icon,
                TweenInfo.new(.18,Enum.EasingStyle.Quart),
                {
                    BackgroundTransparency=.94,
                    BackgroundColor3=Color3.fromRGB(255,255,255)
                }
            ):Play()

            Data.IconText.TextColor3=MUTED
            Data.Text.TextColor3=MUTED
            Data.Text.Font=Enum.Font.GothamMedium

        end
    end
end

--==================================================
-- SCRIPT CARD
--==================================================

local function CreateScriptCard(Item,Index)

    local Card = Instance.new("Frame")
    Card.Name="Script_"..Index
    Card.LayoutOrder=Index
    Card.Size=UDim2.new(1,0,0,55)
    Card.BackgroundColor3=PANEL2
    Card.BackgroundTransparency=.28
    Card.BorderSizePixel=0
    Card.ZIndex=23
    Card.Parent=ScriptScroll

    Instance.new("UICorner",Card).CornerRadius=UDim.new(0,14)

    local Stroke=Instance.new("UIStroke")
    Stroke.Color=Color3.fromRGB(90,95,120)
    Stroke.Transparency=.82
    Stroke.Thickness=1
    Stroke.Parent=Card

    local Icon=Instance.new("Frame")
    Icon.Size=UDim2.fromOffset(35,35)
    Icon.Position=UDim2.fromOffset(9,10)
    Icon.BackgroundColor3=ACCENT
    Icon.BackgroundTransparency=.78
    Icon.BorderSizePixel=0
    Icon.ZIndex=24
    Icon.Parent=Card

    Instance.new("UICorner",Icon).CornerRadius=UDim.new(1,0)

    local IconText=Instance.new("TextLabel")
    IconText.Size=UDim2.fromScale(1,1)
    IconText.BackgroundTransparency=1
    IconText.Text="✦"
    IconText.TextColor3=WHITE
    IconText.Font=Enum.Font.GothamBold
    IconText.TextSize=14
    IconText.ZIndex=25
    IconText.Parent=Icon

    local Name=Instance.new("TextLabel")
    Name.Size=UDim2.new(1,-155,0,25)
    Name.Position=UDim2.fromOffset(54,7)
    Name.BackgroundTransparency=1
    Name.Text=Item[1]
    Name.TextColor3=WHITE
    Name.Font=Enum.Font.GothamBold
    Name.TextSize=12
    Name.TextXAlignment=Enum.TextXAlignment.Left
    Name.TextTruncate=Enum.TextTruncate.AtEnd
    Name.ZIndex=24
    Name.Parent=Card

    local Type=Instance.new("TextLabel")
    Type.Size=UDim2.new(1,-155,0,18)
    Type.Position=UDim2.fromOffset(54,29)
    Type.BackgroundTransparency=1
    Type.Text="Script Loader  •  #"..Index
    Type.TextColor3=MUTED
    Type.Font=Enum.Font.Gotham
    Type.TextSize=8
    Type.TextXAlignment=Enum.TextXAlignment.Left
    Type.ZIndex=24
    Type.Parent=Card

    local Execute=Instance.new("TextButton")
    Execute.Size=UDim2.fromOffset(74,31)
    Execute.Position=UDim2.new(1,-84,.5,-15)
    Execute.BackgroundColor3=ACCENT
    Execute.BackgroundTransparency=.08
    Execute.BorderSizePixel=0
    Execute.Text="RUN  ›"
    Execute.TextColor3=WHITE
    Execute.Font=Enum.Font.GothamBold
    Execute.TextSize=9
    Execute.AutoButtonColor=false
    Execute.ZIndex=25
    Execute.Parent=Card

    Instance.new("UICorner",Execute).CornerRadius=UDim.new(1,0)

    Execute.MouseEnter:Connect(function()

        TweenService:Create(
            Card,
            TweenInfo.new(.15),
            {BackgroundTransparency=.12}
        ):Play()

        TweenService:Create(
            Execute,
            TweenInfo.new(.15),
            {BackgroundColor3=ACCENT2}
        ):Play()

    end)

    Execute.MouseLeave:Connect(function()

        TweenService:Create(
            Card,
            TweenInfo.new(.15),
            {BackgroundTransparency=.28}
        ):Play()

        TweenService:Create(
            Execute,
            TweenInfo.new(.15),
            {BackgroundColor3=ACCENT}
        ):Play()

    end)

    Execute.MouseButton1Click:Connect(function()

        Execute.Text="RUNNING..."

        task.spawn(function()

            local Success,Error=pcall(function()
                loadstring(Item[2])()
            end)

            if Success then
                Execute.Text="DONE ✓"
            else
                Execute.Text="ERROR"
                warn("[QuocAnhMenu] "..tostring(Error))
            end

            task.wait(1.2)

            if Execute.Parent then
                Execute.Text="RUN  ›"
            end

        end)

    end)

    return Card
end

--==================================================
-- HOME AVATAR
--==================================================

local function CreateAvatarCard()

    local AvatarCard=Instance.new("Frame")
    AvatarCard.Name="AvatarCard"
    AvatarCard.Size=UDim2.new(1,0,0,155)
    AvatarCard.BackgroundColor3=C.card
    AvatarCard.BackgroundTransparency=.12
    AvatarCard.BorderSizePixel=0
    AvatarCard.ZIndex=23
    AvatarCard.ClipsDescendants=true
    AvatarCard.Parent=ScriptScroll

    Instance.new("UICorner",AvatarCard).CornerRadius=UDim.new(0,17)

    local AvatarStroke=Instance.new("UIStroke")
    AvatarStroke.Color=C.line
    AvatarStroke.Thickness=1
    AvatarStroke.Transparency=.2
    AvatarStroke.Parent=AvatarCard

    -- ẢNH GIỮ TO, KHÔNG THU NHỎ
    local Avatar=Instance.new("ImageLabel")
    Avatar.Name="Avatar"
    Avatar.Size=UDim2.fromOffset(105,105)
    Avatar.Position=UDim2.new(.5,-52,0,8)
    Avatar.BackgroundColor3=C.dark
    Avatar.BorderSizePixel=0
    Avatar.ScaleType=Enum.ScaleType.Crop
    Avatar.ZIndex=24
    Avatar.Parent=AvatarCard

    Instance.new("UICorner",Avatar).CornerRadius=UDim.new(0,18)

    local AvatarStroke=Instance.new("UIStroke")
    AvatarStroke.Color=C.line
    AvatarStroke.Thickness=1.5
    AvatarStroke.Parent=Avatar

    -- LẤY AVATAR ADMINVNGX
    task.spawn(function()

        local Success,UserId=pcall(function()
            return Players:GetUserIdFromNameAsync("AdminVNGx")
        end)

        if Success and UserId then

            local Ok,Image=pcall(function()
                return Players:GetUserThumbnailAsync(
                    UserId,
                    Enum.ThumbnailType.HeadShot,
                    Enum.ThumbnailSize.Size420x420
                )
            end)

            if Ok and Image then
                Avatar.Image=Image
            end

        end

    end)

    -- TÊN NGAY DƯỚI AVATAR
    local NameBar=Instance.new("Frame")
    NameBar.Name="OwnerNameBar"
    NameBar.Size=UDim2.fromOffset(205,27)
    NameBar.Position=UDim2.new(.5,-102,0,116)
    NameBar.BackgroundColor3=Color3.fromRGB(8,9,11)
    NameBar.BackgroundTransparency=.05
    NameBar.BorderSizePixel=0
    NameBar.ZIndex=25
    NameBar.Parent=AvatarCard

    Instance.new("UICorner",NameBar).CornerRadius=UDim.new(1,0)

    local NameStroke=Instance.new("UIStroke")
    NameStroke.Color=C.line
    NameStroke.Thickness=1
    NameStroke.Transparency=.15
    NameStroke.Parent=NameBar

    local OwnerName=Instance.new("TextLabel")
    OwnerName.Size=UDim2.new(1,-12,1,0)
    OwnerName.Position=UDim2.fromOffset(6,0)
    OwnerName.BackgroundTransparency=1
    OwnerName.Text="AdminVNGx • 👑OWNER👑"
    OwnerName.TextColor3=WHITE
    OwnerName.TextSize=10
    OwnerName.Font=Enum.Font.GothamBold
    OwnerName.TextXAlignment=Enum.TextXAlignment.Center
    OwnerName.ZIndex=26
    OwnerName.Parent=NameBar

    -- animation nhẹ cho thanh tên
    task.spawn(function()

        while NameBar.Parent do

            TweenService:Create(
                NameStroke,
                TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),
                {Transparency=.55}
            ):Play()

            task.wait(1)

            TweenService:Create(
                NameStroke,
                TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),
                {Transparency=.08}
            ):Play()

            task.wait(1)

        end

    end)

end

--==================================================
-- HOME
--==================================================

local function CreateHome()

    ClearScripts()

    CategoryTitle.Text="Welcome back"
    CategoryInfo.Text="Quoc Anh Menu • Select a game category"

    local Total=0

    for _,List in pairs(Scripts) do
        Total += #List
    end

    UpdateCount(Total)

    -- AVATAR
    CreateAvatarCard()

    -- GIỚI THIỆU
    local HomeCard=Instance.new("Frame")
    HomeCard.Name="WelcomeCard"
    HomeCard.LayoutOrder=2
    HomeCard.Size=UDim2.new(1,0,0,100)
    HomeCard.BackgroundColor3=C.card
    HomeCard.BackgroundTransparency=.18
    HomeCard.BorderSizePixel=0
    HomeCard.ZIndex=23
    HomeCard.Parent=ScriptScroll

    Instance.new("UICorner",HomeCard).CornerRadius=UDim.new(0,17)

    local HomeStroke=Instance.new("UIStroke")
    HomeStroke.Color=C.line
    HomeStroke.Thickness=1
    HomeStroke.Transparency=.35
    HomeStroke.Parent=HomeCard

    local HomeTitle=Instance.new("TextLabel")
    HomeTitle.Size=UDim2.new(1,-24,0,25)
    HomeTitle.Position=UDim2.fromOffset(12,10)
    HomeTitle.BackgroundTransparency=1
    HomeTitle.Text="👑  QUOC ANH MENU"
    HomeTitle.TextColor3=WHITE
    HomeTitle.Font=Enum.Font.GothamBlack
    HomeTitle.TextSize=15
    HomeTitle.TextXAlignment=Enum.TextXAlignment.Left
    HomeTitle.ZIndex=24
    HomeTitle.Parent=HomeCard

    local HomeText=Instance.new("TextLabel")
    HomeText.Size=UDim2.new(1,-24,0,60)
    HomeText.Position=UDim2.fromOffset(12,35)
    HomeText.BackgroundTransparency=1
    HomeText.Text="Xin chào, tôi là OWNER.\nScript hiện chưa hoàn thiện, chúng tôi đang cố update.\nĐây là 1 bản script tổng hợp các script No Key khác.\nNếu script nào có Key thì tôi đã ghi chữ [KEY] nhỏ ở sau."
    HomeText.TextColor3=Color3.fromRGB(205,207,215)
    HomeText.Font=Enum.Font.Gotham
    HomeText.TextSize=8
    HomeText.TextWrapped=true
    HomeText.TextXAlignment=Enum.TextXAlignment.Left
    HomeText.TextYAlignment=Enum.TextYAlignment.Top
    HomeText.ZIndex=24
    HomeText.Parent=HomeCard

    -- THỐNG KÊ
    local Categories={
        {"🥚","Steal a Egg",#Scripts["Steal a Egg"]},
        {"⚔","Blox Fruit",#Scripts["Blox Fruit"]},
        {"◈","Blade Ball",#Scripts["Blade Ball"]}
    }

    for Index,Data in ipairs(Categories) do

        local Stat=Instance.new("Frame")
        Stat.Name="Stat_"..Index
        Stat.LayoutOrder=Index+2
        Stat.Size=UDim2.new(.32,-4,0,72)
        Stat.BackgroundColor3=C.card
        Stat.BackgroundTransparency=.18
        Stat.BorderSizePixel=0
        Stat.ZIndex=23
        Stat.Parent=ScriptScroll

        Instance.new("UICorner",Stat).CornerRadius=UDim.new(0,15)

        local Icon=Instance.new("TextLabel")
        Icon.Size=UDim2.new(1,0,0,22)
        Icon.Position=UDim2.fromOffset(0,7)
        Icon.BackgroundTransparency=1
        Icon.Text=Data[1]
        Icon.TextColor3=WHITE
        Icon.TextSize=13
        Icon.ZIndex=24
        Icon.Parent=Stat

        local Num=Instance.new("TextLabel")
        Num.Size=UDim2.new(1,0,0,25)
        Num.Position=UDim2.fromOffset(0,27)
        Num.BackgroundTransparency=1
        Num.Text=tostring(Data[3])
        Num.TextColor3=WHITE
        Num.Font=Enum.Font.GothamBlack
        Num.TextSize=16
        Num.ZIndex=24
        Num.Parent=Stat

        local Cat=Instance.new("TextLabel")
        Cat.Size=UDim2.new(1,-6,0,15)
        Cat.Position=UDim2.fromOffset(3,52)
        Cat.BackgroundTransparency=1
        Cat.Text=Data[2]
        Cat.TextColor3=MUTED
        Cat.Font=Enum.Font.GothamMedium
        Cat.TextSize=7
        Cat.TextTruncate=Enum.TextTruncate.AtEnd
        Cat.ZIndex=24
        Cat.Parent=Stat

    end

end

--==================================================
-- SHOW CATEGORY
--==================================================

local function ShowCategory(Category)

    CurrentCategory=Category

    SelectSidebar(Category)

    if Category=="Home" then
        CreateHome()
        return
    end

    ClearScripts()

    local List=Scripts[Category] or {}

    CategoryTitle.Text=Category
    CategoryInfo.Text="Available scripts for "..Category
    UpdateCount(#List)

    for Index,Item in ipairs(List) do
        CreateScriptCard(Item,Index)
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

    local Query=string.lower(Search.Text or "")

    if Query=="" then
        ShowCategory(CurrentCategory)
        return
    end

    ClearScripts()

    CategoryTitle.Text="Search"
    CategoryInfo.Text="Searching all available scripts"

    local Results={}

    for Category,List in pairs(Scripts) do

        for _,Item in ipairs(List) do

            if string.find(
                string.lower(Item[1]),
                Query,
                1,
                true
            ) then

                table.insert(Results,Item)

            end

        end

    end

    UpdateCount(#Results)

    for Index,Item in ipairs(Results) do
        CreateScriptCard(Item,Index)
    end

end)

-- HOME MẶC ĐỊNH
ShowCategory("Home")
--// QUOC ANH MENU - PART 3/3

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

--==================================================
-- X CLOSE BUTTON
--==================================================

Search.Position = UDim2.new(1,-225,0,13)

local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Parent = Header
CloseButton.AnchorPoint = Vector2.new(1,0)
CloseButton.Position = UDim2.new(1,-10,0,13)
CloseButton.Size = UDim2.fromOffset(34,34)
CloseButton.BackgroundColor3 = Color3.fromRGB(28,30,34)
CloseButton.BackgroundTransparency = 0.08
CloseButton.BorderSizePixel = 0
CloseButton.Text = "×"
CloseButton.TextColor3 = Color3.fromRGB(220,220,225)
CloseButton.TextSize = 25
CloseButton.Font = Enum.Font.GothamBold
CloseButton.AutoButtonColor = false

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(1,0)
CloseCorner.Parent = CloseButton

local CloseStroke = Instance.new("UIStroke")
CloseStroke.Parent = CloseButton
CloseStroke.Color = Color3.fromRGB(75,78,84)
CloseStroke.Transparency = 0.25
CloseStroke.Thickness = 1

CloseButton.MouseEnter:Connect(function()
    TweenService:Create(
        CloseButton,
        TweenInfo.new(0.15,Enum.EasingStyle.Quad),
        {
            BackgroundColor3 = Color3.fromRGB(48,50,56),
            TextColor3 = Color3.fromRGB(255,255,255),
            Size = UDim2.fromOffset(37,37)
        }
    ):Play()
end)

CloseButton.MouseLeave:Connect(function()
    TweenService:Create(
        CloseButton,
        TweenInfo.new(0.15,Enum.EasingStyle.Quad),
        {
            BackgroundColor3 = Color3.fromRGB(28,30,34),
            TextColor3 = Color3.fromRGB(220,220,225),
            Size = UDim2.fromOffset(34,34)
        }
    ):Play()
end)

--==================================================
-- MENU OPEN / CLOSE
--==================================================

local menuOpen = true
local busy = false

local function OpenMenu()
    if busy or menuOpen then return end

    busy = true
    menuOpen = true

    Main.Visible = true
    Main.BackgroundTransparency = 1

    TweenService:Create(
        Main,
        TweenInfo.new(0.22,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),
        {
            BackgroundTransparency = 0
        }
    ):Play()

    task.delay(0.22,function()
        busy = false
    end)
end

local function CloseMenu()
    if busy or not menuOpen then return end

    busy = true
    menuOpen = false

    local tween = TweenService:Create(
        Main,
        TweenInfo.new(0.18,Enum.EasingStyle.Quad,Enum.EasingDirection.In),
        {
            BackgroundTransparency = 1
        }
    )

    tween:Play()

    task.delay(0.18,function()
        if not menuOpen then
            Main.Visible = false
        end
        busy = false
    end)
end

CloseButton.MouseButton1Click:Connect(function()
    CloseMenu()
end)

--==================================================
-- TITLE BAR SHINE ANIMATION
--==================================================

TitleBar.ClipsDescendants = true

local Shine = Instance.new("Frame")
Shine.Name = "Shine"
Shine.Parent = TitleBar
Shine.Size = UDim2.fromOffset(35,70)
Shine.Position = UDim2.fromOffset(-55,-15)
Shine.BackgroundColor3 = Color3.fromRGB(255,255,255)
Shine.BackgroundTransparency = 0.92
Shine.BorderSizePixel = 0
Shine.Rotation = 15
Shine.ZIndex = TitleBar.ZIndex + 1

task.spawn(function()
    while Gui.Parent do
        Shine.Position = UDim2.fromOffset(-55,-15)

        local tween = TweenService:Create(
            Shine,
            TweenInfo.new(
                1.8,
                Enum.EasingStyle.Quad,
                Enum.EasingDirection.InOut
            ),
            {
                Position = UDim2.new(1,30,-0.15,0)
            }
        )

        tween:Play()
        tween.Completed:Wait()

        task.wait(1.2)
    end
end)

--==================================================
-- CROWN BUTTON
--==================================================

local Crown = Instance.new("TextButton")
Crown.Name = "CrownButton"
Crown.Size = UDim2.fromOffset(44,44)
Crown.Position = UDim2.new(0,25,0.5,-22)
Crown.BackgroundColor3 = Color3.fromRGB(8,9,11)
Crown.BackgroundTransparency = 0.05
Crown.BorderSizePixel = 0
Crown.Text = "👑"
Crown.TextSize = 23
Crown.Font = Enum.Font.GothamBold
Crown.AutoButtonColor = false
Crown.ZIndex = 50
Crown.Parent = Gui

local CrownCorner = Instance.new("UICorner")
CrownCorner.CornerRadius = UDim.new(1,0)
CrownCorner.Parent = Crown

local CrownStroke = Instance.new("UIStroke")
CrownStroke.Color = Color3.fromRGB(65,68,74)
CrownStroke.Thickness = 1
CrownStroke.Transparency = 0.15
CrownStroke.Parent = Crown

Crown.MouseEnter:Connect(function()
    TweenService:Create(
        Crown,
        TweenInfo.new(0.15,Enum.EasingStyle.Quad),
        {
            Size = UDim2.fromOffset(48,48)
        }
    ):Play()
end)

Crown.MouseLeave:Connect(function()
    TweenService:Create(
        Crown,
        TweenInfo.new(0.15,Enum.EasingStyle.Quad),
        {
            Size = UDim2.fromOffset(44,44)
        }
    ):Play()
end)

--==================================================
-- CROWN DRAG + CLICK
--==================================================

local crownDragging = false
local crownMoved = false
local crownStart
local crownStartPos

Crown.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        crownDragging = true
        crownMoved = false

        crownStart = input.Position
        crownStartPos = Crown.Position
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if not crownDragging then return end

    if input.UserInputType == Enum.UserInputType.MouseMovement
    or input.UserInputType == Enum.UserInputType.Touch then

        local delta = input.Position - crownStart

        if delta.Magnitude > 5 then
            crownMoved = true
        end

        Crown.Position = UDim2.new(
            crownStartPos.X.Scale,
            crownStartPos.X.Offset + delta.X,
            crownStartPos.Y.Scale,
            crownStartPos.Y.Offset + delta.Y
        )
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        crownDragging = false
    end
end)

Crown.MouseButton1Click:Connect(function()
    if crownMoved then
        crownMoved = false
        return
    end

    if menuOpen then
        CloseMenu()
    else
        OpenMenu()
    end
end)

--==================================================
-- MAIN MENU DRAG
--==================================================

local dragging = false
local dragStart
local startPos

Header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        dragging = true
        dragStart = input.Position
        startPos = Main.Position
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if not dragging then return end

    if input.UserInputType == Enum.UserInputType.MouseMovement
    or input.UserInputType == Enum.UserInputType.Touch then

        local delta = input.Position - dragStart

        Main.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        dragging = false
    end
end)

--==================================================
-- FINAL SETUP
--==================================================

Main.Visible = true
Main.BackgroundTransparency = 0

print("👑 QuocAnhMenu loaded successfully")
