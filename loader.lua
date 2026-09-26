--// QUOCANHMENU V5 - PART 1/3

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local Player = Players.LocalPlayer

pcall(function()
    local old = CoreGui:FindFirstChild("QuocAnhMenu")
    if old then old:Destroy() end
end)

pcall(function()
    local old = Player:WaitForChild("PlayerGui"):FindFirstChild("QuocAnhMenu")
    if old then old:Destroy() end
end)

local WHITE = Color3.fromRGB(255,255,255)
local DARK = Color3.fromRGB(10,13,22)
local BLUE = Color3.fromRGB(75,145,255)
local GRAY = Color3.fromRGB(150,158,175)
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

local Gui = Instance.new("ScreenGui")
Gui.Name = "QuocAnhMenu"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.DisplayOrder = 999999
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
Gui.Parent = CoreGui

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0,560,0,350)
Main.Position = UDim2.new(0.5,-280,0.5,-175)
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
    ColorSequenceKeypoint.new(0,Color3.fromRGB(20,25,42)),
    ColorSequenceKeypoint.new(0.45,Color3.fromRGB(11,15,26)),
    ColorSequenceKeypoint.new(1,Color3.fromRGB(25,18,45))
})
MainGradient.Parent = Main

local Shadow = Instance.new("ImageLabel")
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

local Header = Instance.new("Frame")
Header.Size = UDim2.new(1,-24,0,58)
Header.Position = UDim2.new(0,12,0,10)
Header.BackgroundColor3 = WHITE
Header.BackgroundTransparency = 0.94
Header.BorderSizePixel = 0
Header.ZIndex = 20
Header.Parent = Main

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0,14)
HeaderCorner.Parent = Header

local HeaderStroke = Instance.new("UIStroke")
HeaderStroke.Color = WHITE
HeaderStroke.Transparency = 0.9
HeaderStroke.Parent = Header

local Logo = Instance.new("TextLabel")
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

local Close = Instance.new("TextButton")
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

local SearchBox = Instance.new("TextBox")
SearchBox.Size = UDim2.new(0,170,0,34)
SearchBox.Position = UDim2.new(1,-220,0.5,-17)
SearchBox.BackgroundColor3 = WHITE
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

local Sidebar = Instance.new("Frame")
Sidebar.Size = UDim2.new(0,145,1,-82)
Sidebar.Position = UDim2.new(0,12,0,74)
Sidebar.BackgroundColor3 = WHITE
Sidebar.BackgroundTransparency = 0.95
Sidebar.BorderSizePixel = 0
Sidebar.ZIndex = 15
Sidebar.Parent = Main

local SideCorner = Instance.new("UICorner")
SideCorner.CornerRadius = UDim.new(0,14)
SideCorner.Parent = Sidebar

local SideStroke = Instance.new("UIStroke")
SideStroke.Color = WHITE
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

local Content = Instance.new("Frame")
Content.Size = UDim2.new(1,-169,1,-82)
Content.Position = UDim2.new(0,157,0,74)
Content.BackgroundTransparency = 1
Content.BorderSizePixel = 0
Content.ZIndex = 15
Content.Parent = Main

local Scroll = Instance.new("ScrollingFrame")
Scroll.Size = UDim2.new(1,0,1,0)
Scroll.BackgroundTransparency = 1
Scroll.BorderSizePixel = 0
Scroll.ScrollBarThickness = 3
Scroll.ScrollBarImageColor3 = BLUE
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

local Scripts = {

["Steal a Egg"] = {

{Name="sever hop",Code=[[loadstring(game:HttpGet("https://pastefy.app/YoZocJ8O/raw"))()]]},

{Name="steal egg",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"))()]]},

{Name="Spawner Pet",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/chocolascript-glitch/Chocola-Pet-Spawner-steal-an-egg/refs/heads/main/script.lua"))()]]},

{Name="RealKid Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"))()]]},

{Name="Lennon Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/lennonxscripts/lennonfarm/refs/heads/main/farmv1.lua"))()]]},

