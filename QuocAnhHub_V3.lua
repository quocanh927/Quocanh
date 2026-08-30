-- QUOC ANH HUB V3 | ROBLOX STUDIO TEST
-- LocalScript -> StarterPlayer > StarterPlayerScripts
-- Mobile vertical UI + animated switches + stable ESP + hitbox color/size.
-- Target Assist only locks a target reference; it does NOT move Camera.CFrame.

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

local DEFAULT_SPEED = 16
local DEFAULT_JUMP = 50

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
local ESPs = {}
local OldHitboxes = {}
local LockedTarget = nil

local function setupCharacter(c)
    Character = c
    Humanoid = c:WaitForChild("Humanoid")
    RootPart = c:WaitForChild("HumanoidRootPart")
    Humanoid.WalkSpeed = DEFAULT_SPEED
    Humanoid.UseJumpPower = true
    Humanoid.JumpPower = DEFAULT_JUMP
end

if LP.Character then setupCharacter(LP.Character) end
LP.CharacterAdded:Connect(setupCharacter)

--==================================================
-- GUI
--==================================================

local Gui = Instance.new("ScreenGui")
Gui.Name = "QuocAnhHubV3"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.Parent = PG

local Main = Instance.new("Frame")
Main.AnchorPoint = Vector2.new(.5,.5)
Main.Position = UDim2.fromScale(.5,.5)
Main.Size = UDim2.fromScale(.68,.78)
Main.BackgroundColor3 = Color3.fromRGB(15,16,21)
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
Main.Parent = Gui
Instance.new("UICorner",Main).CornerRadius = UDim.new(0,18)

local outline = Instance.new("UIStroke",Main)
outline.Color = Color3.fromRGB(48,50,61)
outline.Thickness = 1.5

local Top = Instance.new("Frame",Main)
Top.Size = UDim2.new(1,0,0,62)
Top.BackgroundColor3 = Color3.fromRGB(20,21,28)
Top.BorderSizePixel = 0

local Title = Instance.new("TextLabel",Top)
Title.Position = UDim2.fromOffset(16,7)
Title.Size = UDim2.new(1,-65,0,28)
Title.BackgroundTransparency = 1
Title.Text = "QUOC ANH"
Title.TextColor3 = Color3.fromRGB(255,214,70)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 19
Title.TextXAlignment = Enum.TextXAlignment.Left

local Sub = Instance.new("TextLabel",Top)
Sub.Position = UDim2.fromOffset(17,34)
Sub.Size = UDim2.new(1,-65,0,15)
Sub.BackgroundTransparency = 1
Sub.Text = "MOBILE • STUDIO TEST"
Sub.TextColor3 = Color3.fromRGB(125,128,140)
Sub.Font = Enum.Font.GothamMedium
Sub.TextSize = 8
Sub.TextXAlignment = Enum.TextXAlignment.Left

local Close = Instance.new("TextButton",Top)
Close.AnchorPoint = Vector2.new(1,.5)
Close.Position = UDim2.new(1,-12,.5,0)
Close.Size = UDim2.fromOffset(36,36)
Close.Text = "×"
Close.TextSize = 22
Close.Font = Enum.Font.GothamBold
Close.TextColor3 = Color3.new(1,1,1)
Close.BackgroundColor3 = Color3.fromRGB(45,46,55)
Close.BorderSizePixel = 0
Instance.new("UICorner",Close).CornerRadius = UDim.new(0,10)

local Scroll = Instance.new("ScrollingFrame",Main)
Scroll.Position = UDim2.fromOffset(9,69)
Scroll.Size = UDim2.new(1,-18,1,-78)
Scroll.BackgroundTransparency = 1
Scroll.BorderSizePixel = 0
Scroll.ScrollBarThickness = 2
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
Scroll.ScrollingDirection = Enum.ScrollingDirection.Y

local p = Instance.new("UIPadding",Scroll)
p.PaddingLeft = UDim.new(0,3)
p.PaddingRight = UDim.new(0,3)
p.PaddingBottom = UDim.new(0,12)

local list = Instance.new("UIListLayout",Scroll)
list.Padding = UDim.new(0,7)
list.SortOrder = Enum.SortOrder.LayoutOrder

local function section(t)
    local x = Instance.new("TextLabel",Scroll)
    x.Size = UDim2.new(1,-4,0,22)
    x.BackgroundTransparency = 1
    x.Text = t
    x.TextColor3 = Color3.fromRGB(255,214,70)
    x.Font = Enum.Font.GothamBold
    x.TextSize = 11
    x.TextXAlignment = Enum.TextXAlignment.Left
end

--==================================================
-- ANIMATED SWITCH
--==================================================

