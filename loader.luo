--// QUOC ANH MENU V5.1 FIXED
--// PART 1/3
--// BLACK GLASS • SMALLER • ALL TEXT VISIBLE

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local Player = Players.LocalPlayer
local GUI_NAME = "QuocAnhMenu_V51"

--==================================================
-- REMOVE OLD
--==================================================

pcall(function()
	for _, parent in ipairs({CoreGui, Player:WaitForChild("PlayerGui")}) do
		local old = parent:FindFirstChild(GUI_NAME)
		if old then
			old:Destroy()
		end
	end
end)

--==================================================
-- COLORS
--==================================================

local C = {
	Main = Color3.fromRGB(7,8,10),
	Panel = Color3.fromRGB(11,12,15),
	Panel2 = Color3.fromRGB(16,17,20),
	Card = Color3.fromRGB(20,21,25),
	White = Color3.fromRGB(245,245,247),
	Light = Color3.fromRGB(210,211,216),
	Gray = Color3.fromRGB(145,147,154),
	Dark = Color3.fromRGB(65,66,72),
	Hover = Color3.fromRGB(31,32,37)
}

--==================================================
-- GUI
--==================================================

local Gui = Instance.new("ScreenGui")
Gui.Name = GUI_NAME
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
Gui.DisplayOrder = 50

pcall(function()
	Gui.Parent = CoreGui
end)

if not Gui.Parent then
	Gui.Parent = Player:WaitForChild("PlayerGui")
end

--==================================================
-- SCALE
--==================================================

local Scale = Instance.new("UIScale")
Scale.Scale = 0.78
Scale.Parent = Gui

local function UpdateScale()
	local camera = workspace.CurrentCamera
	if not camera then return end

	local w = camera.ViewportSize.X

	if w <= 360 then
		Scale.Scale = 0.52
	elseif w <= 400 then
		Scale.Scale = 0.58
	elseif w <= 450 then
		Scale.Scale = 0.64
	elseif w <= 520 then
		Scale.Scale = 0.70
	elseif w <= 700 then
		Scale.Scale = 0.78
	else
		Scale.Scale = 0.90
	end
end

UpdateScale()

if workspace.CurrentCamera then
	workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateScale)
end

--==================================================
-- HELPERS
--==================================================

local function Corner(obj, radius)
	local x = Instance.new("UICorner")
	x.CornerRadius = UDim.new(0, radius)
	x.Parent = obj
	return x
end

local function Stroke(obj, color, thickness, transparency)
	local x = Instance.new("UIStroke")
	x.Color = color
	x.Thickness = thickness or 1
	x.Transparency = transparency or 0
	x.Parent = obj
	return x
end

local function Label(parent, text, size, color, font)
	local x = Instance.new("TextLabel")
	x.BackgroundTransparency = 1
	x.Text = text
	x.TextSize = size or 14
	x.TextColor3 = color or C.White
	x.Font = font or Enum.Font.Gotham
	x.TextXAlignment = Enum.TextXAlignment.Left
	x.TextYAlignment = Enum.TextYAlignment.Center
	x.Parent = parent
	return x
end