{Name="Miranda v2",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/mirandaafk.lua"))()]]},

{Name="Miranda",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"))()]]},

{Name="Chilli hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()]]},

{Name="Foxname hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Fn-stealanegg.lua"))()]]},

{Name="Sena hub",Code=[[loadstring(game:HttpGet("https://senahub.xyz/raw/loader"))()]]},

{Name="Kira Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/LSSOPS/OpenSource/refs/heads/main/KiraHub_Steal_An_Egg.lua"))()]]},

{Name="Zeroin",Code=[[loadstring(game:HttpGet("https://zeroinhub.com/api/script"))()]]},

{Name="ZERO POINT HUB",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/JaxRol/ZeroPoint/refs/heads/main/KeySystem"))()]]},

{Name="ZK Hub [PREMIUM]",Code=[[_G.Config={ApiKey="ZKCOMMUNITYcfdb742a751aad57d79b375ea6c7cbc7"} loadstring(game:HttpGet("https://zkcommunity.cloud/loader.lua"))()]]},

{Name="SAIOPS HUB",Code=[[loadstring(game:HttpGet("https://api.saiops.cc/scripts/Steal-An-Egg-Script.lua"))()]]},

{Name="AJJANS HUB",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/virtuososvisualedits-prog/Ww/refs/heads/main/final-obfuscated.lua"))()]]},

{Name="LUMIN HUB",Code=[[loadstring(game:HttpGet("http://luminon.top/loader.lua"))()]]},

{Name="Fake Admin [VIP] KEY",Code=[[loadstring(game:HttpGet("https://pastefy.app/t06eyyrw/raw"))()]]}

},

["Blox Fruit"] = {

{Name="Red Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Redz/refs/heads/main/Redz/script.luau"))()]]},

{Name="Night Hub",Code=[[repeat wait() until game:IsLoaded() and game.Players.LocalPlayer getgenv().team="Marines" loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-NightMystic/Bloxfruits/refs/heads/main/Script.lua"))()]]},

{Name="Gravity Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()]]},

{Name="Xynapse Hub",Code=[[loadstring(game:HttpGet("https://pastebin.com/raw/uECLqG3j",true))()]]},

{Name="Zee Hub",Code=[[loadstring(game:HttpGet("https://link.trwxz.com/LS-Zee-Hub-VIP"))()]]},

{Name="Quantum Hub",Code=[[loadstring(game:HttpGet("https://pastebin.com/raw/r5h2r57F"))()]]},

{Name="Zinner Hub",Code=[[getgenv().Team="Pirates" loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangNguyenk8/Scripts/refs/heads/main/Loader.lua"))()]]},

{Name="Andepzai Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/main/AnDepZaiHubBeta.lua"))()]]},

{Name="OMG Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()]]},

{Name="Annie Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/1st-Mars/Annie/main/1st.lua"))()]]},

{Name="Nero Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/NeroHubClub/AutoMythicFruitFinder/refs/heads/main/NeroHubFruitFinder"))()]]},

{Name="Teddy Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub.lua"))()]]},

{Name="Zenith Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/LookP/Roblox/refs/heads/main/ZenithHUB%20ZC%20Rivals"))()]]},

{Name="Speed Hub X",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()]]},

{Name="HoHo hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()]]},

{Name="Banana Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Banana/refs/heads/main/Banana/script.luau"))()]]}

},

["Blade Ball"] = {

{Name="KAZZ Hub",Code=[[loadstring(game:HttpGet("https://api.jnkie.com/api/v1/loaders/public/353accd2d41a5a30c879705a8ff47926fab2c8b7d7baf34d31c0522b8c6c0a41/download"))()]]},

{Name="Dryx Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/Doortthemort/676/refs/heads/main/Main.lua"))()]]},

{Name="Arceney Hub",Code=[[loadstring(game:HttpGet("https://arceney.win/cdn/loader.luau?v=scrb"))()]]},

{Name="Wings Hub [Premium]",Code=[[loadstring(game:HttpGet("https://wings.ac/loader"))()]]},

