-- QUOC ANH HUB V2 | ROBLOX STUDIO TEST MENU
-- LocalScript -> StarterPlayer > StarterPlayerScripts
-- Aimbot: target-selection framework only. It does NOT move Camera.CFrame.

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

local S = {
    SpeedOn = false, Speed = 16,
    JumpOn = false, Jump = 50,
    Noclip = false, InfJump = false,
    ESP = false,
    HitboxOn = false, HitboxSize = 10,
    HitboxColor = Color3.fromRGB(255,70,70),
    AimOn = false, AimFOV = 120,
}
local Character, Humanoid, RootPart
local ESPs, Old = {}, {}
local LockedTarget = nil

local function setupCharacter(c)
    Character = c
    Humanoid = c:WaitForChild("Humanoid")
    RootPart = c:WaitForChild("HumanoidRootPart")
    Humanoid.WalkSpeed = 16
    Humanoid.UseJumpPower = true
    Humanoid.JumpPower = 50
end
if LP.Character then setupCharacter(LP.Character) end
LP.CharacterAdded:Connect(setupCharacter)

-- GUI
local Gui = Instance.new("ScreenGui")
Gui.Name = "QuocAnhHubV2"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.Parent = PG

local Main = Instance.new("Frame")
Main.AnchorPoint = Vector2.new(.5,.5)
Main.Position = UDim2.fromScale(.5,.5)
Main.Size = UDim2.fromScale(.84,.80)
Main.BackgroundColor3 = Color3.fromRGB(16,17,22)
Main.BorderSizePixel = 0
Main.Parent = Gui
Instance.new("UICorner",Main).CornerRadius = UDim.new(0,18)
local ms = Instance.new("UIStroke",Main)
ms.Color = Color3.fromRGB(52,54,65)
ms.Thickness = 1.5

local Title = Instance.new("TextLabel",Main)
Title.Position = UDim2.fromOffset(18,9)
Title.Size = UDim2.new(1,-75,0,28)
Title.BackgroundTransparency = 1
Title.Text = "QUOC ANH HUB"
Title.TextColor3 = Color3.fromRGB(255,214,70)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.TextXAlignment = Enum.TextXAlignment.Left

local Sub = Instance.new("TextLabel",Main)
Sub.Position = UDim2.fromOffset(19,35)
Sub.Size = UDim2.new(1,-75,0,15)
Sub.BackgroundTransparency = 1
Sub.Text = "MOBILE • STUDIO TEST"
Sub.TextColor3 = Color3.fromRGB(135,138,150)
Sub.Font = Enum.Font.GothamMedium
Sub.TextSize = 9
Sub.TextXAlignment = Enum.TextXAlignment.Left

local Close = Instance.new("TextButton",Main)
Close.Position = UDim2.new(1,-53,0,11)
Close.Size = UDim2.fromOffset(37,37)
Close.Text = "×"
Close.TextSize = 23
Close.Font = Enum.Font.GothamBold
Close.TextColor3 = Color3.new(1,1,1)
Close.BackgroundColor3 = Color3.fromRGB(43,44,53)
Close.BorderSizePixel = 0
Instance.new("UICorner",Close).CornerRadius = UDim.new(0,10)

local Scroll = Instance.new("ScrollingFrame",Main)
Scroll.Position = UDim2.fromOffset(11,67)
Scroll.Size = UDim2.new(1,-22,1,-78)
Scroll.BackgroundTransparency = 1
Scroll.BorderSizePixel = 0
Scroll.ScrollBarThickness = 3
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
local pad = Instance.new("UIPadding",Scroll)
pad.PaddingLeft = UDim.new(0,3)
pad.PaddingRight = UDim.new(0,3)
pad.PaddingBottom = UDim.new(0,15)
local layout = Instance.new("UIListLayout",Scroll)
layout.Padding = UDim.new(0,8)
layout.SortOrder = Enum.SortOrder.LayoutOrder

local function section(t)
    local x = Instance.new("TextLabel",Scroll)
    x.Size = UDim2.new(1,-5,0,23)
    x.BackgroundTransparency = 1
    x.Text = t
    x.TextColor3 = Color3.fromRGB(255,214,70)
    x.Font = Enum.Font.GothamBold
    x.TextSize = 12
    x.TextXAlignment = Enum.TextXAlignment.Left
    return x
end

