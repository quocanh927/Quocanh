local P=game:GetService("Players").LocalPlayer
local UIS=game:GetService("UserInputService")
local PG=P:WaitForChild("PlayerGui")
pcall(function() PG.QuocAnhMenu:Destroy() end)

local G=Instance.new("ScreenGui")
G.Name="QuocAnhMenu"
G.ResetOnSpawn=false
G.IgnoreGuiInset=true
G.DisplayOrder=999999
G.Parent=PG

local function N(c,p)
 local x=Instance.new(c)
 for k,v in pairs(p) do x[k]=v end
 return x
end

local function C(x,r)
 N("UICorner",{Parent=x,CornerRadius=UDim.new(0,r)})
end

local function S(x,t,tr)
 N("UIStroke",{Parent=x,Color=Color3.fromRGB(255,255,255),Thickness=t or 1,Transparency=tr or .8})
end

local DATA={
["🥚 STEAL A EGG"]={
{"Sever Hop","https://pastefy.app/YoZocJ8O/raw"},
{"Steal Egg","https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"},
{"Spawner Pet","https://raw.githubusercontent.com/chocolascript-glitch/Chocola-Pet-Spawner-steal-an-egg/refs/heads/main/script.lua"},
{"RealKid Hub","https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"},
{"Lennon Hub","https://raw.githubusercontent.com/lennonxscripts/lennonfarm/refs/heads/main/farmv1.lua"},
{"Miranda v2","https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/mirandaafk.lua"},
{"Miranda","https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"},
{"Chilli Hub","https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"},
{"Foxname Hub","https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Fn-stealanegg.lua"},
{"Sena Hub","https://senahub.xyz/raw/loader"}},

["🌊 BLOX FRUIT"]={
{"Red Hub","https://raw.githubusercontent.com/bloxfruitsnokey/Redz/refs/heads/main/Redz/script.luau"},
{"Night Hub","https://raw.githubusercontent.com/Dev-NightMystic/Bloxfruits/refs/heads/main/Script.lua"},
{"Gravity Hub","https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"},
{"Xynapse Hub","https://pastebin.com/raw/uECLqG3j"},
{"Zee Hub","https://link.trwxz.com/LS-Zee-Hub-VIP"},
{"Quantum Hub","https://pastebin.com/raw/r5h2r57F"},
{"Zinner Hub","https://raw.githubusercontent.com/HoangNguyenk8/Scripts/refs/heads/main/Loader.lua"},
{"Andepzai Hub","https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/main/AnDepZaiHubBeta.lua"},
{"OMG Hub","https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"},
{"Annie Hub","https://raw.githubusercontent.com/1st-Mars/Annie/main/1st.lua"}},

["⚔️ BLADE BALL"]={
{"KAZZ Hub","https://api.jnkie.com/api/v1/loaders/public/353accd2d41a5a30c879705a8ff47926fab2c8b7d7baf34d31c0522b8c6c0a41/download"},
{"Dryx Hub","https://raw.githubusercontent.com/Doortthemort/676/refs/heads/main/Main.lua"},
{"Arceney Hub","https://arceney.win/cdn/loader.luau?v=scrb"},
{"Wings Hub [Premium]","https://wings.ac/loader"},
{"Argon Hub","https://raw.githubusercontent.com/luwriy/jwhub/refs/heads/main/loader"}}
}

local Main=N("Frame",{
Parent=G,
Size=UDim2.fromOffset(680,420),
Position=UDim2.new(.5,-340,.5,-210),
BackgroundColor3=Color3.fromRGB(18,20,28),
BackgroundTransparency=.08
})
C(Main,22)
S(Main,1,.72)

local Glow=N("Frame",{
Parent=Main,
Size=UDim2.new(1,0,0,3),
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=.75
})
C(Glow,5)

local Top=N("Frame",{
Parent=Main,
Size=UDim2.new(1,0,0,68),
BackgroundTransparency=1
})

local Logo=N("Frame",{
Parent=Top,
Position=UDim2.fromOffset(16,12),
Size=UDim2.fromOffset(44,44),
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=.88
})
C(Logo,14)
S(Logo,1,.65)

N("TextLabel",{
Parent=Logo,
Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,
Text="👑",
TextSize=21
})