local function Tween(obj, time, props)
	return TweenService:Create(
		obj,
		TweenInfo.new(time, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
		props
	)
end

--==================================================
-- SCRIPT DATA
--==================================================

local Scripts = {

	["Steal a Egg"] = {
		{
			Name = "Sever Hop",
			Code = [[loadstring(game:HttpGet("https://pastefy.app/YoZocJ8O/raw"))()]]
		},
		{
			Name = "Steal Egg",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"))()]]
		},
		{
			Name = "Spawner Pet",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/chocolascript-glitch/Chocola-Pet-Spawner-steal-an-egg/refs/heads/main/script.lua"))()]]
		},
		{
			Name = "RealKid Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"))()]]
		},
		{
			Name = "Lennon Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/lennonxscripts/lennonfarm/refs/heads/main/farmv1.lua"))()]]
		},
		{
			Name = "Miranda v2",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/mirandaafk.lua"))()]]
		},
		{
			Name = "Miranda",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"))()]]
		},
		{
			Name = "Chilli Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()]]
		},
		{
			Name = "Foxname Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Fn-stealanegg.lua"))()]]
		},
		{
			Name = "Sena Hub",
			Code = [[loadstring(game:HttpGet("https://senahub.xyz/raw/loader"))()]]
		},
		{
			Name = "Kira Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/LSSOPS/OpenSource/refs/heads/main/KiraHub_Steal_An_Egg.lua"))()]]
		},
		{
			Name = "Zeroin",
			Code = [[loadstring(game:HttpGet("https://zeroinhub.com/api/script"))()]]
		},
		{
			Name = "ZERO POINT HUB",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/JaxRol/ZeroPoint/refs/heads/main/KeySystem"))()]]
		},
		{
			Name = "ZK Hub",
			Key = true,
			Code = [[
_G.Config = {
	ApiKey = "ZKCOMMUNITYcfdb742a751aad57d79b375ea6c7cbc7"
}
loadstring(game:HttpGet("https://zkcommunity.cloud/loader.lua"))()
]]
		},
		{
			Name = "SAIOPS HUB",
			Code = [[loadstring(game:HttpGet("https://api.saiops.cc/scripts/Steal-An-Egg-Script.lua"))()]]
		},
		{
			Name = "AJJANS HUB",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/virtuososvisualedits-prog/Ww/refs/heads/main/final-obfuscated.lua"))()]]
		},
		{
			Name = "LUMIN HUB",
			Code = [[loadstring(game:HttpGet("http://luminon.top/loader.lua"))()]]
		},
		{
			Name = "Fake Admin",
			Key = true,
			Code = [[loadstring(game:HttpGet("https://pastefy.app/t06eyyrw/raw"))()]]
		}
	},

	["Blox Fruit"] = {
		{
			Name = "Red Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Redz/refs/heads/main/Redz/script.luau"))()]]
		},
		{
			Name = "Night Hub",
			Code = [[
repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-NightMystic/Bloxfruits/refs/heads/main/Script.lua"))()
]]
		},
		{
			Name = "Gravity Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()]]
		},
		{
			Name = "Xynapse Hub",
			Code = [[loadstring(game:HttpGet("https://pastebin.com/raw/uECLqG3j", true))()]]
		},
		{
			Name = "Zee Hub",
			Code = [[loadstring(game:HttpGet("https://link.trwxz.com/LS-Zee-Hub-VIP"))()]]
		},
		{
			Name = "Quantum Hub",
			Code = [[loadstring(game:HttpGet("https://pastebin.com/raw/r5h2r57F"))()]]
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
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/main/AnDepZaiHubBeta.lua"))()]]
		},
		{
			Name = "OMG Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()]]
		},
		{
			Name = "Annie Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/1st-Mars/Annie/main/1st.lua"))()]]
		},
		{
			Name = "Nero Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/NeroHubClub/AutoMythicFruitFinder/refs/heads/main/NeroHubFruitFinder"))()]]
		},
		{
			Name = "Teddy Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub.lua"))()]]
		},
		{
			Name = "Zenith Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/LookP/Roblox/refs/heads/main/ZenithHUB%20ZC%20Rivals"))()]]
		},
		{
			Name = "Speed Hub X",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()]]
		},
		{
			Name = "HoHo Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()]]
		},
		{
			Name = "Banana Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Banana/refs/heads/main/Banana/script.luau"))()]]
		}
	},

	["Blade Ball"] = {
		{
			Name = "KAZZ Hub",
			Code = [[loadstring(game:HttpGet("https://api.jnkie.com/api/v1/loaders/public/353accd2d41a5a30c879705a8ff47926fab2c8b7d7baf34d31c0522b8c6c0a41/download"))()]]
		},
		{
			Name = "Dryx Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/Doortthemort/676/refs/heads/main/Main.lua"))()]]
		},
		{
			Name = "Arceney Hub",
			Code = [[loadstring(game:HttpGet("https://arceney.win/cdn/loader.luau?v=scrb"))()]]
		},
		{
			Name = "Wings Hub",
			Key = true,
			Code = [[loadstring(game:HttpGet("https://wings.ac/loader"))()]]
		},
		{
			Name = "Argon Hub",
			Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/luwriy/jwhub/refs/heads/main/loader"))()]]
		}
	}
}

--==================================================
-- MAIN
--==================================================

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.fromOffset(600,340)
Main.Position = UDim2.new(0.5,-300,0.5,-170)
Main.BackgroundColor3 = C.Main
Main.BackgroundTransparency = 0.10
Main.BorderSizePixel = 0
Main.ZIndex = 10
Main.Parent = Gui