-- Toggle with sliding round knob
local function toggle(text, default, callback)
    local b = Instance.new("TextButton",Scroll)
    b.Size = UDim2.new(1,-5,0,46)
    b.Text = ""
    b.AutoButtonColor = false
    b.BackgroundColor3 = Color3.fromRGB(29,30,38)
    b.BorderSizePixel = 0
    Instance.new("UICorner",b).CornerRadius = UDim.new(0,12)

    local n = Instance.new("TextLabel",b)
    n.Position = UDim2.fromOffset(14,0)
    n.Size = UDim2.new(1,-85,1,0)
    n.BackgroundTransparency = 1
    n.Text = text
    n.TextColor3 = Color3.fromRGB(235,236,240)
    n.Font = Enum.Font.GothamMedium
    n.TextSize = 12
    n.TextXAlignment = Enum.TextXAlignment.Left

    local track = Instance.new("Frame",b)
    track.AnchorPoint = Vector2.new(1,.5)
    track.Position = UDim2.new(1,-13,.5,0)
    track.Size = UDim2.fromOffset(50,28)
    track.BackgroundColor3 = Color3.fromRGB(65,66,76)
    track.BorderSizePixel = 0
    Instance.new("UICorner",track).CornerRadius = UDim.new(1,0)

    local knob = Instance.new("Frame",track)
    knob.AnchorPoint = Vector2.new(0,.5)
    knob.Position = UDim2.new(0,3,.5,0)
    knob.Size = UDim2.fromOffset(22,22)
    knob.BackgroundColor3 = Color3.fromRGB(225,226,230)
    knob.BorderSizePixel = 0
    Instance.new("UICorner",knob).CornerRadius = UDim.new(1,0)

    local v = default
    local function refresh()
        track.BackgroundColor3 = v and Color3.fromRGB(74,154,94) or Color3.fromRGB(65,66,76)
        knob.Position = v and UDim2.new(1,-25,.5,0) or UDim2.new(0,3,.5,0)
    end
    refresh()
    b.Activated:Connect(function()
        v = not v
        refresh()
        callback(v)
    end)
    return b
end

local function slider(text,mi,ma,def,callback)
    local h = Instance.new("Frame",Scroll)
    h.Size = UDim2.new(1,-5,0,60)
    h.BackgroundColor3 = Color3.fromRGB(29,30,38)
    h.BorderSizePixel = 0
    Instance.new("UICorner",h).CornerRadius = UDim.new(0,12)

    local label = Instance.new("TextLabel",h)
    label.Position = UDim2.fromOffset(14,5)
    label.Size = UDim2.new(1,-28,0,19)
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.fromRGB(235,236,240)
    label.Font = Enum.Font.GothamMedium
    label.TextSize = 11
    label.TextXAlignment = Enum.TextXAlignment.Left

    local bar = Instance.new("Frame",h)
    bar.Position = UDim2.new(0,14,0,38)
    bar.Size = UDim2.new(1,-28,0,7)
    bar.BackgroundColor3 = Color3.fromRGB(60,61,72)
    bar.BorderSizePixel = 0
    Instance.new("UICorner",bar).CornerRadius = UDim.new(1,0)

    local fill = Instance.new("Frame",bar)
    fill.BackgroundColor3 = Color3.fromRGB(255,214,70)
    fill.BorderSizePixel = 0
    Instance.new("UICorner",fill).CornerRadius = UDim.new(1,0)

    local function setValue(x)
        local p = math.clamp((x-bar.AbsolutePosition.X)/bar.AbsoluteSize.X,0,1)
        local value = math.floor(mi+(ma-mi)*p)
        fill.Size = UDim2.fromScale(p,1)
        label.Text = text.."   "..value
        callback(value)
    end
    local p = (def-mi)/(ma-mi)
    fill.Size = UDim2.fromScale(p,1)
    label.Text = text.."   "..def

    local dragging = false
    bar.InputBegan:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
            dragging=true
            setValue(i.Position.X)
        end
    end)
    UIS.InputChanged:Connect(function(i)
        if dragging and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
            setValue(i.Position.X)
        end
    end)
    UIS.InputEnded:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dragging=false end
    end)
    return h
end

-- PLAYER
section("PLAYER")

local speedSlider
local speedToggle = toggle("Speed",false,function(v)
    S.SpeedOn=v
    if Humanoid then Humanoid.WalkSpeed=v and S.Speed or 16 end
    if speedSlider then speedSlider.Visible=v end
end)
speedSlider = slider("Speed",1,100,S.Speed,function(v)
    S.Speed=v
    if S.SpeedOn and Humanoid then Humanoid.WalkSpeed=v end
end)
speedSlider.Visible=false

