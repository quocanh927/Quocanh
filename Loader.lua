--//==================================================
--// QUOCANHMENU PREMIUM KEY SYSTEM
--// PART 1/3
--// GET KEY UI + LOADING
--//==================================================

local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local IMAGE_ID = "rbxassetid://96414575114788"
local PREMIUM_KEY = "QUOCANH-PREMIUM"

local C = {
    Black = Color3.fromRGB(4,5,7),
    Dark = Color3.fromRGB(9,10,13),
    Panel = Color3.fromRGB(14,15,19),
    Card = Color3.fromRGB(20,21,26),
    Hover = Color3.fromRGB(29,30,37),
    White = Color3.fromRGB(245,245,248),
    Gray = Color3.fromRGB(145,148,158),
    Line = Color3.fromRGB(52,54,62),
    Blue = Color3.fromRGB(125,135,255),
    Green = Color3.fromRGB(100,220,145),
    Red = Color3.fromRGB(255,85,95)
}

pcall(function()
    local a = CoreGui:FindFirstChild("QuocAnhKeySystem")
    if a then a:Destroy() end

    local b = CoreGui:FindFirstChild("QuocAnhPremium")
    if b then b:Destroy() end
end)

--//==================================================
--// KEY GUI
--//==================================================

local Gui = Instance.new("ScreenGui")
Gui.Name = "QuocAnhKeySystem"
Gui.IgnoreGuiInset = true
Gui.ResetOnSpawn = false
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.Parent = CoreGui

--//==================================================
--// LOADING
--//==================================================

local Loading = Instance.new("Frame")
Loading.Size = UDim2.fromOffset(300,155)
Loading.Position = UDim2.new(.5,-150,.5,-77)
Loading.BackgroundColor3 = C.Panel
Loading.BorderSizePixel = 0
Loading.Parent = Gui

local LoadingCorner = Instance.new("UICorner")
LoadingCorner.CornerRadius = UDim.new(0,18)
LoadingCorner.Parent = Loading

local LoadingStroke = Instance.new("UIStroke")
LoadingStroke.Color = C.Line
LoadingStroke.Thickness = 1.2
LoadingStroke.Parent = Loading

-- Avatar
local LoadAvatar = Instance.new("ImageLabel")
LoadAvatar.Size = UDim2.fromOffset(48,48)
LoadAvatar.Position = UDim2.fromOffset(20,20)
LoadAvatar.BackgroundColor3 = C.Dark
LoadAvatar.BorderSizePixel = 0
LoadAvatar.Image = IMAGE_ID
LoadAvatar.ScaleType = Enum.ScaleType.Crop
LoadAvatar.Parent = Loading

local LoadAvatarCorner = Instance.new("UICorner")
LoadAvatarCorner.CornerRadius = UDim.new(1,0)
LoadAvatarCorner.Parent = LoadAvatar

local LoadAvatarStroke = Instance.new("UIStroke")
LoadAvatarStroke.Color = C.Blue
LoadAvatarStroke.Thickness = 1.3
LoadAvatarStroke.Parent = LoadAvatar

-- Title
local LoadTitle = Instance.new("TextLabel")
LoadTitle.Size = UDim2.fromOffset(125,22)
LoadTitle.Position = UDim2.fromOffset(82,20)
LoadTitle.BackgroundTransparency = 1
LoadTitle.Text = "QuocAnhMenu"
LoadTitle.TextColor3 = C.White
LoadTitle.Font = Enum.Font.GothamBold
LoadTitle.TextSize = 19
LoadTitle.TextXAlignment = Enum.TextXAlignment.Left
LoadTitle.Parent = Loading

-- Premium nhỏ
local LoadPremium = Instance.new("TextLabel")
LoadPremium.Size = UDim2.fromOffset(55,20)
LoadPremium.Position = UDim2.fromOffset(205,25)
LoadPremium.BackgroundTransparency = 1
LoadPremium.Text = "Premium"
LoadPremium.Font = Enum.Font.GothamBold
LoadPremium.TextSize = 8
LoadPremium.TextColor3 = Color3.fromRGB(150,150,255)
LoadPremium.TextXAlignment = Enum.TextXAlignment.Left
LoadPremium.Parent = Loading

local LoadSubtitle = Instance.new("TextLabel")
LoadSubtitle.Size = UDim2.fromOffset(190,18)
LoadSubtitle.Position = UDim2.fromOffset(82,43)
LoadSubtitle.BackgroundTransparency = 1
LoadSubtitle.Text = "PREMIUM ACCESS"
LoadSubtitle.TextColor3 = C.Gray
LoadSubtitle.Font = Enum.Font.GothamMedium
LoadSubtitle.TextSize = 9
LoadSubtitle.TextXAlignment = Enum.TextXAlignment.Left
LoadSubtitle.Parent = Loading

-- Spinner
local Spinner = Instance.new("TextLabel")
Spinner.Size = UDim2.fromOffset(30,30)
Spinner.Position = UDim2.fromOffset(20,82)
Spinner.BackgroundTransparency = 1
Spinner.Text = "◌"
Spinner.TextColor3 = C.Blue
Spinner.Font = Enum.Font.GothamBold
Spinner.TextSize = 25
Spinner.Parent = Loading