{Name="Argon Hub",Code=[[loadstring(game:HttpGet("https://raw.githubusercontent.com/luwriy/jwhub/refs/heads/main/loader"))()]]}

}
}
--// QUOCANHMENU V5 - PART 2/3

local HomeTitle = Instance.new("TextLabel")
HomeTitle.BackgroundTransparency = 1
HomeTitle.Size = UDim2.new(1,-4,0,38)
HomeTitle.Font = Enum.Font.GothamBold
HomeTitle.Text = "Welcome to QuocAnhMenu 👋"
HomeTitle.TextColor3 = WHITE
HomeTitle.TextSize = 21
HomeTitle.TextXAlignment = Enum.TextXAlignment.Left
HomeTitle.LayoutOrder = 1
HomeTitle.Parent = Scroll

local HomeSub = Instance.new("TextLabel")
HomeSub.BackgroundTransparency = 1
HomeSub.Size = UDim2.new(1,-4,0,42)
HomeSub.Font = Enum.Font.GothamMedium
HomeSub.Text = "Premium Script Hub • Updated regularly"
HomeSub.TextColor3 = Color3.fromRGB(130,165,240)
HomeSub.TextSize = 11
HomeSub.TextXAlignment = Enum.TextXAlignment.Left
HomeSub.LayoutOrder = 2
HomeSub.Parent = Scroll

local InfoCard = Instance.new("Frame")
InfoCard.Size = UDim2.new(1,-4,0,125)
InfoCard.BackgroundColor3 = WHITE
InfoCard.BackgroundTransparency = 0.95
InfoCard.BorderSizePixel = 0
InfoCard.LayoutOrder = 3
InfoCard.Parent = Scroll

local InfoCorner = Instance.new("UICorner")
InfoCorner.CornerRadius = UDim.new(0,14)
InfoCorner.Parent = InfoCard

local InfoStroke = Instance.new("UIStroke")
InfoStroke.Color = BLUE
InfoStroke.Transparency = 0.86
InfoStroke.Parent = InfoCard

local InfoText = Instance.new("TextLabel")
InfoText.BackgroundTransparency = 1
InfoText.Position = UDim2.new(0,14,0,12)
InfoText.Size = UDim2.new(1,-28,1,-24)
InfoText.Font = Enum.Font.GothamMedium
InfoText.Text = [[QuocAnhMenu là menu tổng hợp các script Roblox.

• Chọn game ở thanh bên trái.
• Bấm tên script để chạy loader.
• Dùng Search để tìm script nhanh.
• Menu được cập nhật định kỳ.

Chúc bro chơi vui! 👑]]
InfoText.TextColor3 = Color3.fromRGB(205,210,225)
InfoText.TextSize = 11
InfoText.TextWrapped = true
InfoText.TextXAlignment = Enum.TextXAlignment.Left
InfoText.TextYAlignment = Enum.TextYAlignment.Top
InfoText.Parent = InfoCard

local StatusCard = Instance.new("Frame")
StatusCard.Size = UDim2.new(1,-4,0,62)
StatusCard.BackgroundColor3 = WHITE
StatusCard.BackgroundTransparency = 0.95
StatusCard.BorderSizePixel = 0
StatusCard.LayoutOrder = 4
StatusCard.Parent = Scroll

local StatusCorner = Instance.new("UICorner")
StatusCorner.CornerRadius = UDim.new(0,14)
StatusCorner.Parent = StatusCard

local StatusDot = Instance.new("Frame")
StatusDot.Size = UDim2.new(0,10,0,10)
StatusDot.Position = UDim2.new(0,15,0.5,-5)
StatusDot.BackgroundColor3 = GREEN
StatusDot.BorderSizePixel = 0
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
StatusSub.Parent = StatusCard

local CurrentCategory = "Home"

local function ClearCards()
    for _,obj in ipairs(Scroll:GetChildren()) do
        if obj:GetAttribute("ScriptCard") then
            obj:Destroy()
        end
    end
end

local function Execute(code)
    task.spawn(function()
        local fn,err = loadstring(code)

        if not fn then
            warn("[QuocAnhMenu] Loader error:",err)
            return
        end

        local ok,result = pcall(fn)

        if not ok then
            warn("[QuocAnhMenu] Script error:",result)
        end
    end)