local jumpSlider
local jumpToggle = toggle("High Jump",false,function(v)
    S.JumpOn=v
    if Humanoid then Humanoid.JumpPower=v and S.Jump or 50 end
    if jumpSlider then jumpSlider.Visible=v end
end)
jumpSlider = slider("Jump Power",1,150,S.Jump,function(v)
    S.Jump=v
    if S.JumpOn and Humanoid then Humanoid.JumpPower=v end
end)
jumpSlider.Visible=false

toggle("Noclip",false,function(v) S.Noclip=v end)
toggle("Infinite Jump",false,function(v) S.InfJump=v end)

UIS.JumpRequest:Connect(function()
    if S.InfJump and Humanoid then Humanoid:ChangeState(Enum.HumanoidStateType.Jumping) end
end)

-- ESP
section("VISUAL")

local function removeESP(p)
    if ESPs[p] then ESPs[p]:Destroy(); ESPs[p]=nil end
end

local function addESP(p)
    if p==LP or not p.Character then return end
    local head=p.Character:FindFirstChild("Head")
    if not head then return end
    removeESP(p)
    local bb=Instance.new("BillboardGui",head)
    bb.Name="QA_NameESP"
    bb.Adornee=head
    bb.AlwaysOnTop=true
    bb.MaxDistance=math.huge
    bb.Size=UDim2.fromOffset(190,32)
    bb.StudsOffset=Vector3.new(0,2.8,0)
    local tx=Instance.new("TextLabel",bb)
    tx.Size=UDim2.fromScale(1,1)
    tx.BackgroundTransparency=1
    tx.Text=p.DisplayName
    tx.TextColor3=Color3.new(1,1,1)
    tx.TextStrokeTransparency=0
    tx.TextStrokeColor3=Color3.new(0,0,0)
    tx.Font=Enum.Font.GothamBold
    tx.TextSize=14
    ESPs[p]=bb
end

local function refreshESP()
    for _,p in ipairs(Players:GetPlayers()) do
        if p~=LP then
            if S.ESP then addESP(p) else removeESP(p) end
        end
    end
end
toggle("Player Name ESP",false,function(v) S.ESP=v;refreshESP() end)

-- HITBOX
section("HITBOX")

local hbSizeSlider
local hbColorButton
local colorPicker

toggle("Custom Hitbox",false,function(v)
    S.HitboxOn=v
    if hbSizeSlider then hbSizeSlider.Visible=v end
    if hbColorButton then hbColorButton.Visible=v end
    if not v then
        for p,old in pairs(Old) do
            if p.Character then
                local r=p.Character:FindFirstChild("HumanoidRootPart")
                if r then
                    r.Size=old.Size
                    r.Transparency=old.Transparency
                    r.Color=old.Color
                end
            end
        end
    end
end)

hbSizeSlider=slider("Hitbox Size",1,50,S.HitboxSize,function(v)
    S.HitboxSize=v
end)
hbSizeSlider.Visible=false

hbColorButton=Instance.new("TextButton",Scroll)
hbColorButton.Size=UDim2.new(1,-5,0,46)
hbColorButton.Text="Hitbox Color"
hbColorButton.TextColor3=Color3.new(1,1,1)
hbColorButton.Font=Enum.Font.GothamMedium
hbColorButton.TextSize=12
hbColorButton.BackgroundColor3=Color3.fromRGB(29,30,38)
hbColorButton.BorderSizePixel=0
hbColorButton.Visible=false
Instance.new("UICorner",hbColorButton).CornerRadius=UDim.new(0,12)

local colors={
    Color3.fromRGB(255,70,70),Color3.fromRGB(255,140,50),
    Color3.fromRGB(255,214,70),Color3.fromRGB(80,220,100),
    Color3.fromRGB(60,200,255),Color3.fromRGB(80,120,255),
    Color3.fromRGB(170,80,255),Color3.fromRGB(255,80,190),
    Color3.fromRGB(255,255,255),Color3.fromRGB(80,80,90)
}
colorPicker=Instance.new("Frame",Gui)
colorPicker.AnchorPoint=Vector2.new(1,0)
colorPicker.Position=UDim2.fromScale(.97,.5)
colorPicker.Size=UDim2.fromOffset(165,140)
colorPicker.BackgroundColor3=Color3.fromRGB(23,24,30)
colorPicker.BorderSizePixel=0
colorPicker.Visible=false
colorPicker.ZIndex=50
Instance.new("UICorner",colorPicker).CornerRadius=UDim.new(0,12)
local grid=Instance.new("UIGridLayout",colorPicker)
grid.CellSize=UDim2.fromOffset(30,30)
grid.CellPadding=UDim2.fromOffset(7,7)
grid.HorizontalAlignment=Enum.HorizontalAlignment.Center
grid.VerticalAlignment=Enum.VerticalAlignment.Center
for _,c in ipairs(colors) do
    local b=Instance.new("TextButton",colorPicker)
    b.Text=""
    b.BackgroundColor3=c
    b.BorderSizePixel=0
    b.ZIndex=51
    Instance.new("UICorner",b).CornerRadius=UDim.new(0,8)
    b.Activated:Connect(function()
        S.HitboxColor=c
        colorPicker.Visible=false
    end)