task.spawn(function()
    while Spinner.Parent do
        TweenService:Create(
            Spinner,
            TweenInfo.new(.7,Enum.EasingStyle.Linear),
            {Rotation = Spinner.Rotation + 180}
        ):Play()

        task.wait(.7)
    end
end)

local Percent = Instance.new("TextLabel")
Percent.Size = UDim2.fromOffset(45,20)
Percent.Position = UDim2.fromOffset(55,87)
Percent.BackgroundTransparency = 1
Percent.Text = "0%"
Percent.TextColor3 = C.White
Percent.Font = Enum.Font.GothamBold
Percent.TextSize = 10
Percent.TextXAlignment = Enum.TextXAlignment.Left
Percent.Parent = Loading

local LoadingText = Instance.new("TextLabel")
LoadingText.Size = UDim2.fromOffset(190,20)
LoadingText.Position = UDim2.fromOffset(82,86)
LoadingText.BackgroundTransparency = 1
LoadingText.Text = "Loading Premium..."
LoadingText.TextColor3 = C.Gray
LoadingText.Font = Enum.Font.GothamMedium
LoadingText.TextSize = 9
LoadingText.TextXAlignment = Enum.TextXAlignment.Left
LoadingText.Parent = Loading

-- Progress background
local ProgressBack = Instance.new("Frame")
ProgressBack.Size = UDim2.fromOffset(260,7)
ProgressBack.Position = UDim2.fromOffset(20,125)
ProgressBack.BackgroundColor3 = Color3.fromRGB(25,27,33)
ProgressBack.BorderSizePixel = 0
ProgressBack.Parent = Loading

local ProgressBackCorner = Instance.new("UICorner")
ProgressBackCorner.CornerRadius = UDim.new(1,0)
ProgressBackCorner.Parent = ProgressBack

-- Progress
local Progress = Instance.new("Frame")
Progress.Size = UDim2.new(0,0,1,0)
Progress.BackgroundColor3 = C.Blue
Progress.BorderSizePixel = 0
Progress.Parent = ProgressBack

local ProgressCorner = Instance.new("UICorner")
ProgressCorner.CornerRadius = UDim.new(1,0)
ProgressCorner.Parent = Progress

-- Loading 8 sec
task.spawn(function()
    for i = 0,100 do
        Percent.Text = i .. "%"

        TweenService:Create(
            Progress,
            TweenInfo.new(.08,Enum.EasingStyle.Linear),
            {Size = UDim2.new(i/100,0,1,0)}
        ):Play()

        task.wait(.08)
    end

    LoadingText.Text = "Ready."
    task.wait(.35)

    TweenService:Create(
        Loading,
        TweenInfo.new(.35,Enum.EasingStyle.Quint,Enum.EasingDirection.In),
        {
            Size = UDim2.fromOffset(280,145),
            Position = UDim2.new(.5,-140,.5,-72),
            BackgroundTransparency = 1
        }
    ):Play()

    for _,v in ipairs(Loading:GetDescendants()) do
        if v:IsA("TextLabel")
        or v:IsA("ImageLabel")
        or v:IsA("Frame") then

            TweenService:Create(
                v,
                TweenInfo.new(.25),
                {BackgroundTransparency = 1}
            ):Play()

            if v:IsA("TextLabel") then
                TweenService:Create(
                    v,
                    TweenInfo.new(.25),
                    {TextTransparency = 1}
                ):Play()
            elseif v:IsA("ImageLabel") then
                TweenService:Create(
                    v,
                    TweenInfo.new(.25),
                    {ImageTransparency = 1}
                ):Play()
            end
        end
    end

    task.wait(.4)
    Loading:Destroy()
end)

--//==================================================
--// MAIN KEY WINDOW
--//==================================================

local Main = Instance.new("Frame")
Main.Size = UDim2.fromOffset(365,225)
Main.Position = UDim2.new(.5,-182,.5,-112)
Main.BackgroundColor3 = C.Panel
Main.BorderSizePixel = 0
Main.Visible = false
Main.Parent = Gui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0,20)
MainCorner.Parent = Main

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = C.Line
MainStroke.Thickness = 1.3
MainStroke.Parent = Main

-- Avatar
local Avatar = Instance.new("ImageLabel")
Avatar.Size = UDim2.fromOffset(44,44)
Avatar.Position = UDim2.fromOffset(20,18)
Avatar.BackgroundColor3 = C.Dark
Avatar.BorderSizePixel = 0
Avatar.Image = IMAGE_ID
Avatar.ScaleType = Enum.ScaleType.Crop
Avatar.Parent = Main

local AvatarCorner = Instance.new("UICorner")
AvatarCorner.CornerRadius = UDim.new(1,0)
AvatarCorner.Parent = Avatar

