--// QuocAnhMenu
--// Horizontal Glass UI
--// Animated Open / Close
--// Large Home Page

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

--==================================================
-- SCREEN GUI
--==================================================

local gui = Instance.new("ScreenGui")
gui.Name = "QuocAnhMenu"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.DisplayOrder = 999999
gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
gui.Parent = player:WaitForChild("PlayerGui")

--==================================================
-- CROWN BUTTON
--==================================================

local Crown = Instance.new("TextButton")

Crown.Name = "OpenButton"
Crown.Size = UDim2.new(0,48,0,48)
Crown.Position = UDim2.new(0,18,0.5,-24)

Crown.BackgroundColor3 = Color3.fromRGB(255,255,255)
Crown.BackgroundTransparency = 0.08
Crown.BorderSizePixel = 0

Crown.Text = "👑"
Crown.TextSize = 25
Crown.Font = Enum.Font.GothamBold
Crown.TextColor3 = Color3.fromRGB(25,25,25)

Crown.Active = true
Crown.AutoButtonColor = true
Crown.ZIndex = 999999
Crown.Parent = gui

local CrownCorner = Instance.new("UICorner")
CrownCorner.CornerRadius = UDim.new(1,0)
CrownCorner.Parent = Crown

local CrownStroke = Instance.new("UIStroke")
CrownStroke.Color = Color3.fromRGB(255,255,255)
CrownStroke.Thickness = 2
CrownStroke.Parent = Crown

--==================================================
-- MAIN MENU
--==================================================

local OPEN_SIZE = UDim2.new(0,540,0,300)
local CLOSED_SIZE = UDim2.new(0,0,0,0)
local OPEN_POSITION = UDim2.new(0.5,-270,0.5,-150)

local Main = Instance.new("Frame")

Main.Name = "Main"
Main.Size = OPEN_SIZE
Main.Position = OPEN_POSITION

Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.20
Main.BorderSizePixel = 0

Main.Visible = true
Main.ZIndex = 10
Main.Parent = gui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0,14)
MainCorner.Parent = Main

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(255,255,255)
MainStroke.Thickness = 1.5
MainStroke.Parent = Main

--==================================================
-- TOP BAR
--==================================================

local Top = Instance.new("Frame")

Top.Size = UDim2.new(1,0,0,42)
Top.Position = UDim2.new(0,0,0,0)

Top.BackgroundColor3 = Color3.fromRGB(255,255,255)
Top.BackgroundTransparency = 0.10
Top.BorderSizePixel = 0

Top.ZIndex = 11
Top.Parent = Main

local TopCorner = Instance.new("UICorner")
TopCorner.CornerRadius = UDim.new(0,14)
TopCorner.Parent = Top

local Title = Instance.new("TextLabel")

Title.Size = UDim2.new(1,-55,1,0)
Title.Position = UDim2.new(0,15,0,0)

Title.BackgroundTransparency = 1

Title.Text = "👑 QuocAnhMenu"
Title.TextColor3 = Color3.fromRGB(20,20,25)
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold

Title.TextXAlignment = Enum.TextXAlignment.Left

Title.ZIndex = 12
Title.Parent = Top

--==================================================
-- CLOSE BUTTON
--==================================================

local Close = Instance.new("TextButton")

Close.Size = UDim2.new(0,30,0,28)
Close.Position = UDim2.new(1,-38,0,7)

Close.BackgroundColor3 = Color3.fromRGB(245,245,245)
Close.BackgroundTransparency = 0.05
Close.BorderSizePixel = 0

Close.Text = "×"
Close.TextColor3 = Color3.fromRGB(25,25,25)
Close.TextSize = 20
Close.Font = Enum.Font.GothamBold

Close.ZIndex = 13
Close.Parent = Top

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0,8)
CloseCorner.Parent = Close

--==================================================
-- SIDEBAR
--==================================================

local Sidebar = Instance.new("Frame")

Sidebar.Size = UDim2.new(0,128,1,-42)
Sidebar.Position = UDim2.new(0,0,0,42)

Sidebar.BackgroundColor3 = Color3.fromRGB(255,255,255)
Sidebar.BackgroundTransparency = 0.32
Sidebar.BorderSizePixel = 0

