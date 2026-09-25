local P=game:GetService("Players").LocalPlayer
local PG=P:WaitForChild("PlayerGui")
local UIS=game:GetService("UserInputService")

pcall(function() PG.QuocAnhMenu:Destroy() end)

local G=Instance.new("ScreenGui",PG)
G.Name="QuocAnhMenu"
G.ResetOnSpawn=false
G.DisplayOrder=999

local function New(c,p)
 local x=Instance.new(c)
 for k,v in pairs(p or {}) do x[k]=v end
 return x
end

local Main=New("Frame",{Parent=G,Size=UDim2.fromOffset(650,390),Position=UDim2.new(.5,-325,.5,-195),BackgroundColor3=Color3.fromRGB(25,25,32),BackgroundTransparency=.12})
New("UICorner",{Parent=Main,CornerRadius=UDim.new(0,18)})
New("UIStroke",{Parent=Main,Color=Color3.fromRGB(255,255,255),Transparency=.82,Thickness=1})

local Bar=New("Frame",{Parent=Main,Size=UDim2.new(1,0,0,62),BackgroundTransparency=1})
local Title=New("TextLabel",{Parent=Bar,Position=UDim2.fromOffset(18,8),Size=UDim2.new(1,-120,0,45),BackgroundTransparency=1,Text="👑 QuocAnhMenu",TextColor3=Color3.new(1,1,1),TextSize=23,Font=Enum.Font.GothamBold,TextXAlignment=Enum.TextXAlignment.Left})

local Close=New("TextButton",{Parent=Bar,Position=UDim2.new(1,-52,0,13),Size=UDim2.fromOffset(38,38),BackgroundColor3=Color3.fromRGB(255,70,70),Text="×",TextColor3=Color3.new(1,1,1),TextSize=25,Font=Enum.Font.GothamBold})
New("UICorner",{Parent=Close,CornerRadius=UDim.new(1,0)})

local SearchBtn=New("TextButton",{Parent=Bar,Position=UDim2.new(1,-100,0,13),Size=UDim2.fromOffset(38,38),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=.88,Text="🔍",TextSize=18})
New("UICorner",{Parent=SearchBtn,CornerRadius=UDim.new(1,0)})

local Search=New("TextBox",{Parent=Bar,Position=UDim2.new(1,-300,0,13),Size=UDim2.fromOffset(190,38),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=.88,PlaceholderText="Tìm script...",Text="",TextColor3=Color3.new(1,1,1),PlaceholderColor3=Color3.fromRGB(180,180,180),TextSize=14,Font=Enum.Font.Gotham,Visible=false})
New("UICorner",{Parent=Search,CornerRadius=UDim.new(0,10)})

local Side=New("Frame",{Parent=Main,Position=UDim2.fromOffset(12,72),Size=UDim2.fromOffset(145,305),BackgroundTransparency=1})
local List=New("ScrollingFrame",{Parent=Main,Position=UDim2.fromOffset(170,72),Size=UDim2.new(1,-182,1,-84),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=4,CanvasSize=UDim2.new()})
local Layout=New("UIListLayout",{Parent=List,Padding=UDim.new(0,8)})