end

local function CreateCard(info,order)

    local Card = Instance.new("TextButton")
    Card.Size = UDim2.new(1,-4,0,55)
    Card.BackgroundColor3 = WHITE
    Card.BackgroundTransparency = 0.94
    Card.BorderSizePixel = 0
    Card.AutoButtonColor = false
    Card.Text = ""
    Card.LayoutOrder = order
    Card.ZIndex = 18
    Card:SetAttribute("ScriptCard",true)
    Card.Parent = Scroll

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0,13)
    Corner.Parent = Card

    local Stroke = Instance.new("UIStroke")
    Stroke.Color = Color3.fromRGB(110,145,220)
    Stroke.Transparency = 0.9
    Stroke.Parent = Card

    local IconBox = Instance.new("Frame")
    IconBox.Size = UDim2.new(0,34,0,34)
    IconBox.Position = UDim2.new(0,10,0.5,-17)
    IconBox.BackgroundColor3 = Color3.fromRGB(90,130,255)
    IconBox.BackgroundTransparency = 0.78
    IconBox.BorderSizePixel = 0
    IconBox.ZIndex = 22
    IconBox.Parent = Card

    local IC = Instance.new("UICorner")
    IC.CornerRadius = UDim.new(0,10)
    IC.Parent = IconBox

    local Icon = Instance.new("TextLabel")
    Icon.BackgroundTransparency = 1
    Icon.Size = UDim2.new(1,0,1,0)
    Icon.Font = Enum.Font.GothamBold
    Icon.Text = "✦"
    Icon.TextColor3 = WHITE
    Icon.TextSize = 15
    Icon.Parent = IconBox

    local Name = Instance.new("TextLabel")
    Name.Name = "ScriptName"
    Name.BackgroundTransparency = 1
    Name.Position = UDim2.new(0,55,0,8)
    Name.Size = UDim2.new(1,-105,0,22)
    Name.Font = Enum.Font.GothamBold
    Name.Text = info.Name
    Name.TextColor3 = WHITE
    Name.TextSize = 12
    Name.TextXAlignment = Enum.TextXAlignment.Left
    Name.TextTruncate = Enum.TextTruncate.AtEnd
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
    Sub.Parent = Card

    local Arrow = Instance.new("TextLabel")
    Arrow.BackgroundTransparency = 1
    Arrow.Position = UDim2.new(1,-42,0.5,-12)
    Arrow.Size = UDim2.new(0,28,0,24)
    Arrow.Font = Enum.Font.GothamBold
    Arrow.Text = "›"
    Arrow.TextColor3 = Color3.fromRGB(130,160,230)
    Arrow.TextSize = 22
    Arrow.Parent = Card

    Card.Activated:Connect(function()

        TweenService:Create(Card,TweenFast,{
            BackgroundTransparency = 0.84
        }):Play()

        task.delay(0.12,function()
            if Card.Parent then
                TweenService:Create(Card,TweenFast,{
                    BackgroundTransparency = 0.94
                }):Play()
            end
        end)

        Execute(info.Code)
    end)

    return Card
end

local CategoryButtons = {}

local Categories = {
    {"Home","⌂"},
    {"Steal a Egg","🥚"},
    {"Blox Fruit","🍇"},
    {"Blade Ball","◈"}
}

local function SetCategoryVisual(selected)

    for name,button in pairs(CategoryButtons) do

        local active = name == selected

        TweenService:Create(button,TweenFast,{
            BackgroundColor3 = active
                and Color3.fromRGB(80,125,255)
                or Color3.fromRGB(255,255,255),

            BackgroundTransparency = active
                and 0.72
                or 0.96
        }):Play()

        local label = button:FindFirstChild("Label")
        local icon = button:FindFirstChild("Icon")

        if label then
            label.TextColor3 = active
                and WHITE
                or Color3.fromRGB(155,165,185)
        end

        if icon then
            icon.TextColor3 = active
                and WHITE
                or Color3.fromRGB(145,155,175)
        end
    end