Sidebar.ZIndex = 11
Sidebar.Parent = Main

local function CreateSideButton(text,y)

    local Button = Instance.new("TextButton")

    Button.Size = UDim2.new(1,-14,0,38)
    Button.Position = UDim2.new(0,7,0,y)

    Button.BackgroundColor3 = Color3.fromRGB(255,255,255)
    Button.BackgroundTransparency = 0.22
    Button.BorderSizePixel = 0

    Button.Text = text
    Button.TextColor3 = Color3.fromRGB(25,25,30)
    Button.TextSize = 14
    Button.Font = Enum.Font.GothamBold

    Button.ZIndex = 12
    Button.Parent = Sidebar

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0,9)
    Corner.Parent = Button

    return Button

end

local HomeButton = CreateSideButton("🏠  HOME",12)
local EggButton = CreateSideButton("🥚  Steal a Egg",57)
local BloxButton = CreateSideButton("🌊  Blox Fruit",102)

--==================================================
-- CONTENT
--==================================================

local Content = Instance.new("Frame")

Content.Size = UDim2.new(1,-128,1,-42)
Content.Position = UDim2.new(0,128,0,42)

Content.BackgroundColor3 = Color3.fromRGB(255,255,255)
Content.BackgroundTransparency = 0.46
Content.BorderSizePixel = 0

Content.ZIndex = 11
Content.Parent = Main

--==================================================
-- PAGE TITLE
--==================================================

local PageTitle = Instance.new("TextLabel")

PageTitle.Size = UDim2.new(1,-24,0,38)
PageTitle.Position = UDim2.new(0,12,0,5)

PageTitle.BackgroundTransparency = 1

PageTitle.TextColor3 = Color3.fromRGB(20,20,25)
PageTitle.TextSize = 20
PageTitle.Font = Enum.Font.GothamBold

PageTitle.TextXAlignment = Enum.TextXAlignment.Left

PageTitle.ZIndex = 12
PageTitle.Parent = Content

--==================================================
-- INFO SCROLL
--==================================================

local InfoScroll = Instance.new("ScrollingFrame")

InfoScroll.Size = UDim2.new(1,-24,1,-55)
InfoScroll.Position = UDim2.new(0,12,0,48)

InfoScroll.BackgroundTransparency = 1
InfoScroll.BorderSizePixel = 0

InfoScroll.ScrollBarThickness = 3
InfoScroll.CanvasSize = UDim2.new(0,0,0,0)

InfoScroll.ZIndex = 12
InfoScroll.Parent = Content

local Info = Instance.new("TextLabel")

Info.Size = UDim2.new(1,-8,0,0)
Info.Position = UDim2.new(0,0,0,0)

Info.AutomaticSize = Enum.AutomaticSize.Y

Info.BackgroundTransparency = 1

Info.TextColor3 = Color3.fromRGB(45,45,50)
Info.TextSize = 15
Info.Font = Enum.Font.GothamMedium

Info.TextWrapped = true
Info.TextXAlignment = Enum.TextXAlignment.Left
Info.TextYAlignment = Enum.TextYAlignment.Top

Info.ZIndex = 13
Info.Parent = InfoScroll

Info:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()

    InfoScroll.CanvasSize = UDim2.new(
        0,
        0,
        0,
        Info.AbsoluteSize.Y + 10
    )

end)

--==================================================
-- SCRIPT LIST
--==================================================

local ScriptList = Instance.new("ScrollingFrame")

ScriptList.Size = UDim2.new(1,-24,1,-55)
ScriptList.Position = UDim2.new(0,12,0,48)

ScriptList.BackgroundTransparency = 1
ScriptList.BorderSizePixel = 0

ScriptList.ScrollBarThickness = 3
ScriptList.CanvasSize = UDim2.new(0,0,0,0)

ScriptList.Visible = false

ScriptList.ZIndex = 12
ScriptList.Parent = Content

local Layout = Instance.new("UIListLayout")

Layout.Padding = UDim.new(0,5)
Layout.Parent = ScriptList

Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()

    ScriptList.CanvasSize = UDim2.new(
        0,
        0,
        0,
        Layout.AbsoluteContentSize.Y + 8
    )

end)