local AvatarStroke = Instance.new("UIStroke")
AvatarStroke.Color = C.Blue
AvatarStroke.Thickness = 1.4
AvatarStroke.Parent = Avatar

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.fromOffset(125,22)
Title.Position = UDim2.fromOffset(76,20)
Title.BackgroundTransparency = 1
Title.Text = "QuocAnhMenu"
Title.TextColor3 = C.White
Title.Font = Enum.Font.GothamBold
Title.TextSize = 19
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Main

-- Premium
local Premium = Instance.new("TextLabel")
Premium.Size = UDim2.fromOffset(55,20)
Premium.Position = UDim2.fromOffset(205,25)
Premium.BackgroundTransparency = 1
Premium.Text = "Premium"
Premium.Font = Enum.Font.GothamBold
Premium.TextSize = 8
Premium.TextColor3 = Color3.fromRGB(150,150,255)
Premium.TextXAlignment = Enum.TextXAlignment.Left
Premium.Parent = Main

local Subtitle = Instance.new("TextLabel")
Subtitle.Size = UDim2.fromOffset(250,18)
Subtitle.Position = UDim2.fromOffset(76,43)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "KEY SYSTEM • ACCESS REQUIRED"
Subtitle.TextColor3 = C.Gray
Subtitle.Font = Enum.Font.GothamMedium
Subtitle.TextSize = 9
Subtitle.TextXAlignment = Enum.TextXAlignment.Left
Subtitle.Parent = Main

local TopLine = Instance.new("Frame")
TopLine.Size = UDim2.new(1,-40,0,1)
TopLine.Position = UDim2.fromOffset(20,76)
TopLine.BackgroundColor3 = C.Line
TopLine.BorderSizePixel = 0
TopLine.Parent = Main

-- Key Box
local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(1,-40,0,42)
KeyBox.Position = UDim2.fromOffset(20,91)
KeyBox.BackgroundColor3 = C.Card
KeyBox.BorderSizePixel = 0
KeyBox.ClearTextOnFocus = false
KeyBox.PlaceholderText = "Enter your key..."
KeyBox.PlaceholderColor3 = C.Gray
KeyBox.Text = ""
KeyBox.TextColor3 = C.White
KeyBox.Font = Enum.Font.GothamMedium
KeyBox.TextSize = 11
KeyBox.TextXAlignment = Enum.TextXAlignment.Left
KeyBox.Parent = Main

local KeyPadding = Instance.new("UIPadding")
KeyPadding.PaddingLeft = UDim.new(0,13)
KeyPadding.Parent = KeyBox

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0,11)
KeyCorner.Parent = KeyBox

local KeyStroke = Instance.new("UIStroke")
KeyStroke.Color = C.Line
KeyStroke.Thickness = 1
KeyStroke.Parent = KeyBox
--//==================================================
--// QUOCANHMENU PREMIUM
--// PART 2/3
--// KEY BUTTONS + PREMIUM MENU DATA
--//==================================================

local Check = Instance.new("TextButton")
Check.Size = UDim2.fromOffset(155,38)
Check.Position = UDim2.fromOffset(20,145)
Check.BackgroundColor3 = C.Blue
Check.BorderSizePixel = 0
Check.Text = "✓  CHECK KEY"
Check.TextColor3 = Color3.new(1,1,1)
Check.Font = Enum.Font.GothamBold
Check.TextSize = 10
Check.AutoButtonColor = false
Check.Parent = Main

local CheckCorner = Instance.new("UICorner")
CheckCorner.CornerRadius = UDim.new(0,10)
CheckCorner.Parent = Check

local GetKey = Instance.new("TextButton")
GetKey.Size = UDim2.fromOffset(155,38)
GetKey.Position = UDim2.fromOffset(190,145)
GetKey.BackgroundColor3 = C.Card
GetKey.BorderSizePixel = 0
GetKey.Text = "🔑  GET KEY"
GetKey.TextColor3 = C.White
GetKey.Font = Enum.Font.GothamBold
GetKey.TextSize = 10
GetKey.AutoButtonColor = false
GetKey.Parent = Main

local GetCorner = Instance.new("UICorner")
GetCorner.CornerRadius = UDim.new(0,10)
GetCorner.Parent = GetKey

local GetStroke = Instance.new("UIStroke")
GetStroke.Color = C.Line
GetStroke.Thickness = 1
GetStroke.Parent = GetKey

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1,-40,0,25)
Status.Position = UDim2.fromOffset(20,190)
Status.BackgroundTransparency = 1
Status.Text = "Premium key required"
Status.TextColor3 = C.Gray
Status.Font = Enum.Font.GothamMedium
Status.TextSize = 9
Status.TextXAlignment = Enum.TextXAlignment.Left
Status.Parent = Main

--// SHOW MAIN AFTER LOADING
task.delay(8.45,function()
    if Loading and Loading.Parent then
        task.wait(.2)
    end

    if Main.Parent then
        Main.Visible = true
    end
end)

--// DRAG KEY WINDOW
local Dragging = false
local DragStart
local StartPos