end
hbColorButton.Activated:Connect(function()
    colorPicker.Visible=not colorPicker.Visible
end)

local function updateHitboxes()
    for _,p in ipairs(Players:GetPlayers()) do
        if p~=LP and p.Character then
            local r=p.Character:FindFirstChild("HumanoidRootPart")
            if r then
                if not Old[p] then Old[p]={Size=r.Size,Transparency=r.Transparency,Color=r.Color} end
                if S.HitboxOn then
                    r.Size=Vector3.new(S.HitboxSize,S.HitboxSize,S.HitboxSize)
                    r.Transparency=.55
                    r.Color=S.HitboxColor
                end
            end
        end
    end
end

-- AIM TARGET SELECTION
section("AIM")

slider("Aimbot FOV",30,400,S.AimFOV,function(v) S.AimFOV=v end)
toggle("Target Assist",false,function(v)
    S.AimOn=v
    if not v then LockedTarget=nil end
end)

local function validTarget(p)
    if not p or p==LP or not p.Character then return false end
    local h=p.Character:FindFirstChildOfClass("Humanoid")
    local r=p.Character:FindFirstChild("HumanoidRootPart")
    return h and h.Health>0 and r~=nil
end

local function findNearestTarget()
    local cam=workspace.CurrentCamera
    if not cam then return nil end
    local center=cam.ViewportSize/2
    local best=nil
    local bestD=S.AimFOV
    for _,p in ipairs(Players:GetPlayers()) do
        if validTarget(p) then
            local r=p.Character.HumanoidRootPart
            local screen,visible=cam:WorldToViewportPoint(r.Position)
            if visible and screen.Z>0 then
                local d=(Vector2.new(screen.X,screen.Y)-center).Magnitude
                if d<=bestD then bestD=d;best=p end
            end
        end
    end
    return best
end

-- Main loop
RunService.RenderStepped:Connect(function()
    if Humanoid then
        Humanoid.WalkSpeed=S.SpeedOn and S.Speed or 16
        Humanoid.JumpPower=S.JumpOn and S.Jump or 50
    end

    if S.Noclip and Character then
        for _,x in ipairs(Character:GetDescendants()) do
            if x:IsA("BasePart") then x.CanCollide=false end
        end
    end

    if S.ESP then refreshESP() end
    if S.HitboxOn then updateHitboxes() end

    if S.AimOn then
        if not validTarget(LockedTarget) then
            LockedTarget=findNearestTarget()
        end
    else
        LockedTarget=nil
    end
    -- Intentionally no Camera.CFrame assignment.
end)

Players.PlayerAdded:Connect(function(p)
    p.CharacterAdded:Connect(function()
        task.wait(.4)
        if S.ESP then addESP(p) end
    end)
end)

Players.PlayerRemoving:Connect(function(p)
    removeESP(p)
    Old[p]=nil
    if LockedTarget==p then LockedTarget=nil end
end)

-- Open/close
local Open=Instance.new("TextButton",Gui)
Open.AnchorPoint=Vector2.new(0,1)
Open.Position=UDim2.fromScale(.03,.96)
Open.Size=UDim2.fromOffset(105,42)
Open.Text="OPEN HUB"
Open.TextColor3=Color3.new(1,1,1)
Open.TextSize=12
Open.Font=Enum.Font.GothamBold
Open.BackgroundColor3=Color3.fromRGB(25,26,32)
Open.BorderSizePixel=0
Open.Visible=false
Instance.new("UICorner",Open).CornerRadius=UDim.new(0,11)

Close.Activated:Connect(function()
    Main.Visible=false
    colorPicker.Visible=false
    Open.Visible=true
end)
Open.Activated:Connect(function()
    Main.Visible=true
    Open.Visible=false
end)

-- Drag title
local dragging=false
local startInput,startPos
Title.InputBegan:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
        dragging=true
        startInput=i.Position
        startPos=Main.Position
    end
end)
UIS.InputChanged:Connect(function(i)
    if dragging and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
        local d=i.Position-startInput
        Main.Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+d.X,startPos.Y.Scale,startPos.Y.Offset+d.Y)
    end
end)
UIS.InputEnded:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dragging=false end
end)