N("TextLabel",{
Parent=Top,
Position=UDim2.fromOffset(70,10),
Size=UDim2.fromOffset(300,27),
BackgroundTransparency=1,
Text="QuocAnhMenu",
TextColor3=Color3.new(1,1,1),
TextSize=21,
Font=Enum.Font.GothamBold,
TextXAlignment=Enum.TextXAlignment.Left
})

N("TextLabel",{
Parent=Top,
Position=UDim2.fromOffset(70,36),
Size=UDim2.fromOffset(300,20),
BackgroundTransparency=1,
Text="SCRIPT HUB  •  NO KEY",
TextColor3=Color3.fromRGB(155,160,175),
TextSize=10,
Font=Enum.Font.GothamMedium,
TextXAlignment=Enum.TextXAlignment.Left
})

local Search=N("TextBox",{
Parent=Top,
Position=UDim2.new(1,-145,0,14),
Size=UDim2.fromOffset(92,40),
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=.91,
PlaceholderText="🔍",
Text="",
TextColor3=Color3.new(1,1,1),
PlaceholderColor3=Color3.fromRGB(180,180,190),
TextSize=13,
Font=Enum.Font.Gotham,
ClearTextOnFocus=false
})
C(Search,12)
S(Search,1,.75)

local Close=N("TextButton",{
Parent=Top,
Position=UDim2.new(1,-47,0,14),
Size=UDim2.fromOffset(32,40),
BackgroundColor3=Color3.fromRGB(255,70,85),
BackgroundTransparency=.15,
Text="×",
TextColor3=Color3.new(1,1,1),
TextSize=22,
Font=Enum.Font.GothamBold
})
C(Close,11)

local Side=N("Frame",{
Parent=Main,
Position=UDim2.fromOffset(13,76),
Size=UDim2.fromOffset(155,330),
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=.94
})
C(Side,17)
S(Side,1,.88)

local Content=N("Frame",{
Parent=Main,
Position=UDim2.fromOffset(180,76),
Size=UDim2.new(1,-193,1,-89),
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=.955
})
C(Content,17)
S(Content,1,.9)

local Title=N("TextLabel",{
Parent=Content,
Position=UDim2.fromOffset(18,13),
Size=UDim2.new(1,-36,0,32),
BackgroundTransparency=1,
Text="🏠  HOME",
TextColor3=Color3.new(1,1,1),
TextSize=17,
Font=Enum.Font.GothamBold,
TextXAlignment=Enum.TextXAlignment.Left
})

local Scroll=N("ScrollingFrame",{
Parent=Content,
Position=UDim2.fromOffset(12,52),
Size=UDim2.new(1,-24,1,-64),
BackgroundTransparency=1,
BorderSizePixel=0,
ScrollBarThickness=3,
ScrollBarImageTransparency=.35,
CanvasSize=UDim2.new()
})

local Layout=N("UIListLayout",{
Parent=Scroll,
Padding=UDim.new(0,7)
})

local Home=N("TextLabel",{
Parent=Scroll,
Size=UDim2.new(1,-8,0,280),
BackgroundTransparency=1,
Text=[[
Xin chào! Tôi là QuocAnhMenu 👋

Đây là menu tổng hợp các script NoKey khác.

📌 Menu đang được phát triển nên hiện tại chưa có quá nhiều script.

🔄 Chúng tôi sẽ cập nhật script thường xuyên.

━━━━━━━━━━━━━━━━━━

📖 CÁCH SỬ DỤNG

• Chọn game ở thanh bên trái.
• Chọn script muốn chạy.
• Dùng 🔍 để tìm nhanh script.
• Có thể kéo menu bằng thanh trên.

━━━━━━━━━━━━━━━━━━

🥚 STEAL A EGG
Các script hỗ trợ Steal a Egg.

🌊 BLOX FRUIT
Các Hub dành cho Blox Fruit.

⚔️ BLADE BALL
Các Hub dành cho Blade Ball.

━━━━━━━━━━━━━━━━━━

👑 QuocAnhMenu
Cảm ơn bạn đã sử dụng!
]],
TextColor3=Color3.fromRGB(225,227,235),
TextSize=13,
Font=Enum.Font.Gotham,
TextWrapped=true,
TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top
})

local Current="HOME"

local function Clear()
 for _,v in ipairs(Scroll:GetChildren()) do
  if v:IsA("TextButton") then v:Destroy() end
 end
end