--==================================================
-- SCRIPT DATA
--==================================================

local EggScripts = {

    {
        "sever hop",
        "https://pastefy.app/YoZocJ8O/raw"
    },

    {
        "steal egg",
        "https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"
    },

    {
        "Spawner Pet",
        "https://raw.githubusercontent.com/chocolascript-glitch/Chocola-Pet-Spawner-steal-an-egg/refs/heads/main/script.lua"
    },

    {
        "RealKid Hub",
        "https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"
    },

    {
        "Lennon Hub",
        "https://raw.githubusercontent.com/lennonxscripts/lennonfarm/refs/heads/main/farmv1.lua"
    },

    {
        "Miranda v2",
        "https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/mirandaafk.lua"
    },

    {
        "Miranda",
        "https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"
    },

    {
        "Chilli hub",
        "https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"
    },

    {
        "Foxname hub",
        "https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Fn-stealanegg.lua"
    },

    {
        "Sena hub",
        "https://senahub.xyz/raw/loader"
    }

}

local BloxScripts = {

    {
        "Red Hub",
        "https://raw.githubusercontent.com/bloxfruitsnokey/Redz/refs/heads/main/Redz/script.luau"
    }

}

--==================================================
-- CLEAR SCRIPT LIST
--==================================================

local function ClearScripts()

    for _,v in ipairs(ScriptList:GetChildren()) do

        if v:IsA("TextButton") then
            v:Destroy()
        end

    end

end

--==================================================
-- ADD SCRIPT
--==================================================

local function AddScript(data)

    local Button = Instance.new("TextButton")

    Button.Size = UDim2.new(1,0,0,34)

    Button.BackgroundColor3 = Color3.fromRGB(255,255,255)
    Button.BackgroundTransparency = 0.14
    Button.BorderSizePixel = 0

    Button.Text = "▶  "..data[1]

    Button.TextColor3 = Color3.fromRGB(25,25,30)
    Button.TextSize = 12
    Button.Font = Enum.Font.GothamBold

    Button.TextXAlignment = Enum.TextXAlignment.Left

    Button.ZIndex = 13
    Button.Parent = ScriptList

    local Padding = Instance.new("UIPadding")

    Padding.PaddingLeft = UDim.new(0,10)
    Padding.Parent = Button

    local Corner = Instance.new("UICorner")

    Corner.CornerRadius = UDim.new(0,8)
    Corner.Parent = Button

    Button.MouseButton1Click:Connect(function()

        local success,err = pcall(function()

            loadstring(game:HttpGet(data[2]))()

        end)

        if not success then

            warn(
                "QuocAnhMenu lỗi:",
                err
            )

        end

    end)

end

--==================================================
-- SHOW HOME
--==================================================

local function ShowHome()

    PageTitle.Text = "🏠 HOME"

    Info.Text =
        "Xin chào! Tôi là QuocAnhMenu 👋\n\n" ..

        "Đây là script tổng hợp các script NoKey khác.\n\n" ..

        "QuocAnhMenu được tạo ra để gom nhiều script vào một menu duy nhất, giúp bạn dễ tìm và sử dụng hơn.\n\n" ..

        "━━━━━━━━━━━━━━━━━━━━\n\n" ..

        "📌 THÔNG TIN\n\n" ..

        "Vì menu mới được tạo nên hiện tại chưa có quá nhiều script.\n\n" ..

        "Chúng tôi sẽ cập nhật thêm script mới định kỳ để menu ngày càng có nhiều lựa chọn hơn.\n\n" ..

        "━━━━━━━━━━━━━━━━━━━━\n\n" ..

        "⚡ CÁCH SỬ DỤNG\n\n" ..

        "Chọn một mục ở thanh bên trái để xem danh sách script.\n\n" ..

        "🥚 Steal a Egg\n" ..

        "Tổng hợp các script liên quan đến Steal a Egg.\n\n" ..

        "🌊 Blox Fruit\n" ..

        "Tổng hợp các script liên quan đến Blox Fruit.\n\n" ..

        "━━━━━━━━━━━━━━━━━━━━\n\n" ..

        "👑 QUOCANHMENU\n\n" ..

        "Giao diện được thiết kế đơn giản, dễ sử dụng và có nút 👑 nổi để mở hoặc đóng menu.\n\n" ..

        "Menu sẽ tiếp tục được cập nhật thêm nhiều script mới.\n\n" ..

        "❤️ Cảm ơn bạn đã sử dụng QuocAnhMenu!"

    InfoScroll.Visible = true
    ScriptList.Visible = false

    InfoScroll.CanvasPosition = Vector2.new(0,0)