local function switch(text, callback)
    local row = Instance.new("TextButton",Scroll)
    row.Size = UDim2.new(1,-4,0,44)
    row.Text = ""
    row.AutoButtonColor = false
    row.BackgroundColor3 = Color3.fromRGB(27,28,35)
    row.BorderSizePixel = 0
    Instance.new("UICorner",row).CornerRadius = UDim.new(0,11)

    local label = Instance.new("TextLabel",row)
    label.Position = UDim2.fromOffset(13,0)
    label.Size = UDim2.new(1,-80,1,0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = Color3.fromRGB(235,236,240)
    label.Font = Enum.Font.GothamMedium
    label.TextSize = 11
    label.TextXAlignment = Enum.TextXAlignment.Left

    local track = Instance.new("Frame",row)
    track.AnchorPoint = Vector2.new(1,.5)
    track.Position = UDim2.new(1,-12,.5,0)
    track.Size = UDim2.fromOffset(48,26)
    track.BackgroundColor3 = Color3.fromRGB(62,63,73)
    track.BorderSizePixel = 0
    Instance.new("UICorner",track).CornerRadius = UDim.new(1,0)

    local knob = Instance.new("Frame",track)
    knob.AnchorPoint = Vector2.new(0,.5)
    knob.Position = UDim2.new(0,3,.5,0)
    knob.Size = UDim2.fromOffset(20,20)
    knob.BackgroundColor3 = Color3.fromRGB(235,236,240)
    knob.BorderSizePixel = 0
    Instance.new("UICorner",knob).CornerRadius = UDim.new(1,0)

    local on = false

    local function animate()
        local goalPos = on and UDim2.new(1,-23,.5,0) or UDim2.new(0,3,.5,0)
        local goalColor = on and Color3.fromRGB(76,157,94) or Color3.fromRGB(62,63,73)
        TweenService:Create(
            knob,
            TweenInfo.new(.18,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
            {Position=goalPos}
        ):Play()
        TweenService:Create(
            track,
            TweenInfo.new(.18,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
            {BackgroundColor3=goalColor}
        ):Play()
    end

    row.Activated:Connect(function()
        on = not on
        animate()
        callback(on)
    end)

    return row
end

--==================================================
-- SLIDER
--==================================================

local function slider(text,mi,ma,default,callback)
    local holder = Instance.new("Frame",Scroll)
    holder.Size = UDim2.new(1,-4,0,58)
    holder.BackgroundColor3 = Color3.fromRGB(27,28,35)
    holder.BorderSizePixel = 0
    Instance.new("UICorner",holder).CornerRadius = UDim.new(0,11)

    local label = Instance.new("TextLabel",holder)
    label.Position = UDim2.fromOffset(13,5)
    label.Size = UDim2.new(1,-26,0,18)
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.fromRGB(235,236,240)
    label.Font = Enum.Font.GothamMedium
    label.TextSize = 10
    label.TextXAlignment = Enum.TextXAlignment.Left

    local bar = Instance.new("Frame",holder)
    bar.Position = UDim2.new(0,13,0,36)
    bar.Size = UDim2.new(1,-26,0,6)
    bar.BackgroundColor3 = Color3.fromRGB(58,59,69)
    bar.BorderSizePixel = 0
    Instance.new("UICorner",bar).CornerRadius = UDim.new(1,0)

    local fill = Instance.new("Frame",bar)
    fill.BackgroundColor3 = Color3.fromRGB(255,214,70)
    fill.BorderSizePixel = 0
    Instance.new("UICorner",fill).CornerRadius = UDim.new(1,0)

    local knob = Instance.new("Frame",bar)
    knob.AnchorPoint = Vector2.new(.5,.5)
    knob.Size = UDim2.fromOffset(14,14)
    knob.BackgroundColor3 = Color3.fromRGB(255,235,150)
    knob.BorderSizePixel = 0
    Instance.new("UICorner",knob).CornerRadius = UDim.new(1,0)

    local function setValue(x)
        local pct = math.clamp((x-bar.AbsolutePosition.X)/bar.AbsoluteSize.X,0,1)
        local value = math.floor(mi+(ma-mi)*pct)
        fill.Size = UDim2.fromScale(pct,1)
        knob.Position = UDim2.new(pct,0,.5,0)
        label.Text = text.."   "..value
        callback(value)
    end

    local pct = (default-mi)/(ma-mi)
    fill.Size = UDim2.fromScale(pct,1)
    knob.Position = UDim2.new(pct,0,.5,0)
    label.Text = text.."   "..default

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

    return holder
end

--==================================================
-- PLAYER
--==================================================

section("PLAYER")

local speedSlider
switch("Speed",function(on)
    S.SpeedOn=on
    if speedSlider then speedSlider.Visible=on end
    if Humanoid then Humanoid.WalkSpeed=on and S.Speed or DEFAULT_SPEED end
end)
speedSlider=slider("Speed",1,100,S.Speed,function(v)
    S.Speed=v
    if S.SpeedOn and Humanoid then Humanoid.WalkSpeed=v end
end)
speedSlider.Visible=false

local jumpSlider
switch("High Jump",function(on)
    S.JumpOn=on
    if jumpSlider then jumpSlider.Visible=on end
    if Humanoid then Humanoid.JumpPower=on and S.Jump or DEFAULT_JUMP end
end)
jumpSlider=slider("Jump Power",1,150,S.Jump,function(v)
    S.Jump=v
    if S.JumpOn and Humanoid then Humanoid.JumpPower=v end
end)
jumpSlider.Visible=false

switch("Noclip",function(on) S.Noclip=on end)
switch("Infinite Jump",function(on) S.InfJump=on end)

UIS.JumpRequest:Connect(function()
    if S.InfJump and Humanoid then
        Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

--==================================================
-- ESP
--==================================================

section("VISUAL")

local function removeESP(player)
    if ESPs[player] then
        ESPs[player]:Destroy()
        ESPs[player]=nil
    end
end

local function addESP(player)
    if player==LP then return end
    local char=player.Character
    if not char then return end
    local head=char:FindFirstChild("Head")
    if not head then return end

    removeESP(player)

    local bb=Instance.new("BillboardGui")
    bb.Name="QA_NameESP"
    bb.Adornee=head
    bb.AlwaysOnTop=true
    bb.MaxDistance=math.huge
    bb.Size=UDim2.fromOffset(180,30)
    bb.StudsOffset=Vector3.new(0,2.6,0)
    bb.Parent=Gui

    local text=Instance.new("TextLabel",bb)
    text.Size=UDim2.fromScale(1,1)
    text.BackgroundTransparency=1
    text.Text=player.DisplayName
    text.TextColor3=Color3.new(1,1,1)
    text.TextStrokeTransparency=0
    text.TextStrokeColor3=Color3.new(0,0,0)
    text.Font=Enum.Font.GothamBold
    text.TextSize=13

    ESPs[player]=bb
end

local function refreshESP()
    for _,p in ipairs(Players:GetPlayers()) do
        if p~=LP then
            if S.ESP then addESP(p) else removeESP(p) end
        end
    end
end

switch("Player Name ESP",function(on)
    S.ESP=on
    refreshESP()
end)

--==================================================
-- HITBOX
--==================================================

section("HITBOX")

local sizeSlider
local colorButton
local picker

switch("Custom Hitbox",function(on)
    S.HitboxOn=on
    if sizeSlider then sizeSlider.Visible=on end
    if colorButton then colorButton.Visible=on end
    if not on then
        for p,o in pairs(OldHitboxes) do
            if p.Character then
                local r=p.Character:FindFirstChild("HumanoidRootPart")
                if r then
                    r.Size=o.Size
                    r.Transparency=o.Transparency
                    r.Color=o.Color
                end
            end
        end
    end
end)

sizeSlider=slider("Hitbox Size",1,50,S.HitboxSize,function(v)
    S.HitboxSize=v
end)
sizeSlider.Visible=false

colorButton=Instance.new("TextButton",Scroll)
colorButton.Size=UDim2.new(1,-4,0,44)
colorButton.Text="Hitbox Color"
colorButton.TextColor3=Color3.fromRGB(235,236,240)
colorButton.Font=Enum.Font.GothamMedium
colorButton.TextSize=11
colorButton.BackgroundColor3=Color3.fromRGB(27,28,35)
colorButton.BorderSizePixel=0
colorButton.Visible=false
Instance.new("UICorner",colorButton).CornerRadius=UDim.new(0,11)

picker=Instance.new("Frame",Gui)
picker.AnchorPoint=Vector2.new(1,0)
picker.Position=UDim2.fromScale(.97,.5)
picker.Size=UDim2.fromOffset(155,130)
picker.BackgroundColor3=Color3.fromRGB(22,23,29)
picker.BorderSizePixel=0
picker.Visible=false
picker.ZIndex=50
Instance.new("UICorner",picker).CornerRadius=UDim.new(0,12)

local grid=Instance.new("UIGridLayout",picker)
grid.CellSize=UDim2.fromOffset(27,27)
grid.CellPadding=UDim2.fromOffset(7,7)
grid.HorizontalAlignment=Enum.HorizontalAlignment.Center
grid.VerticalAlignment=Enum.VerticalAlignment.Center

local colors={
    Color3.fromRGB(255,60,60),Color3.fromRGB(255,130,45),
    Color3.fromRGB(255,214,60),Color3.fromRGB(70,220,100),
    Color3.fromRGB(50,200,255),Color3.fromRGB(75,115,255),
    Color3.fromRGB(165,75,255),Color3.fromRGB(255,70,185),
    Color3.fromRGB(255,255,255),Color3.fromRGB(80,80,90)
}

for _,c in ipairs(colors) do
    local b=Instance.new("TextButton",picker)
    b.Text=""
    b.BackgroundColor3=c
    b.BorderSizePixel=0
    b.ZIndex=51
    Instance.new("UICorner",b).CornerRadius=UDim.new(0,7)
    b.Activated:Connect(function()
        S.HitboxColor=c
        colorButton.Text="Hitbox Color  •  selected"
        picker.Visible=false
    end)
end

colorButton.Activated:Connect(function()
    picker.Visible=not picker.Visible
end)

local function updateHitboxes()
    for _,p in ipairs(Players:GetPlayers()) do
        if p~=LP and p.Character then
            local r=p.Character:FindFirstChild("HumanoidRootPart")
            if r then
                if not OldHitboxes[p] then
                    OldHitboxes[p]={Size=r.Size,Transparency=r.Transparency,Color=r.Color}
                end
                if S.HitboxOn then
                    r.Size=Vector3.new(S.HitboxSize,S.HitboxSize,S.HitboxSize)
                    r.Transparency=.55
                    r.Color=S.HitboxColor
                end
            end
        end
    end
end

--==================================================
-- TARGET ASSIST
--==================================================

section("AIM")

slider("Target FOV",30,400,S.AimFOV,function(v)
    S.AimFOV=v
end)

switch("Target Assist",function(on)
    S.AimOn=on
    if not on then LockedTarget=nil end
end)

local function validTarget(p)
    if not p or p==LP or not p.Character then return false end
    local h=p.Character:FindFirstChildOfClass("Humanoid")
    local r=p.Character:FindFirstChild("HumanoidRootPart")
    return h and h.Health>0 and r~=nil
end

local function nearestTarget()
    local cam=workspace.CurrentCamera
    if not cam then return nil end

    local center=cam.ViewportSize/2
    local best,bestDist=nil,S.AimFOV

    for _,p in ipairs(Players:GetPlayers()) do
        if validTarget(p) then
            local r=p.Character.HumanoidRootPart
            local screen,visible=cam:WorldToViewportPoint(r.Position)

            if visible and screen.Z>0 then
                local d=(Vector2.new(screen.X,screen.Y)-center).Magnitude
                if d<=bestDist then
                    bestDist=d
                    best=p
                end
            end
        end
    end

    return best
end

--==================================================
-- LOOP
--==================================================

RunService.RenderStepped:Connect(function()
    if Humanoid then
        Humanoid.WalkSpeed=S.SpeedOn and S.Speed or DEFAULT_SPEED
        Humanoid.JumpPower=S.JumpOn and S.Jump or DEFAULT_JUMP
    end

    if S.Noclip and Character then
        for _,x in ipairs(Character:GetDescendants()) do
            if x:IsA("BasePart") then x.CanCollide=false end
        end
    end

    if S.HitboxOn then updateHitboxes() end

    if S.AimOn then
        if not validTarget(LockedTarget) then
            LockedTarget=nearestTarget()
        end
    else
        LockedTarget=nil
    end

    -- IMPORTANT:
    -- No Camera.CFrame modification here.
    -- The player's camera stays completely under Roblox control.
end)

Players.PlayerAdded:Connect(function(p)
    p.CharacterAdded:Connect(function()
        task.wait(.5)
        if S.ESP then addESP(p) end
    end)
end)

Players.PlayerRemoving:Connect(function(p)
    removeESP(p)
    OldHitboxes[p]=nil
    if LockedTarget==p then LockedTarget=nil end
end)

--==================================================
-- OPEN / CLOSE
--==================================================

local Open=Instance.new("TextButton",Gui)
Open.AnchorPoint=Vector2.new(0,1)
Open.Position=UDim2.fromScale(.03,.96)
Open.Size=UDim2.fromOffset(96,40)
Open.Text="OPEN HUB"
Open.TextColor3=Color3.new(1,1,1)
Open.TextSize=11
Open.Font=Enum.Font.GothamBold
Open.BackgroundColor3=Color3.fromRGB(25,26,32)
Open.BorderSizePixel=0
Open.Visible=false
Instance.new("UICorner",Open).CornerRadius=UDim.new(0,10)

Close.Activated:Connect(function()
    Main.Visible=false
    picker.Visible=false
    Open.Visible=true
end)

Open.Activated:Connect(function()
    Main.Visible=true
    Open.Visible=false
end)

-- Drag title
local dragging=false
local dragStart
local startPos

Title.InputBegan:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
        dragging=true
        dragStart=i.Position
        startPos=Main.Position
    end
end)

UIS.InputChanged:Connect(function(i)
    if dragging and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
        local d=i.Position-dragStart
        Main.Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+d.X,startPos.Y.Scale,startPos.Y.Offset+d.Y)
    end
end)

UIS.InputEnded:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
        dragging=false
    end
end)