Corner(Main,16)
Stroke(Main,Color3.fromRGB(48,49,55),1.2,0.05)

--==================================================
-- HEADER
--==================================================

local Header = Instance.new("Frame")
Header.Size = UDim2.new(1,0,0,58)
Header.BackgroundColor3 = Color3.fromRGB(9,10,13)
Header.BackgroundTransparency = 0.03
Header.BorderSizePixel = 0
Header.ZIndex = 20
Header.Parent = Main

Corner(Header,16)

local HeaderFix = Instance.new("Frame")
HeaderFix.Size = UDim2.new(1,0,0,15)
HeaderFix.Position = UDim2.new(0,0,1,-15)
HeaderFix.BackgroundColor3 = Color3.fromRGB(9,10,13)
HeaderFix.BorderSizePixel = 0
HeaderFix.ZIndex = 20
HeaderFix.Parent = Header

--==================================================
-- LOGO
--==================================================

local Logo = Instance.new("Frame")
Logo.Size = UDim2.fromOffset(36,36)
Logo.Position = UDim2.fromOffset(12,11)
Logo.BackgroundColor3 = Color3.fromRGB(24,25,29)
Logo.BorderSizePixel = 0
Logo.ZIndex = 22
Logo.Parent = Header

Corner(Logo,11)
Stroke(Logo,C.Dark,1)

local LogoText = Label(Logo,"Q",18,C.White,Enum.Font.GothamBold)
LogoText.Size = UDim2.fromScale(1,1)
LogoText.TextXAlignment = Enum.TextXAlignment.Center
LogoText.ZIndex = 23

local Title = Label(
	Header,
	"QUOC ANH MENU",
	16,
	C.White,
	Enum.Font.GothamBold
)

Title.Position = UDim2.fromOffset(57,7)
Title.Size = UDim2.fromOffset(210,23)
Title.ZIndex = 22

local Subtitle = Label(
	Header,
	"BLACK EDITION  •  V5.1",
	9,
	C.Gray,
	Enum.Font.GothamMedium
)

Subtitle.Position = UDim2.fromOffset(58,29)
Subtitle.Size = UDim2.fromOffset(210,18)
Subtitle.ZIndex = 22

--==================================================
-- SEARCH
--==================================================

local SearchBox = Instance.new("Frame")
SearchBox.Size = UDim2.fromOffset(170,34)
SearchBox.Position = UDim2.new(1,-207,0,12)
SearchBox.BackgroundColor3 = Color3.fromRGB(18,19,23)
SearchBox.BorderSizePixel = 0
SearchBox.ZIndex = 25
SearchBox.Parent = Header

Corner(SearchBox,11)
Stroke(SearchBox,C.Dark,1)

local SearchIcon = Label(SearchBox,"⌕",20,C.Light,Enum.Font.Gotham)
SearchIcon.Size = UDim2.fromOffset(32,34)
SearchIcon.Position = UDim2.fromOffset(2,0)
SearchIcon.TextXAlignment = Enum.TextXAlignment.Center
SearchIcon.ZIndex = 26

local Search = Instance.new("TextBox")
Search.Size = UDim2.new(1,-38,1,0)
Search.Position = UDim2.fromOffset(37,0)
Search.BackgroundTransparency = 1
Search.Text = ""
Search.PlaceholderText = "Search..."
Search.PlaceholderColor3 = C.Gray
Search.TextColor3 = C.White
Search.TextSize = 11
Search.Font = Enum.Font.Gotham
Search.ClearTextOnFocus = false
Search.ZIndex = 26
Search.Parent = SearchBox

--==================================================
-- CLOSE
--==================================================

local Close = Instance.new("TextButton")
Close.Size = UDim2.fromOffset(28,28)
Close.Position = UDim2.new(1,-34,0,15)
Close.BackgroundColor3 = Color3.fromRGB(24,25,29)
Close.Text = "×"
Close.TextColor3 = C.Gray
Close.TextSize = 19
Close.Font = Enum.Font.GothamMedium
Close.BorderSizePixel = 0
Close.AutoButtonColor = false
Close.ZIndex = 30
Close.Parent = Header

Corner(Close,9)

--==================================================
-- SIDEBAR
--==================================================