end

local function MakeCategory(info,index)

    local name = info[1]
    local iconText = info[2]

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(1,-16,0,48)
    Button.Position = UDim2.new(0,8,0,39+(index-1)*53)
    Button.BackgroundColor3 = WHITE
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
    Icon.Text = iconText
    Icon.TextColor3 = Color3.fromRGB(145,155,175)
    Icon.TextSize = 14
    Icon.Parent = Button

    local Label = Instance.new("TextLabel")
    Label.Name = "Label"
    Label.BackgroundTransparency = 1
    Label.Position = UDim2.new(0,39,0,0)
    Label.Size = UDim2.new(1,-45,1,0)
    Label.Font = Enum.Font.GothamBold
    Label.Text = name
    Label.TextColor3 = Color3.fromRGB(155,165,185)
    Label.TextSize = 10
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.TextTruncate = Enum.TextTruncate.AtEnd
    Label.Parent = Button

    CategoryButtons[name] = Button

    Button.Activated:Connect(function()

        CurrentCategory = name

        HomeTitle.Visible = name == "Home"
        HomeSub.Visible = name == "Home"
        InfoCard.Visible = name == "Home"
        StatusCard.Visible = name == "Home"

        ClearCards()

        if name ~= "Home" then

            local list = Scripts[name]

            if list then
                for i,infoData in ipairs(list) do
                    CreateCard(infoData,i)
                end
            end
        end

        SearchBox.Text = ""
        Scroll.CanvasPosition = Vector2.new(0,0)

        SetCategoryVisual(name)
    end)

    Button.MouseEnter:Connect(function()

        if CurrentCategory ~= name then
            TweenService:Create(Button,TweenFast,{
                BackgroundTransparency = 0.91
            }):Play()
        end
    end)

    Button.MouseLeave:Connect(function()

        if CurrentCategory ~= name then
            TweenService:Create(Button,TweenFast,{
                BackgroundTransparency = 0.96
            }):Play()
        end
    end)
end

for i,info in ipairs(Categories) do
    MakeCategory(info,i)
end
--// QUOCANHMENU V5 - PART 3/3

SearchBox:GetPropertyChangedSignal("Text"):Connect(function()

    local query = string.lower(SearchBox.Text or "")

    if query == "" then

        if CurrentCategory == "Home" then

            HomeTitle.Visible = true
            HomeSub.Visible = true
            InfoCard.Visible = true
            StatusCard.Visible = true

            ClearCards()

        else

            HomeTitle.Visible = false
            HomeSub.Visible = false
            InfoCard.Visible = false
            StatusCard.Visible = false

            ClearCards()

            local list = Scripts[CurrentCategory]

            if list then
                for i,infoData in ipairs(list) do
                    CreateCard(infoData,i)
                end
            end
        end

        return
    end

    HomeTitle.Visible = false
    HomeSub.Visible = false
    InfoCard.Visible = false
    StatusCard.Visible = false

    ClearCards()

    local order = 0

    for _,list in pairs(Scripts) do

        for _,infoData in ipairs(list) do

            if string.find(
                string.lower(infoData.Name),
                query,
                1,
                true
            ) then

                order += 1
                CreateCard(infoData,order)
            end
        end
    end
end)

local function MakeDraggable(object,handle)

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

        if not dragging then
            return
        end

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

MakeDraggable(Main,Header)

local Open = false

local function OpenMenu()

    if Open then return end

    Open = true
    Main.Visible = true

    Main.Size = UDim2.new(0,510,0,315)
    Main.BackgroundTransparency = 1

    TweenService:Create(Main,TweenOpen,{
        Size = UDim2.new(0,560,0,350),
        BackgroundTransparency = 0.08
    }):Play()
end

local function CloseMenu()

    if not Open then return end

    Open = false

    TweenService:Create(Main,TweenNormal,{
        Size = UDim2.new(0,510,0,315),
        BackgroundTransparency = 1
    }):Play()

    task.delay(0.28,function()

        if not Open then
            Main.Visible = false
        end
    end)