end

--==================================================
-- SHOW SCRIPT PAGE
--==================================================

local function ShowPage(title,info,list)

    PageTitle.Text = title

    InfoScroll.Visible = false
    ScriptList.Visible = true

    ClearScripts()

    for _,data in ipairs(list) do

        AddScript(data)

    end

    ScriptList.CanvasPosition = Vector2.new(0,0)

end

--==================================================
-- PAGE BUTTONS
--==================================================

HomeButton.MouseButton1Click:Connect(function()

    ShowHome()

end)

EggButton.MouseButton1Click:Connect(function()

    ShowPage(
        "🥚 Steal a Egg",
        "Các script Steal a Egg được tổng hợp tại đây.",
        EggScripts
    )

end)

BloxButton.MouseButton1Click:Connect(function()

    ShowPage(
        "🌊 Blox Fruit",
        "Chúng tôi đang thêm nhiều script hay, thông cảm vì hiện tại còn thiếu script.",
        BloxScripts
    )

end)

--==================================================
-- OPEN / CLOSE ANIMATION
--==================================================

local OpenTweenInfo = TweenInfo.new(
    0.25,
    Enum.EasingStyle.Quart,
    Enum.EasingDirection.Out
)

local CloseTweenInfo = TweenInfo.new(
    0.20,
    Enum.EasingStyle.Quart,
    Enum.EasingDirection.In
)

local isAnimating = false
local menuOpen = true

local function OpenMenu()

    if isAnimating or menuOpen then
        return
    end

    isAnimating = true
    menuOpen = true

    Main.Visible = true
    Main.Size = CLOSED_SIZE

    local tween = TweenService:Create(
        Main,
        OpenTweenInfo,
        {
            Size = OPEN_SIZE
        }
    )

    tween:Play()

    tween.Completed:Connect(function()

        isAnimating = false

    end)

end

local function CloseMenu()

    if isAnimating or not menuOpen then
        return
    end

    isAnimating = true
    menuOpen = false

    local tween = TweenService:Create(
        Main,
        CloseTweenInfo,
        {
            Size = CLOSED_SIZE
        }
    )

    tween:Play()

    tween.Completed:Connect(function()

        Main.Visible = false
        Main.Size = OPEN_SIZE

        isAnimating = false

    end)

end

--==================================================
-- CROWN TOGGLE
--==================================================

Crown.MouseButton1Click:Connect(function()

    if menuOpen then

        CloseMenu()

    else

        OpenMenu()

    end

end)

--==================================================
-- CLOSE BUTTON
--==================================================

Close.MouseButton1Click:Connect(function()

    CloseMenu()

end)

--==================================================
-- DRAG MAIN MENU
--==================================================

local dragging = false
local dragStart
local startPos

Top.InputBegan:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        dragging = true

        dragStart = input.Position
        startPos = Main.Position

    end

end)

Top.InputEnded:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        dragging = false

    end

end)

UIS.InputChanged:Connect(function(input)

    if dragging then

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

    end

end)

--==================================================
-- DRAG CROWN
--==================================================

local crownDragging = false
local crownStart
local crownPos

Crown.InputBegan:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        crownDragging = true

        crownStart = input.Position
        crownPos = Crown.Position

    end

end)

Crown.InputEnded:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then

        crownDragging = false

    end

end)

UIS.InputChanged:Connect(function(input)

    if crownDragging then

        if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then

            local delta = input.Position - crownStart

            Crown.Position = UDim2.new(
                crownPos.X.Scale,
                crownPos.X.Offset + delta.X,
                crownPos.Y.Scale,
                crownPos.Y.Offset + delta.Y
            )

        end

    end

end)

--==================================================
-- START
--==================================================

Crown.Visible = true

Main.Visible = true
Main.Size = OPEN_SIZE

menuOpen = true

ShowHome()