local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.new(0,145,1,-58)
Sidebar.Position = UDim2.fromOffset(0,58)
Sidebar.BackgroundColor3 = Color3.fromRGB(9,10,12)
Sidebar.BackgroundTransparency = 0.02
Sidebar.BorderSizePixel = 0
Sidebar.ZIndex = 15
Sidebar.Parent = Main

local SidePad = Instance.new("UIPadding")
SidePad.PaddingTop = UDim.new(0,12)
SidePad.PaddingLeft = UDim.new(0,8)
SidePad.PaddingRight = UDim.new(0,8)
SidePad.Parent = Sidebar

local SideLayout = Instance.new("UIListLayout")
SideLayout.Padding = UDim.new(0,6)
SideLayout.SortOrder = Enum.SortOrder.LayoutOrder
SideLayout.Parent = Sidebar

--==================================================
-- CONTENT
--==================================================

local Content = Instance.new("Frame")
Content.Size = UDim2.new(1,-145,1,-58)
Content.Position = UDim2.fromOffset(145,58)
Content.BackgroundTransparency = 1
Content.BorderSizePixel = 0
Content.ZIndex = 15
Content.Parent = Main

local PageTitle = Label(Content,"HOME",18,C.White,Enum.Font.GothamBold)
PageTitle.Position = UDim2.fromOffset(17,10)
PageTitle.Size = UDim2.new(1,-34,25,0)
PageTitle.ZIndex = 18

local PageSub = Label(Content,"Welcome to Quoc Anh Menu",9,C.Gray,Enum.Font.Gotham)
PageSub.Position = UDim2.fromOffset(18,34)
PageSub.Size = UDim2.new(1,-36,20,0)
PageSub.ZIndex = 18

--==================================================
-- HOME PAGE
--==================================================

local HomePage = Instance.new("Frame")
HomePage.Size = UDim2.new(1,-28,1,-66)
HomePage.Position = UDim2.fromOffset(14,61)
HomePage.BackgroundTransparency = 1
HomePage.ZIndex = 17
HomePage.Parent = Content

local Welcome = Instance.new("Frame")
Welcome.Size = UDim2.new(1,0,0,112)
Welcome.BackgroundColor3 = Color3.fromRGB(15,16,19)
Welcome.BackgroundTransparency = 0.03
Welcome.BorderSizePixel = 0
Welcome.ZIndex = 18
Welcome.Parent = HomePage

Corner(Welcome,14)
Stroke(Welcome,Color3.fromRGB(43,44,49),1)

local Crown = Label(Welcome,"👑",23,C.White,Enum.Font.GothamBold)
Crown.Size = UDim2.fromOffset(38,38)
Crown.Position = UDim2.fromOffset(13,10)
Crown.TextXAlignment = Enum.TextXAlignment.Center
Crown.ZIndex = 21

local WelcomeTitle = Label(
	Welcome,
	"Xin chào, tôi là OWNER",
	15,
	C.White,
	Enum.Font.GothamBold
)

WelcomeTitle.Position = UDim2.fromOffset(52,8)
WelcomeTitle.Size = UDim2.new(1,-64,24,0)
WelcomeTitle.ZIndex = 21

local WelcomeText = Label(
	Welcome,
	"Script hiện chưa hoàn thiện, chúng tôi đang cố update.\nĐây là 1 bản script tổng hợp các script No Key khác.\nNếu script nào có Key thì tôi đã ghi chữ [KEY] nhỏ ở sau.",
	10,
	C.Light,
	Enum.Font.Gotham
)

WelcomeText.Position = UDim2.fromOffset(14,43)
WelcomeText.Size = UDim2.new(1,-28,62,0)
WelcomeText.TextWrapped = true
WelcomeText.TextYAlignment = Enum.TextYAlignment.Top
WelcomeText.ZIndex = 21

--==================================================
-- STATS
--==================================================

local Stats = Instance.new("Frame")
Stats.Size = UDim2.new(1,0,0,58)
Stats.Position = UDim2.fromOffset(0,120)
Stats.BackgroundTransparency = 1
Stats.ZIndex = 18
Stats.Parent = HomePage

local StatsLayout = Instance.new("UIListLayout")
StatsLayout.FillDirection = Enum.FillDirection.Horizontal
StatsLayout.Padding = UDim.new(0,7)
StatsLayout.Parent = Stats