end

Close.Activated:Connect(CloseMenu)

local Crown = Instance.new("TextButton")
Crown.Name = "QuocAnhCrown"
Crown.Size = UDim2.fromOffset(52,52)
Crown.Position = UDim2.new(0,22,0.5,-26)
Crown.AnchorPoint = Vector2.new(0,0)
Crown.BackgroundColor3 = Color3.fromRGB(19,24,39)
Crown.BackgroundTransparency = 0.04
Crown.BorderSizePixel = 0
Crown.AutoButtonColor = false
Crown.Text = ""
Crown.ZIndex = 100
Crown.Parent = Gui

local CrownCorner = Instance.new("UICorner")
CrownCorner.CornerRadius = UDim.new(1,0)
CrownCorner.Parent = Crown

local CrownStroke = Instance.new("UIStroke")
CrownStroke.Color = Color3.fromRGB(95,155,255)
CrownStroke.Thickness = 1.6
CrownStroke.Transparency = 0.12
CrownStroke.Parent = Crown

local CrownGradient = Instance.new("UIGradient")
CrownGradient.Rotation = 45
CrownGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0,Color3.fromRGB(45,65,105)),
    ColorSequenceKeypoint.new(0.5,Color3.fromRGB(27,35,60)),
    ColorSequenceKeypoint.new(1,Color3.fromRGB(72,42,110))
})
CrownGradient.Parent = Crown

local CrownIcon = Instance.new("TextLabel")
CrownIcon.BackgroundTransparency = 1
CrownIcon.Size = UDim2.fromScale(1,1)
CrownIcon.Font = Enum.Font.GothamBold
CrownIcon.Text = "👑"
CrownIcon.TextColor3 = WHITE
CrownIcon.TextSize = 23
CrownIcon.ZIndex = 102
CrownIcon.Parent = Crown

local CrownGlow = Instance.new("ImageLabel")
CrownGlow.AnchorPoint = Vector2.new(0.5,0.5)
CrownGlow.Position = UDim2.fromScale(0.5,0.5)
CrownGlow.Size = UDim2.fromOffset(76,76)
CrownGlow.BackgroundTransparency = 1
CrownGlow.Image = "rbxassetid://6014261993"
CrownGlow.ImageColor3 = Color3.fromRGB(70,130,255)
CrownGlow.ImageTransparency = 0.72
CrownGlow.ZIndex = 99
CrownGlow.Parent = Crown

Crown.Activated:Connect(function()

    if Open then
        CloseMenu()
    else
        OpenMenu()
    end
end)

Crown.MouseEnter:Connect(function()

    TweenService:Create(CrownStroke,TweenFast,{
        Thickness = 2.4,
        Transparency = 0
    }):Play()

    TweenService:Create(CrownGlow,TweenFast,{
        ImageTransparency = 0.5
    }):Play()
end)

Crown.MouseLeave:Connect(function()

    TweenService:Create(CrownStroke,TweenFast,{
        Thickness = 1.6,
        Transparency = 0.12
    }):Play()

    TweenService:Create(CrownGlow,TweenFast,{
        ImageTransparency = 0.72
    }):Play()
end)

MakeDraggable(Crown,Crown)

SearchBox.Focused:Connect(function()

    TweenService:Create(SearchStroke,TweenFast,{
        Transparency = 0.35,
        Thickness = 1.3
    }):Play()
end)

SearchBox.FocusLost:Connect(function()

    TweenService:Create(SearchStroke,TweenFast,{
        Transparency = 0.82,
        Thickness = 1
    }):Play()
end)

CurrentCategory = "Home"

HomeTitle.Visible = true
HomeSub.Visible = true
InfoCard.Visible = true
StatusCard.Visible = true

ClearCards()
SetCategoryVisual("Home")

Main.Visible = false
Open = false

print("================================")
print("      QUOCANHMENU V5")
print("      PREMIUM GLASS UI")
print("      BLOX FRUIT UPDATED")
print("      CROWN BUTTON FIXED")
print("================================")