local function Show(cat)
 Current=cat
 Home.Visible=false
 Clear()
 Title.Text=cat

 local arr=DATA[cat] or {}

 for _,d in ipairs(arr) do
  local B=N("TextButton",{
   Parent=Scroll,
   Size=UDim2.new(1,-8,0,43),
   BackgroundColor3=Color3.fromRGB(255,255,255),
   BackgroundTransparency=.91,
   Text=d[1],
   TextColor3=Color3.fromRGB(240,240,245),
   TextSize=13,
   Font=Enum.Font.GothamSemibold,
   TextXAlignment=Enum.TextXAlignment.Left
  })
  C(B,11)
  S(B,1,.86)

  N("UIPadding",{
   Parent=B,
   PaddingLeft=UDim.new(0,14)
  })

  B.MouseEnter:Connect(function()
   B.BackgroundTransparency=.84
  end)

  B.MouseLeave:Connect(function()
   B.BackgroundTransparency=.91
  end)

  B.MouseButton1Click:Connect(function()
   pcall(function()
    loadstring(game:HttpGet(d[2]))()
   end)
  end)
 end

 Scroll.CanvasSize=UDim2.fromOffset(0,#arr*50)
end

local function HomePage()
 Current="HOME"
 Clear()
 Home.Visible=true
 Title.Text="🏠  HOME"
end

local function SideButton(text,y,cat,icon)
 local B=N("TextButton",{
  Parent=Side,
  Position=UDim2.fromOffset(8,y),
  Size=UDim2.new(1,-16,0,47),
  BackgroundColor3=Color3.fromRGB(255,255,255),
  BackgroundTransparency=.94,
  Text=icon.."  "..text,
  TextColor3=Color3.fromRGB(205,208,218),
  TextSize=12,
  Font=Enum.Font.GothamSemibold,
  TextXAlignment=Enum.TextXAlignment.Left
 })
 C(B,11)

 N("UIPadding",{
  Parent=B,
  PaddingLeft=UDim.new(0,13)
 })

 B.MouseEnter:Connect(function()
  B.BackgroundTransparency=.87
 end)

 B.MouseLeave:Connect(function()
  if Current~=cat then B.BackgroundTransparency=.94 end
 end)

 B.MouseButton1Click:Connect(function()
  if cat=="HOME" then HomePage() else Show(cat) end
 end)
end

SideButton("Home",10,"HOME","⌂")
SideButton("Steal a Egg",64,"🥚 STEAL A EGG","🥚")
SideButton("Blox Fruit",118,"🌊 BLOX FRUIT","🌊")
SideButton("Blade Ball",172,"⚔️ BLADE BALL","⚔️")

local Bottom=N("TextLabel",{
Parent=Side,
Position=UDim2.fromOffset(14,282),
Size=UDim2.new(1,-28,0,32),
BackgroundTransparency=1,
Text="QuocAnhMenu  •  v1",
TextColor3=Color3.fromRGB(110,115,130),
TextSize=9,
Font=Enum.Font.GothamMedium,
TextXAlignment=Enum.TextXAlignment.Left
})

Search:GetPropertyChangedSignal("Text"):Connect(function()
 if Current=="HOME" then return end
 local q=Search.Text:lower()

 for _,v in ipairs(Scroll:GetChildren()) do
  if v:IsA("TextButton") then
   v.Visible=v.Text:lower():find(q,1,true)~=nil
  end
 end
end)

Close.MouseButton1Click:Connect(function()
 Main.Visible=false
end)

local Crown=N("TextButton",{
Parent=G,
Size=UDim2.fromOffset(44,44),
Position=UDim2.new(0,18,.5,-22),
BackgroundColor3=Color3.fromRGB(20,22,30),
BackgroundTransparency=.08,
Text="👑",
TextSize=20
})
C(Crown,99)
S(Crown,1,.68)

Crown.MouseButton1Click:Connect(function()
 Main.Visible=not Main.Visible
end)

local function Drag(obj)
 local dragging=false
 local start
 local original

 obj.InputBegan:Connect(function(i)
  if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
   dragging=true
   start=i.Position
   original=obj.Position
  end
 end)

 UIS.InputChanged:Connect(function(i)
  if dragging and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
   local d=i.Position-start
   obj.Position=UDim2.new(
    original.X.Scale,
    original.X.Offset+d.X,
    original.Y.Scale,
    original.Y.Offset+d.Y
   )
  end
 end)

 UIS.InputEnded:Connect(function(i)
  if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
   dragging=false
  end
 end)
end

Drag(Main)
Drag(Crown)