Main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        Dragging = true
        DragStart = input.Position
        StartPos = Main.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                Dragging = false
            end
        end)
    end
end)

UIS.InputChanged:Connect(function(input)
    if Dragging and (
        input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch
    ) then

        local Delta = input.Position - DragStart

        Main.Position = UDim2.new(
            StartPos.X.Scale,
            StartPos.X.Offset + Delta.X,
            StartPos.Y.Scale,
            StartPos.Y.Offset + Delta.Y
        )
    end
end)

local function ButtonHover(Button,Normal,HoverColor)
    Button.MouseEnter:Connect(function()
        TweenService:Create(
            Button,
            TweenInfo.new(.15),
            {BackgroundColor3 = HoverColor}
        ):Play()
    end)

    Button.MouseLeave:Connect(function()
        TweenService:Create(
            Button,
            TweenInfo.new(.15),
            {BackgroundColor3 = Normal}
        ):Play()
    end)
end

ButtonHover(
    Check,
    C.Blue,
    Color3.fromRGB(145,150,255)
)

ButtonHover(
    GetKey,
    C.Card,
    C.Hover
)

--//==================================================
--// PREMIUM SCRIPT DATABASE
--//==================================================

local Scripts = {

    ["Steal a Egg"] = {

        {
            Name="Miranda",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/stealeggies"))()'
        },

        {
            Name="Lemon Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/napun87/stealanegg/refs/heads/main/lemonkaitun.lua"))()'
        },

        {
            Name="Miranda Hub v2",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/kaitunmirage.lua"))()'
        },

        {
            Name="Limbo Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://limbohub.my.id/loader.lua"))()'
        },

        {
            Name="Fake Admin",
            Key=true,
            Code='loadstring(game:HttpGet("https://pastefy.app/t06eyyrw/raw"))()'
        },

        {
            Name="RealKid Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"))()'
        },

        {
            Name="Sever Hop",
            Key=false,
            Code='loadstring(game:HttpGet("https://pastefy.app/YoZocJ8O/raw"))()'
        },

        {
            Name="Spawner Pet",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/chocolascript-glitch/Chocola-Pet-Spawner-steal-an-egg/refs/heads/main/script.lua"))()'
        },

        {
            Name="Chilli Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()'
        },

        {
            Name="Foxname Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Fn-stealanegg.lua"))()'
        },

        {
            Name="Sena Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://senahub.xyz/raw/loader"))()'
        },

        {
            Name="Kira Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/LSSOPS/OpenSource/refs/heads/main/KiraHub_Steal_An_Egg.lua"))()'
        },

        {
            Name="God Mode",
            Key=false,
            Code='loadstring(game:HttpGet("https://flowauth.net/v1/loaders/02a9ed204f6b2fbff70b6d171251a3f7.lua"))()'
        }
    },

    ["Blox Fruit"] = {

        {
            Name="Red Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Redz/refs/heads/main/Redz/script.luau"))()'
        },

        {
            Name="Night Hub",
            Key=false,
            Code='repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer; getgenv().team="Marines"; loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-NightMystic/Bloxfruits/refs/heads/main/Script.lua"))()'
        },

        {
            Name="Gravity Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()'
        },

        {
            Name="Xynapse Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://pastebin.com/raw/uECLqG3j",true))()'
        },

        {
            Name="Zee Hub",
            Key=true,
            Code='loadstring(game:HttpGet("https://link.trwxz.com/LS-Zee-Hub-VIP"))()'
        },

        {
            Name="Quantum Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://pastebin.com/raw/r5h2r57F"))()'
        },

        {
            Name="Zinner Hub",
            Key=false,
            Code='getgenv().Team="Pirates" loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangNguyenk8/Scripts/refs/heads/main/Loader.lua"))()'
        },

        {
            Name="Andepzai Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/main/AnDepZaiHubBeta.lua"))()'
        },

        {
            Name="OMG Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()'
        },

        {
            Name="Annie Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/1st-Mars/Annie/main/1st.lua"))()'
        },

        {
            Name="Nero Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/NeroHubClub/AutoMythicFruitFinder/refs/heads/main/NeroHubFruitFinder"))()'
        },

        {
            Name="Teddy Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub.lua"))()'
        },

        {
            Name="Zenith Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/LookP/Roblox/refs/heads/main/ZenithHUB%20ZC%20Rivals"))()'
        },

        {
            Name="Speed Hub X",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()'
        },

        {
            Name="HoHo Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()'
        },

        {
            Name="Banana Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Banana/refs/heads/main/Banana/script.luau"))()'
        }
    },

    ["Blade Ball"] = {

        {
            Name="KAZZ Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://api.jnkie.com/api/v1/loaders/public/353accd2d41a5a30c879705a8ff47926fab2c8b7d7baf34d31c0522b8c6c0a41/download"))()'
        },

        {
            Name="Dryx Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/Doortthemort/676/refs/heads/main/Main.lua"))()'
        },

        {
            Name="Arceney Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://arceney.win/cdn/loader.luau?v=scrb"))()'
        },

        {
            Name="Wings Hub",
            Key=true,
            Code='loadstring(game:HttpGet("https://wings.ac/loader"))()'
        },

        {
            Name="Argon Hub",
            Key=false,
            Code='loadstring(game:HttpGet("https://raw.githubusercontent.com/luwriy/jwhub/refs/heads/main/loader"))()'
        }
    }
}