local function MakeStat(name,value)
	local Card = Instance.new("Frame")
	Card.Size = UDim2.new(0.333,-5,1,0)
	Card.BackgroundColor3 = Color3.fromRGB(15,16,19)
	Card.BorderSizePixel = 0
	Card.ZIndex = 19
	Card.Parent = Stats

	Corner(Card,11)
	Stroke(Card,Color3.fromRGB(40,41,46),1)

	local Number = Label(Card,tostring(value),17,C.White,Enum.Font.GothamBold)
	Number.Position = UDim2.fromOffset(10,5)
	Number.Size = UDim2.new(1,-20,23,0)
	Number.ZIndex = 21

	local Name = Label(Card,name,8,C.Gray,Enum.Font.GothamMedium)
	Name.Position = UDim2.fromOffset(10,29)
	Name.Size = UDim2.new(1,-20,18,0)
	Name.ZIndex = 21
end

MakeStat("STEAL A EGG",#Scripts["Steal a Egg"])
MakeStat("BLOX FRUIT",#Scripts["Blox Fruit"])
MakeStat("BLADE BALL",#Scripts["Blade Ball"])

--==================================================
-- SIDEBAR BUTTONS
--==================================================

local SidebarButtons = {}

local function CreateSide(name,icon,order)
	local Button = Instance.new("TextButton")
	Button.Name = name
	Button.Size = UDim2.new(1,0,0,48)
	Button.BackgroundColor3 = Color3.fromRGB(12,13,16)
	Button.BackgroundTransparency = 0.1
	Button.BorderSizePixel = 0
	Button.Text = ""
	Button.AutoButtonColor = false
	Button.LayoutOrder = order
	Button.ZIndex = 20
	Button.Parent = Sidebar

	Corner(Button,11)

	local Circle = Instance.new("Frame")
	Circle.Size = UDim2.fromOffset(32,32)
	Circle.Position = UDim2.fromOffset(7,8)
	Circle.BackgroundColor3 = Color3.fromRGB(24,25,29)
	Circle.BorderSizePixel = 0
	Circle.ZIndex = 22
	Circle.Parent = Button

	Corner(Circle,20)

	local Icon = Label(Circle,icon,14,C.Light,Enum.Font.GothamBold)
	Icon.Size = UDim2.fromScale(1,1)
	Icon.TextXAlignment = Enum.TextXAlignment.Center
	Icon.ZIndex = 23

	local Text = Label(Button,name,10,C.Gray,Enum.Font.GothamMedium)
	Text.Position = UDim2.fromOffset(47,0)
	Text.Size = UDim2.new(1,-52,48,0)
	Text.ZIndex = 22

	local Bar = Instance.new("Frame")
	Bar.Size = UDim2.fromOffset(3,22)
	Bar.Position = UDim2.new(1,-4,0.5,-11)
	Bar.BackgroundColor3 = C.White
	Bar.BorderSizePixel = 0
	Bar.Visible = false
	Bar.ZIndex = 24
	Bar.Parent = Button

	Corner(Bar,4)

	SidebarButtons[name] = {
		Button = Button,
		Circle = Circle,
		Icon = Icon,
		Text = Text,
		Bar = Bar
	}

	Button.MouseEnter:Connect(function()
		if not Button:GetAttribute("Selected") then
			Tween(Button,0.15,{BackgroundColor3=C.Hover}):Play()
		end
	end)

	Button.MouseLeave:Connect(function()
		if not Button:GetAttribute("Selected") then
			Tween(Button,0.15,{BackgroundColor3=Color3.fromRGB(12,13,16)}):Play()
		end
	end)

	return Button
end

CreateSide("Home","⌂",1)
CreateSide("Steal a Egg","🥚",2)
CreateSide("Blox Fruit","B",3)
CreateSide("Blade Ball","⚔",4)
--==================================================
-- QUOC ANH MENU V5.1 FIXED
-- PART 2/3
--==================================================

local CurrentCategory = "Home"
local Cards = {}

--==================================================
-- SCRIPT PAGE
--==================================================

local ScriptPage = Instance.new("Frame")
ScriptPage.Size = UDim2.new(1,-28,1,-66)
ScriptPage.Position = UDim2.fromOffset(14,61)
ScriptPage.BackgroundTransparency = 1
ScriptPage.Visible = false
ScriptPage.ZIndex = 17
ScriptPage.Parent = Content

local Scroll = Instance.new("ScrollingFrame")
Scroll.Name = "ScriptScroll"
Scroll.Size = UDim2.new(1,0,1,0)
Scroll.BackgroundTransparency = 1
Scroll.BorderSizePixel = 0
Scroll.ScrollBarThickness = 3
Scroll.ScrollBarImageColor3 = Color3.fromRGB(100,101,108)
Scroll.ScrollBarImageTransparency = 0.2
Scroll.CanvasSize = UDim2.new(0,0,0,0)
Scroll.ZIndex = 18
Scroll.Parent = ScriptPage

local Grid = Instance.new("UIGridLayout")
Grid.CellSize = UDim2.new(0.5,-5,0,57)
Grid.CellPadding = UDim2.fromOffset(7,7)
Grid.SortOrder = Enum.SortOrder.LayoutOrder
Grid.Parent = Scroll

Grid:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	Scroll.CanvasSize = UDim2.fromOffset(
		0,
		Grid.AbsoluteContentSize.Y + 15
	)
end)

--==================================================
-- EXECUTE
--==================================================

local function RunScript(item)
	task.spawn(function()
		local ok,err = pcall(function()
			local fn = loadstring(item.Code)

			if not fn then
				error("loadstring không khả dụng")
			end

			fn()
		end)

		if not ok then
			warn("[QuocAnhMenu]",err)
		end
	end)
end

--==================================================
-- CREATE CARD
--==================================================

local function CreateCard(item,index,category)
	local Card = Instance.new("Frame")
	Card.Name = "ScriptCard_"..index
	Card.BackgroundColor3 = C.Card
	Card.BackgroundTransparency = 0.02
	Card.BorderSizePixel = 0
	Card.LayoutOrder = index
	Card.ZIndex = 20
	Card.Parent = Scroll

	Corner(Card,11)
	Stroke(Card,Color3.fromRGB(43,44,49),1)

	local Icon = Instance.new("Frame")
	Icon.Size = UDim2.fromOffset(34,34)
	Icon.Position = UDim2.fromOffset(8,11)
	Icon.BackgroundColor3 = Color3.fromRGB(28,29,34)
	Icon.BorderSizePixel = 0
	Icon.ZIndex = 22
	Icon.Parent = Card

	Corner(Icon,18)

	local Letter = Label(
		Icon,
		string.sub(item.Name,1,1):upper(),
		12,
		C.White,
		Enum.Font.GothamBold
	)

	Letter.Size = UDim2.fromScale(1,1)
	Letter.TextXAlignment = Enum.TextXAlignment.Center
	Letter.ZIndex = 23

	-- NAME
	local Name = Label(
		Card,
		item.Name,
		10,
		C.White,
		Enum.Font.GothamBold
	)

	Name.Position = UDim2.fromOffset(49,6)
	Name.Size = UDim2.new(1,-93,23,0)
	Name.TextTruncate = Enum.TextTruncate.AtEnd
	Name.ZIndex = 23

	-- CATEGORY
	local Cat = Label(
		Card,
		category:upper(),
		7,
		C.Gray,
		Enum.Font.GothamMedium
	)

	Cat.Position = UDim2.fromOffset(50,28)
	Cat.Size = UDim2.new(1,-95,16,0)
	Cat.ZIndex = 23

	-- KEY LABEL
	if item.Key then
		local Key = Label(
			Card,
			"[KEY]",
			7,
			Color3.fromRGB(190,190,195),
			Enum.Font.GothamBold
		)

		Key.Position = UDim2.new(1,-84,6,0)
		Key.Size = UDim2.fromOffset(38,16)
		Key.TextXAlignment = Enum.TextXAlignment.Right
		Key.ZIndex = 24
	end

	-- RUN BUTTON
	local Run = Instance.new("TextButton")
	Run.Size = UDim2.fromOffset(31,31)
	Run.Position = UDim2.new(1,-39,0.5,-15)
	Run.BackgroundColor3 = Color3.fromRGB(30,31,36)
	Run.BorderSizePixel = 0
	Run.Text = "▶"
	Run.TextColor3 = C.White
	Run.TextSize = 10
	Run.Font = Enum.Font.GothamBold
	Run.AutoButtonColor = false
	Run.ZIndex = 25
	Run.Parent = Card

	Corner(Run,16)
	Stroke(Run,Color3.fromRGB(65,66,72),1)

	Run.MouseEnter:Connect(function()
		Tween(Run,0.12,{
			BackgroundColor3=Color3.fromRGB(52,53,59)
		}):Play()

		Tween(Card,0.12,{
			BackgroundColor3=Color3.fromRGB(24,25,29)
		}):Play()
	end)

	Run.MouseLeave:Connect(function()
		Tween(Run,0.12,{
			BackgroundColor3=Color3.fromRGB(30,31,36)
		}):Play()

		Tween(Card,0.12,{
			BackgroundColor3=C.Card
		}):Play()
	end)

	Run.MouseButton1Click:Connect(function()
		RunScript(item)
	end)

	table.insert(Cards,{
		Frame=Card,
		Name=item.Name
	})
end

--==================================================
-- CLEAR
--==================================================

local function ClearCards()
	for _,data in ipairs(Cards) do
		if data.Frame then
			data.Frame:Destroy()
		end
	end

	table.clear(Cards)
end

--==================================================
-- SELECT SIDEBAR
--==================================================

local function SelectSide(selected)
	for name,data in pairs(SidebarButtons) do
		local active = name == selected

		data.Button:SetAttribute("Selected",active)
		data.Bar.Visible = active

		if active then
			Tween(data.Button,0.16,{
				BackgroundColor3=Color3.fromRGB(25,26,30)
			}):Play()

			Tween(data.Circle,0.16,{
				BackgroundColor3=Color3.fromRGB(39,40,46)
			}):Play()

			Tween(data.Text,0.16,{
				TextColor3=C.White
			}):Play()

			Tween(data.Icon,0.16,{
				TextColor3=C.White
			}):Play()
		else
			Tween(data.Button,0.16,{
				BackgroundColor3=Color3.fromRGB(12,13,16)
			}):Play()

			Tween(data.Circle,0.16,{
				BackgroundColor3=Color3.fromRGB(24,25,29)
			}):Play()

			Tween(data.Text,0.16,{
				TextColor3=C.Gray
			}):Play()

			Tween(data.Icon,0.16,{
				TextColor3=C.Light
			}):Play()
		end
	end
end

--==================================================
-- OPEN CATEGORY
--==================================================

local function OpenCategory(category)
	CurrentCategory = category

	HomePage.Visible = false
	ScriptPage.Visible = true

	PageTitle.Text = string.upper(category)
	PageSub.Text = tostring(#Scripts[category]).." scripts available"

	Search.Text = ""

	ClearCards()

	for i,item in ipairs(Scripts[category]) do
		CreateCard(item,i,category)
	end

	SelectSide(category)

	Scroll.CanvasPosition = Vector2.new(0,0)
end

--==================================================
-- HOME
--==================================================

local function OpenHome()
	CurrentCategory = "Home"

	HomePage.Visible = true
	ScriptPage.Visible = false

	PageTitle.Text = "HOME"
	PageSub.Text = "Welcome to Quoc Anh Menu"

	Search.Text = ""

	SelectSide("Home")
end

--==================================================
-- BUTTON CONNECTIONS
--==================================================

SidebarButtons["Home"].Button.MouseButton1Click:Connect(function()
	OpenHome()
end)

SidebarButtons["Steal a Egg"].Button.MouseButton1Click:Connect(function()
	OpenCategory("Steal a Egg")
end)

SidebarButtons["Blox Fruit"].Button.MouseButton1Click:Connect(function()
	OpenCategory("Blox Fruit")
end)

SidebarButtons["Blade Ball"].Button.MouseButton1Click:Connect(function()
	OpenCategory("Blade Ball")
end)

--==================================================
-- SEARCH
--==================================================

Search:GetPropertyChangedSignal("Text"):Connect(function()
	if CurrentCategory == "Home" then
		return
	end

	local query = string.lower(Search.Text)

	for _,data in ipairs(Cards) do
		local name = string.lower(data.Name)

		data.Frame.Visible =
			query == ""
			or string.find(name,query,1,true) ~= nil
	end
end)

--==================================================
-- INITIAL
--==================================================

OpenHome()
--==================================================
-- QUOC ANH MENU V5.1 FIXED
-- PART 3/3
--==================================================

--==================================================
-- DRAG MAIN
--==================================================

local function MakeDraggable(object,handle)
	local dragging = false
	local dragStart
	local startPos

	handle.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch then

			dragging = true
			dragStart = input.Position
			startPos = object.Position

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
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		end
	end)
end

MakeDraggable(Main,Header)

--==================================================
-- SMALL ROUND BUTTON
--==================================================

local CrownButton = Instance.new("TextButton")
CrownButton.Name = "CrownButton"

-- NHỎ: 40x40
CrownButton.Size = UDim2.fromOffset(40,40)

CrownButton.Position = UDim2.new(1,-55,1,-55)
CrownButton.BackgroundColor3 = Color3.fromRGB(8,8,10)
CrownButton.BackgroundTransparency = 0.04
CrownButton.BorderSizePixel = 0
CrownButton.Text = "👑"
CrownButton.TextSize = 18
CrownButton.TextColor3 = Color3.fromRGB(230,230,235)
CrownButton.Font = Enum.Font.GothamBold
CrownButton.AutoButtonColor = false
CrownButton.ZIndex = 100
CrownButton.Parent = Gui

Corner(CrownButton,30)

local CrownStroke = Stroke(
	CrownButton,
	Color3.fromRGB(80,81,88),
	1.3,
	0
)

--==================================================
-- CROWN HOVER
--==================================================

CrownButton.MouseEnter:Connect(function()
	Tween(CrownButton,0.15,{
		BackgroundColor3=Color3.fromRGB(30,31,36),
		TextColor3=C.White
	}):Play()

	Tween(CrownStroke,0.15,{
		Color=Color3.fromRGB(130,131,138)
	}):Play()
end)

CrownButton.MouseLeave:Connect(function()
	Tween(CrownButton,0.15,{
		BackgroundColor3=Color3.fromRGB(8,8,10),
		TextColor3=Color3.fromRGB(230,230,235)
	}):Play()

	Tween(CrownStroke,0.15,{
		Color=Color3.fromRGB(80,81,88)
	}):Play()
end)

--==================================================
-- OPEN / CLOSE
--==================================================

local Open = true
local OriginalPosition = Main.Position

local function CloseMenu()
	if not Open then return end

	Open = false

	Tween(Main,0.18,{
		BackgroundTransparency=0.65,
		Position=UDim2.new(
			Main.Position.X.Scale,
			Main.Position.X.Offset,
			Main.Position.Y.Scale,
			Main.Position.Y.Offset+10
		)
	}):Play()

	task.delay(0.18,function()
		if not Open then
			Main.Visible = false
		end
	end)
end

local function OpenMenu()
	if Open then return end

	Open = true
	Main.Visible = true

	Main.Position = UDim2.new(
		OriginalPosition.X.Scale,
		OriginalPosition.X.Offset,
		OriginalPosition.Y.Scale,
		OriginalPosition.Y.Offset+10
	)

	Main.BackgroundTransparency = 0.65

	Tween(Main,0.22,{
		Position=OriginalPosition,
		BackgroundTransparency=0.10
	}):Play()
end

CrownButton.MouseButton1Click:Connect(function()
	if Open then
		CloseMenu()
	else
		OpenMenu()
	end
end)

Close.MouseButton1Click:Connect(function()
	CloseMenu()
end)

--==================================================
-- DRAG CROWN
--==================================================

local CrownDragging = false
local CrownStart
local CrownOrigin

CrownButton.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then

		CrownDragging = true
		CrownStart = input.Position
		CrownOrigin = CrownButton.Position

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

	if input.UserInputType == Enum.UserInputType.MouseMovement
		or input.UserInputType == Enum.UserInputType.Touch then

		local delta = input.Position - CrownStart

		CrownButton.Position = UDim2.new(
			CrownOrigin.X.Scale,
			CrownOrigin.X.Offset+delta.X,
			CrownOrigin.Y.Scale,
			CrownOrigin.Y.Offset+delta.Y
		)
	end
end)

--==================================================
-- OPEN ANIMATION
--==================================================

Main.BackgroundTransparency = 0.7

Tween(Main,0.3,{
	BackgroundTransparency=0.10
}):Play()

--==================================================
-- FINAL
--==================================================

print("================================")
print("   QUOC ANH MENU V5.1 FIXED")
print("   BLACK GLASS EDITION")
print("   ALL UI LOADED")
print("================================")