local DATA={
 ["🥚 STEAL A EGG"]={
 {"sever hop","https://pastefy.app/YoZocJ8O/raw"},
 {"steal egg","https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"},
 {"Spawner Pet","https://raw.githubusercontent.com/chocolascript-glitch/Chocola-Pet-Spawner-steal-an-egg/refs/heads/main/script.lua"},
 {"RealKid Hub","https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"},
 {"Lennon Hub","https://raw.githubusercontent.com/lennonxscripts/lennonfarm/refs/heads/main/farmv1.lua"},
 {"Miranda v2","https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/mirandaafk.lua"},
 {"Miranda","https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"},
 {"Chilli hub","https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"},
 {"Foxname hub","https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Fn-stealanegg.lua"},
 {"Sena hub","https://senahub.xyz/raw/loader"}},
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

local HomeText=[[
Xin chào! Tôi là QuocAnhMenu 👋

Đây là menu tổng hợp các script NoKey.

📌 Menu hiện đang được phát triển nên số lượng script chưa nhiều.

🔄 Script sẽ được cập nhật thường xuyên.

📖 Cách sử dụng:
• Chọn game ở thanh bên trái.
• Bấm vào tên script để chạy.
• Dùng 🔍 để tìm script.

🥚 STEAL A EGG
Tổng hợp các script hỗ trợ Steal a Egg.

🌊 BLOX FRUIT
Tổng hợp nhiều Hub dành cho Blox Fruit.

⚔️ BLADE BALL
Tổng hợp các Hub dành cho Blade Ball.

👑 QuocAnhMenu
Cảm ơn bạn đã sử dụng menu!
]]

local PageTitle=New("TextLabel",{Parent=Main,Position=UDim2.fromOffset(170,72),Size=UDim2.new(1,-182,0,35),BackgroundTransparency=1,Text="HOME",TextColor3=Color3.new(1,1,1),TextSize=19,Font=Enum.Font.GothamBold,TextXAlignment=Enum.TextXAlignment.Left})
List.Position=UDim2.fromOffset(170,112)
List.Size=UDim2.new(1,-182,1,-124)

local Home=New("TextLabel",{Parent=Main,Position=UDim2.fromOffset(170,112),Size=UDim2.new(1,-190,1,-135),BackgroundTransparency=1,Text=HomeText,TextColor3=Color3.fromRGB(235,235,235),TextSize=16,Font=Enum.Font.Gotham,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top})

local function Clear()
 for _,v in ipairs(List:GetChildren()) do
  if v:IsA("TextButton") then v:Destroy() end
 end
end

local function Show(cat)
 Home.Visible=false
 List.Visible=true
 PageTitle.Text=cat
 Clear()
 for _,d in ipairs(DATA[cat] or {}) do
  local B=New("TextButton",{Parent=List,Size=UDim2.new(1,-8,0,42),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=.9,Text=d[1],TextColor3=Color3.new(1,1,1),TextSize=15,Font=Enum.Font.GothamSemibold})
  New("UICorner",{Parent=B,CornerRadius=UDim.new(0,10)})
  B.MouseButton1Click:Connect(function()
   pcall(function()
    loadstring(game:HttpGet(d[2]))()
   end)
  end)
 end
 List.CanvasSize=UDim2.fromOffset(0,#(DATA[cat] or {})*50)
end

local function Btn(txt,y,cat)
 local B=New("TextButton",{Parent=Side,Position=UDim2.fromOffset(0,y),Size=UDim2.new(1,0,0,48),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=.9,Text=txt,TextColor3=Color3.new(1,1,1),TextSize=13,Font=Enum.Font.GothamSemibold})
 New("UICorner",{Parent=B,CornerRadius=UDim.new(0,11)})
 B.MouseButton1Click:Connect(function() Show(cat) end)
end

Btn("🏠  Home",0,"HOME")
Btn("🥚  Steal a Egg",54,"🥚 STEAL A EGG")
Btn("🌊  Blox Fruit",108,"🌊 BLOX FRUIT")
Btn("⚔️  Blade Ball",162,"⚔️ BLADE BALL")

SearchBtn.MouseButton1Click:Connect(function()
 Search.Visible=not Search.Visible
 if Search.Visible then Search:CaptureFocus() end
end)

Search:GetPropertyChangedSignal("Text"):Connect(function()
 local q=Search.Text:lower()
 if PageTitle.Text=="HOME" then return end
 for _,b in ipairs(List:GetChildren()) do
  if b:IsA("TextButton") then b.Visible=b.Text:lower():find(q,1,true)~=nil end
 end
end)

Close.MouseButton1Click:Connect(function()
 Main.Visible=false
end)

local Crown=New("TextButton",{Parent=G,Size=UDim2.fromOffset(46,46),Position=UDim2.new(0,18,.5,-23),BackgroundColor3=Color3.fromRGB(25,25,32),BackgroundTransparency=.08,Text="👑",TextSize=21})
New("UICorner",{Parent=Crown,CornerRadius=UDim.new(1,0)})
New("UIStroke",{Parent=Crown,Color=Color3.new(1,1,1),Transparency=.7})

Crown.MouseButton1Click:Connect(function()
 Main.Visible=not Main.Visible
end)

local function Drag(obj)
 local dragging,start,pos
 obj.InputBegan:Connect(function(i)
  if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
   dragging=true
   start=i.Position
   pos=obj.Position
  end
 end)
 UIS.InputChanged:Connect(function(i)
  if dragging and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
   local d=i.Position-start
   obj.Position=UDim2.new(pos.X.Scale,pos.X.Offset+d.X,pos.Y.Scale,pos.Y.Offset+d.Y)
  end
 end)
 UIS.InputEnded:Connect(function(i)
  if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dragging=false end
 end)
end

Drag(Main)
Drag(Crown)