--//==================================================
--// PREMIUM MENU FUNCTION
--//==================================================

local function StartPremium()

    Main.Visible = false

    local Old = CoreGui:FindFirstChild("QuocAnhPremium")
    if Old then
        Old:Destroy()
    end

    local Gui2 = Instance.new("ScreenGui")
    Gui2.Name = "QuocAnhPremium"
    Gui2.IgnoreGuiInset = true
    Gui2.ResetOnSpawn = false
    Gui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Gui2.Parent = CoreGui

    local Menu = Instance.new("Frame")
    Menu.Size = UDim2.fromOffset(590,335)
    Menu.Position = UDim2.new(.5,-295,.5,-167)
    Menu.BackgroundColor3 = C.Black
    Menu.BorderSizePixel = 0
    Menu.Parent = Gui2

    local MenuCorner = Instance.new("UICorner")
    MenuCorner.CornerRadius = UDim.new(0,18)
    MenuCorner.Parent = Menu

    local MenuStroke = Instance.new("UIStroke")
    MenuStroke.Color = C.Line
    MenuStroke.Thickness = 1.4
    MenuStroke.Parent = Menu

    -- Soft glow
    local Glow = Instance.new("UIStroke")
    Glow.Color = C.Blue
    Glow.Thickness = 3
    Glow.Transparency = .78
    Glow.Parent = Menu

    task.spawn(function()
        while Menu.Parent do
            TweenService:Create(
                Glow,
                TweenInfo.new(1.7,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),
                {Transparency=.9}
            ):Play()

            task.wait(1.7)

            TweenService:Create(
                Glow,
                TweenInfo.new(1.7,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),
                {Transparency=.72}
            ):Play()

            task.wait(1.7)
        end
    end)
--//==================================================
--// QUOCANHMENU PREMIUM
--// PART 3/3
--// PREMIUM INTERFACE + CHECK KEY
--//==================================================

    -- HEADER
    local Header = Instance.new("Frame")
    Header.Size = UDim2.new(1,0,0,55)
    Header.BackgroundColor3 = C.Dark
    Header.BorderSizePixel = 0
    Header.Parent = Menu

    local HeaderCorner = Instance.new("UICorner")
    HeaderCorner.CornerRadius = UDim.new(0,18)
    HeaderCorner.Parent = Header

    -- Avatar
    local MenuAvatar = Instance.new("ImageLabel")
    MenuAvatar.Size = UDim2.fromOffset(38,38)
    MenuAvatar.Position = UDim2.fromOffset(11,8)
    MenuAvatar.BackgroundColor3 = C.Panel
    MenuAvatar.BorderSizePixel = 0
    MenuAvatar.Image = IMAGE_ID
    MenuAvatar.ScaleType = Enum.ScaleType.Crop
    MenuAvatar.Parent = Header

    local MenuAvatarCorner = Instance.new("UICorner")
    MenuAvatarCorner.CornerRadius = UDim.new(1,0)
    MenuAvatarCorner.Parent = MenuAvatar

    local MenuAvatarStroke = Instance.new("UIStroke")
    MenuAvatarStroke.Color = C.Blue
    MenuAvatarStroke.Thickness = 1.2
    MenuAvatarStroke.Parent = MenuAvatar

    local MenuTitle = Instance.new("TextLabel")
    MenuTitle.Size = UDim2.fromOffset(120,20)
    MenuTitle.Position = UDim2.fromOffset(58,9)
    MenuTitle.BackgroundTransparency = 1
    MenuTitle.Text = "QuocAnhMenu"
    MenuTitle.TextColor3 = C.White
    MenuTitle.Font = Enum.Font.GothamBold
    MenuTitle.TextSize = 16
    MenuTitle.TextXAlignment = Enum.TextXAlignment.Left
    MenuTitle.Parent = Header

    local MenuPremium = Instance.new("TextLabel")
    MenuPremium.Size = UDim2.fromOffset(55,16)
    MenuPremium.Position = UDim2.fromOffset(165,13)
    MenuPremium.BackgroundTransparency = 1
    MenuPremium.Text = "Premium"
    MenuPremium.TextColor3 = Color3.fromRGB(150,155,255)
    MenuPremium.Font = Enum.Font.GothamBold
    MenuPremium.TextSize = 7
    MenuPremium.TextXAlignment = Enum.TextXAlignment.Left
    MenuPremium.Parent = Header

    local Owner = Instance.new("TextLabel")
    Owner.Size = UDim2.fromOffset(220,15)
    Owner.Position = UDim2.fromOffset(58,30)
    Owner.BackgroundTransparency = 1
    Owner.Text = "AdminVNGx • 👑 OWNER 👑"
    Owner.TextColor3 = C.Gray
    Owner.Font = Enum.Font.GothamMedium
    Owner.TextSize = 8
    Owner.TextXAlignment = Enum.TextXAlignment.Left
    Owner.Parent = Header

    -- Close
    local Close = Instance.new("TextButton")
    Close.Size = UDim2.fromOffset(34,26)
    Close.Position = UDim2.new(1,-45,0,14)
    Close.BackgroundColor3 = C.Card
    Close.BorderSizePixel = 0
    Close.Text = "×"
    Close.TextColor3 = C.Gray
    Close.Font = Enum.Font.GothamBold
    Close.TextSize = 17
    Close.AutoButtonColor = false
    Close.Parent = Header

    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0,8)
    CloseCorner.Parent = Close

    -- Sidebar
    local Side = Instance.new("Frame")
    Side.Size = UDim2.fromOffset(140,267)
    Side.Position = UDim2.fromOffset(9,63)
    Side.BackgroundColor3 = C.Dark
    Side.BorderSizePixel = 0
    Side.Parent = Menu

    local SideCorner = Instance.new("UICorner")
    SideCorner.CornerRadius = UDim.new(0,13)
    SideCorner.Parent = Side

    local SideStroke = Instance.new("UIStroke")
    SideStroke.Color = C.Line
    SideStroke.Transparency = .45
    SideStroke.Parent = Side

    local SideLayout = Instance.new("UIListLayout")
    SideLayout.Padding = UDim.new(0,6)
    SideLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    SideLayout.VerticalAlignment = Enum.VerticalAlignment.Top
    SideLayout.Parent = Side

    local SidePadding = Instance.new("UIPadding")
    SidePadding.PaddingTop = UDim.new(0,10)
    SidePadding.Parent = Side

    -- Content
    local Content = Instance.new("Frame")
    Content.Size = UDim2.fromOffset(430,267)
    Content.Position = UDim2.fromOffset(153,63)
    Content.BackgroundColor3 = C.Dark
    Content.BorderSizePixel = 0
    Content.Parent = Menu

    local ContentCorner = Instance.new("UICorner")
    ContentCorner.CornerRadius = UDim.new(0,13)
    ContentCorner.Parent = Content

    local ContentStroke = Instance.new("UIStroke")
    ContentStroke.Color = C.Line
    ContentStroke.Transparency = .45
    ContentStroke.Parent = Content

    -- Search
    local Search = Instance.new("TextBox")
    Search.Size = UDim2.fromOffset(225,30)
    Search.Position = UDim2.fromOffset(164,70)
    Search.BackgroundColor3 = C.Card
    Search.BorderSizePixel = 0
    Search.ClearTextOnFocus = false
    Search.PlaceholderText = "⌕  Search scripts..."
    Search.PlaceholderColor3 = C.Gray
    Search.Text = ""
    Search.TextColor3 = C.White
    Search.Font = Enum.Font.GothamMedium
    Search.TextSize = 9
    Search.Parent = Menu

    local SearchCorner = Instance.new("UICorner")
    SearchCorner.CornerRadius = UDim.new(0,9)
    SearchCorner.Parent = Search

    local SearchPadding = Instance.new("UIPadding")
    SearchPadding.PaddingLeft = UDim.new(0,10)
    SearchPadding.Parent = Search

    -- Scroll
    local Scroll = Instance.new("ScrollingFrame")
    Scroll.Size = UDim2.new(1,-16,1,-53)
    Scroll.Position = UDim2.fromOffset(8,45)
    Scroll.BackgroundTransparency = 1
    Scroll.BorderSizePixel = 0
    Scroll.ScrollBarThickness = 2
    Scroll.ScrollBarImageColor3 = C.Blue
    Scroll.CanvasSize = UDim2.new()
    Scroll.Parent = Content

    local Grid = Instance.new("UIGridLayout")
    Grid.CellSize = UDim2.fromOffset(200,57)
    Grid.CellPadding = UDim2.fromOffset(7,7)
    Grid.Parent = Scroll

    Grid:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        Scroll.CanvasSize = UDim2.fromOffset(
            0,
            Grid.AbsoluteContentSize.Y + 8
        )
    end)

    local Cards = {}

    local function Clear()
        for _,v in ipairs(Cards) do
            if v then
                v:Destroy()
            end
        end

        table.clear(Cards)
    end

    local function RunCode(code)
        local fn,err = loadstring(code)

        if not fn then
            warn("QuocAnhMenu:",err)
            return
        end

        local ok,result = pcall(fn)

        if not ok then
            warn("QuocAnhMenu:",result)
        end
    end

    local function AddCard(data)
        local Card = Instance.new("Frame")
        Card.Size = UDim2.fromOffset(200,57)
        Card.BackgroundColor3 = C.Card
        Card.BorderSizePixel = 0
        Card.Parent = Scroll

        local Corner = Instance.new("UICorner")
        Corner.CornerRadius = UDim.new(0,10)
        Corner.Parent = Card

        local Stroke = Instance.new("UIStroke")
        Stroke.Color = C.Line
        Stroke.Thickness = 1
        Stroke.Parent = Card

        local Name = Instance.new("TextLabel")
        Name.Size = UDim2.fromOffset(125,20)
        Name.Position = UDim2.fromOffset(10,8)
        Name.BackgroundTransparency = 1
        Name.Text = data.Name
        Name.TextColor3 = C.White
        Name.Font = Enum.Font.GothamBold
        Name.TextSize = 9
        Name.TextXAlignment = Enum.TextXAlignment.Left
        Name.TextTruncate = Enum.TextTruncate.AtEnd
        Name.Parent = Card

        if data.Key then
            local Key = Instance.new("TextLabel")
            Key.Size = UDim2.fromOffset(30,13)
            Key.Position = UDim2.fromOffset(10,32)
            Key.BackgroundTransparency = 1
            Key.Text = "KEY"
            Key.TextColor3 = Color3.fromRGB(150,155,255)
            Key.Font = Enum.Font.GothamBold
            Key.TextSize = 6
            Key.TextXAlignment = Enum.TextXAlignment.Left
            Key.Parent = Card
        end

        local Run = Instance.new("TextButton")
        Run.Size = UDim2.fromOffset(50,28)
        Run.Position = UDim2.new(1,-59,.5,-14)
        Run.BackgroundColor3 = Color3.fromRGB(31,33,42)
        Run.BorderSizePixel = 0
        Run.Text = "RUN"
        Run.TextColor3 = C.White
        Run.Font = Enum.Font.GothamBold
        Run.TextSize = 8
        Run.AutoButtonColor = false
        Run.Parent = Card

        local RunCorner = Instance.new("UICorner")
        RunCorner.CornerRadius = UDim.new(0,8)
        RunCorner.Parent = Run

        Run.MouseEnter:Connect(function()
            TweenService:Create(
                Run,
                TweenInfo.new(.12),
                {BackgroundColor3=C.Blue}
            ):Play()

            TweenService:Create(
                Stroke,
                TweenInfo.new(.12),
                {Color=C.Blue}
            ):Play()
        end)

        Run.MouseLeave:Connect(function()
            TweenService:Create(
                Run,
                TweenInfo.new(.12),
                {BackgroundColor3=Color3.fromRGB(31,33,42)}
            ):Play()

            TweenService:Create(
                Stroke,
                TweenInfo.new(.12),
                {Color=C.Line}
            ):Play()
        end)

        Run.MouseButton1Click:Connect(function()
            RunCode(data.Code)
        end)

        table.insert(Cards,Card)
    end

    local function ShowCategory(category)
        Clear()

        for _,data in ipairs(Scripts[category] or {}) do
            AddCard(data)
        end
    end

    -- Home
    local function ShowHome()
        Clear()

        local Home = Instance.new("TextLabel")
        Home.Size = UDim2.new(1,-25,1,-15)
        Home.Position = UDim2.fromOffset(12,8)
        Home.BackgroundTransparency = 1
        Home.Text =
            "Xin chào tôi là 👑 OWNER 👑\n\n" ..
            "QuocAnhMenu Premium hiện đang được phát triển.\n\n" ..
            "Đây là bản tổng hợp nhiều script.\n" ..
            "Script nào yêu cầu key sẽ có chữ KEY nhỏ phía sau.\n\n" ..
            "★ PREMIUM ACCESS"
        Home.TextColor3 = C.White
        Home.Font = Enum.Font.GothamMedium
        Home.TextSize = 10
        Home.TextWrapped = true
        Home.TextXAlignment = Enum.TextXAlignment.Left
        Home.TextYAlignment = Enum.TextYAlignment.Top
        Home.Parent = Scroll

        table.insert(Cards,Home)
    end

    local SideButtons = {}

    local function SideButton(text,category)
        local Button = Instance.new("TextButton")
        Button.Size = UDim2.fromOffset(120,37)
        Button.BackgroundColor3 = C.Card
        Button.BorderSizePixel = 0
        Button.Text = text
        Button.TextColor3 = C.Gray
        Button.Font = Enum.Font.GothamBold
        Button.TextSize = 8
        Button.AutoButtonColor = false
        Button.Parent = Side

        local Corner = Instance.new("UICorner")
        Corner.CornerRadius = UDim.new(0,9)
        Corner.Parent = Button

        SideButtons[category] = Button

        Button.MouseButton1Click:Connect(function()

            for _,v in pairs(SideButtons) do
                v.BackgroundColor3 = C.Card
                v.TextColor3 = C.Gray
            end

            Button.BackgroundColor3 = Color3.fromRGB(34,36,48)
            Button.TextColor3 = C.White

            if category == "Home" then
                ShowHome()
            else
                ShowCategory(category)
            end
        end)

        Button.MouseEnter:Connect(function()
            if Button.BackgroundColor3 == C.Card then
                TweenService:Create(
                    Button,
                    TweenInfo.new(.12),
                    {BackgroundColor3=C.Hover}
                ):Play()
            end
        end)

        return Button
    end

    SideButton("⌂  HOME","Home")
    SideButton("🥚  STEAL A EGG","Steal a Egg")
    SideButton("🍎  BLOX FRUIT","Blox Fruit")
    SideButton("⚔  BLADE BALL","Blade Ball")

    -- Default
    SideButtons["Home"].BackgroundColor3 = Color3.fromRGB(34,36,48)
    SideButtons["Home"].TextColor3 = C.White
    ShowHome()

    -- Search
    Search:GetPropertyChangedSignal("Text"):Connect(function()

        local q = Search.Text:lower()

        for _,Card in ipairs(Cards) do

            if Card:IsA("Frame") then

                local label = Card:FindFirstChildWhichIsA("TextLabel")

                if label then
                    Card.Visible =
                        q == ""
                        or label.Text:lower():find(q,1,true) ~= nil
                end
            end
        end
    end)

    -- Close
    Close.MouseButton1Click:Connect(function()
        Gui2:Destroy()
    end)

    -- Drag
    local MenuDragging = false
    local MenuDragStart
    local MenuStartPos

    Header.InputBegan:Connect(function(input)

        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

            MenuDragging = true
            MenuDragStart = input.Position
            MenuStartPos = Menu.Position

            input.Changed:Connect(function()

                if input.UserInputState == Enum.UserInputState.End then
                    MenuDragging = false
                end

            end)
        end
    end)

    UIS.InputChanged:Connect(function(input)

        if MenuDragging and (
            input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch
        ) then

            local Delta = input.Position - MenuDragStart

            Menu.Position = UDim2.new(
                MenuStartPos.X.Scale,
                MenuStartPos.X.Offset + Delta.X,
                MenuStartPos.Y.Scale,
                MenuStartPos.Y.Offset + Delta.Y
            )
        end
    end)

    -- Floating image button nhỏ
    local Toggle = Instance.new("ImageButton")
    Toggle.Size = UDim2.fromOffset(40,40)
    Toggle.Position = UDim2.new(0,12,.5,-20)
    Toggle.BackgroundColor3 = C.Black
    Toggle.BackgroundTransparency = .05
    Toggle.BorderSizePixel = 0
    Toggle.Image = IMAGE_ID
    Toggle.ScaleType = Enum.ScaleType.Crop
    Toggle.ClipsDescendants = true
    Toggle.ZIndex = 100
    Toggle.Parent = Gui2

    local ToggleCorner = Instance.new("UICorner")
    ToggleCorner.CornerRadius = UDim.new(1,0)
    ToggleCorner.Parent = Toggle

    local ToggleStroke = Instance.new("UIStroke")
    ToggleStroke.Color = C.Blue
    ToggleStroke.Thickness = 1.2
    ToggleStroke.Parent = Toggle

    Toggle.MouseButton1Click:Connect(function()
        Menu.Visible = not Menu.Visible
    end)

    -- Drag toggle
    local TD = false
    local TS
    local TP

    Toggle.InputBegan:Connect(function(input)

        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

            TD = true
            TS = input.Position
            TP = Toggle.Position

            input.Changed:Connect(function()

                if input.UserInputState == Enum.UserInputState.End then
                    TD = false
                end

            end)
        end
    end)

    UIS.InputChanged:Connect(function(input)

        if TD and (
            input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch
        ) then

            local Delta = input.Position - TS

            Toggle.Position = UDim2.new(
                TP.X.Scale,
                TP.X.Offset + Delta.X,
                TP.Y.Scale,
                TP.Y.Offset + Delta.Y
            )
        end
    end)

    -- Opening animation
    Menu.Size = UDim2.fromOffset(565,320)
    Menu.Position = UDim2.new(.5,-282,.5,-160)

    TweenService:Create(
        Menu,
        TweenInfo.new(.45,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),
        {
            Size=UDim2.fromOffset(590,335),
            Position=UDim2.new(.5,-295,.5,-167)
        }
    ):Play()
end

--//==================================================
--// CHECK KEY
--//==================================================

Check.MouseButton1Click:Connect(function()

    local Input = KeyBox.Text

    if Input == PREMIUM_KEY then

        Status.Text = "✓ Premium access granted"
        Status.TextColor3 = C.Green
        Check.Text = "✓  VERIFIED"

        task.wait(.5)

        Gui:Destroy()

        StartPremium()

    else

        Status.Text = "✕ Invalid Premium Key"
        Status.TextColor3 = C.Red

        TweenService:Create(
            MainStroke,
            TweenInfo.new(.12),
            {Color=C.Red}
        ):Play()

        task.wait(.25)

        TweenService:Create(
            MainStroke,
            TweenInfo.new(.2),
            {Color=C.Line}
        ):Play()
    end
end)

--//==================================================
--// GET KEY
--//==================================================

GetKey.MouseButton1Click:Connect(function()

    Status.Text = "Key copied: QUOCANH-PREMIUM"
    Status.TextColor3 = C.Blue

    if setclipboard then
        pcall(function()
            setclipboard(PREMIUM_KEY)
        end)
    end
end)
