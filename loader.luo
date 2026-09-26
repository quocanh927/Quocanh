--// QUOC ANH MENU V5.1
--// PART 1/3
--// Black Glass Edition

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local LocalPlayer = Players.LocalPlayer

--==================================================
-- CONFIG
--==================================================

local GUI_NAME = "QuocAnhMenu_V51"

local Colors = {
	Main = Color3.fromRGB(7, 8, 10),
	Panel = Color3.fromRGB(12, 13, 16),
	Panel2 = Color3.fromRGB(16, 17, 20),
	Card = Color3.fromRGB(19, 20, 24),

	White = Color3.fromRGB(245, 245, 247),
	Light = Color3.fromRGB(210, 211, 216),
	Gray = Color3.fromRGB(145, 147, 154),
	DarkGray = Color3.fromRGB(75, 77, 84),

	Black = Color3.fromRGB(0, 0, 0),

	Accent = Color3.fromRGB(210, 210, 215),
	AccentDark = Color3.fromRGB(45, 46, 52),

	Success = Color3.fromRGB(150, 150, 155),
	Key = Color3.fromRGB(185, 185, 190)
}

--==================================================
-- REMOVE OLD GUI
--==================================================

pcall(function()
	local old = CoreGui:FindFirstChild(GUI_NAME)
	if old then
		old:Destroy()
	end
end)

pcall(function()
	local old = LocalPlayer.PlayerGui:FindFirstChild(GUI_NAME)
	if old then
		old:Destroy()
	end
end)

--==================================================
-- SCREEN GUI
--==================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = GUI_NAME
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
ScreenGui.DisplayOrder = 50

pcall(function()
	ScreenGui.Parent = CoreGui
end)

if not ScreenGui.Parent then
	ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end

--==================================================
-- SCALE
--==================================================

local Scale = Instance.new("UIScale")
Scale.Scale = 0.88
Scale.Parent = ScreenGui

local function UpdateScale()
	local camera = workspace.CurrentCamera
	if not camera then
		return
	end

	local viewport = camera.ViewportSize
	local width = viewport.X

	if width < 420 then
		Scale.Scale = 0.68
	elseif width < 520 then
		Scale.Scale = 0.76
	elseif width < 700 then
		Scale.Scale = 0.84
	else
		Scale.Scale = 0.92
	end
end

UpdateScale()

if workspace.CurrentCamera then
	workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateScale)
end

--==================================================
-- HELPERS
--==================================================

local function Corner(parent, radius)
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, radius)
	c.Parent = parent
	return c
end

local function Stroke(parent, color, thickness, transparency)
	local s = Instance.new("UIStroke")
	s.Color = color
	s.Thickness = thickness or 1
	s.Transparency = transparency or 0
	s.Parent = parent
	return s
end

local function Padding(parent, left, right, top, bottom)
	local p = Instance.new("UIPadding")
	p.PaddingLeft = UDim.new(0, left or 0)
	p.PaddingRight = UDim.new(0, right or 0)
	p.PaddingTop = UDim.new(0, top or 0)
	p.PaddingBottom = UDim.new(0, bottom or 0)
	p.Parent = parent
	return p
end

local function Tween(object, time, properties)
	return TweenService:Create(
		object,
		TweenInfo.new(time, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
		properties
	)
end

local function CreateText(parent, text, size, color, font)
	local label = Instance.new("TextLabel")
	label.BackgroundTransparency = 1
	label.Text = text
	label.TextColor3 = color or Colors.White
	label.TextSize = size or 14
	label.Font = font or Enum.Font.Gotham
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.TextYAlignment = Enum.TextYAlignment.Center
	label.Parent = parent
	return label
end

--==================================================
-- SCRIPT DATABASE
--==================================================

local Scripts = {

	["Steal a Egg"] = {

		{
			Name = "Sever Hop",
			Code = [[
loadstring(game:HttpGet("https://pastefy.app/YoZocJ8O/raw"))()
]]
		},

		{
			Name = "Steal Egg",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"))()
]]
		},

		{
			Name = "Spawner Pet",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/chocolascript-glitch/Chocola-Pet-Spawner-steal-an-egg/refs/heads/main/script.lua"))()
]]
		},

		{
			Name = "RealKid Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"))()
]]
		},

		{
			Name = "Lennon Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/lennonxscripts/lennonfarm/refs/heads/main/farmv1.lua"))()
]]
		},

		{
			Name = "Miranda v2",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/mirandaafk.lua"))()
]]
		},

		{
			Name = "Miranda",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/Miranda.lua"))()
]]
		},

		{
			Name = "Chilli Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
]]
		},

		{
			Name = "Foxname Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Fn-stealanegg.lua"))()
]]
		},

		{
			Name = "Sena Hub",
			Code = [[
loadstring(game:HttpGet("https://senahub.xyz/raw/loader"))()
]]
		},

		{
			Name = "Kira Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/LSSOPS/OpenSource/refs/heads/main/KiraHub_Steal_An_Egg.lua"))()
]]
		},

		{
			Name = "Zeroin",
			Code = [[
loadstring(game:HttpGet("https://zeroinhub.com/api/script"))()
]]
		},

		{
			Name = "ZERO POINT HUB",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/JaxRol/ZeroPoint/refs/heads/main/KeySystem"))()
]]
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
			Code = [[
loadstring(game:HttpGet("https://api.saiops.cc/scripts/Steal-An-Egg-Script.lua"))()
]]
		},

		{
			Name = "AJJANS HUB",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/virtuososvisualedits-prog/Ww/refs/heads/main/final-obfuscated.lua"))()
]]
		},

		{
			Name = "LUMIN HUB",
			Code = [[
loadstring(game:HttpGet("http://luminon.top/loader.lua"))()
]]
		},

		{
			Name = "Fake Admin",
			Key = true,
			Code = [[
loadstring(game:HttpGet("https://pastefy.app/t06eyyrw/raw"))()
]]
		}
	},

	["Blox Fruit"] = {

		{
			Name = "Red Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Redz/refs/heads/main/Redz/script.luau"))()
]]
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
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
]]
		},

		{
			Name = "Xynapse Hub",
			Code = [[
loadstring(game:HttpGet("https://pastebin.com/raw/uECLqG3j", true))()
]]
		},

		{
			Name = "Zee Hub",
			Code = [[
loadstring(game:HttpGet("https://link.trwxz.com/LS-Zee-Hub-VIP"))()
]]
		},

		{
			Name = "Quantum Hub",
			Code = [[
loadstring(game:HttpGet("https://pastebin.com/raw/r5h2r57F"))()
]]
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
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/main/AnDepZaiHubBeta.lua"))()
]]
		},

		{
			Name = "OMG Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
]]
		},

		{
			Name = "Annie Hub",
			Code = [[
loadstring(game:HttpGet('https://raw.githubusercontent.com/1st-Mars/Annie/main/1st.lua'))()
]]
		},

		{
			Name = "Nero Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/NeroHubClub/AutoMythicFruitFinder/refs/heads/main/NeroHubFruitFinder"))()
]]
		},

		{
			Name = "Teddy Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub.lua"))()
]]
		},

		{
			Name = "Zenith Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/LookP/Roblox/refs/heads/main/ZenithHUB%20ZC%20Rivals"))()
]]
		},

		{
			Name = "Speed Hub X",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
]]
		},

		{
			Name = "HoHo Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
]]
		},

		{
			Name = "Banana Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Banana/refs/heads/main/Banana/script.luau"))()
]]
		}
	},

	["Blade Ball"] = {

		{
			Name = "KAZZ Hub",
			Code = [[
loadstring(game:HttpGet("https://api.jnkie.com/api/v1/loaders/public/353accd2d41a5a30c879705a8ff47926fab2c8b7d7baf34d31c0522b8c6c0a41/download"))()
]]
		},

		{
			Name = "Dryx Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Doortthemort/676/refs/heads/main/Main.lua"))()
]]
		},

		{
			Name = "Arceney Hub",
			Code = [[
loadstring(game:HttpGet("https://arceney.win/cdn/loader.luau?v=scrb"))()
]]
		},

		{
			Name = "Wings Hub",
			Key = true,
			Code = [[
loadstring(game:HttpGet("https://wings.ac/loader"))()
]]
		},

		{
			Name = "Argon Hub",
			Code = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/luwriy/jwhub/refs/heads/main/loader"))()
]]
		}
	}
}

--==================================================
-- MAIN WINDOW
--==================================================

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.fromOffset(760, 430)
Main.Position = UDim2.new(0.5, -380, 0.5, -215)
Main.BackgroundColor3 = Colors.Main
Main.BackgroundTransparency = 0.12
Main.BorderSizePixel = 0
Main.ZIndex = 10
Main.Parent = ScreenGui

Corner(Main, 16)
Stroke(Main, Color3.fromRGB(48, 49, 55), 1.2, 0.15)

--==================================================
-- SHADOW
--==================================================

local Shadow = Instance.new("Frame")
Shadow.Name = "Shadow"
Shadow.Size = UDim2.new(1, 14, 1, 14)
Shadow.Position = UDim2.fromOffset(-7, 7)
Shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Shadow.BackgroundTransparency = 0.65
Shadow.BorderSizePixel = 0
Shadow.ZIndex = 8
Shadow.Parent = Main

Corner(Shadow, 18)

Main.ZIndex = 10

--==================================================
-- HEADER
--==================================================

local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1, 0, 0, 64)
Header.BackgroundColor3 = Color3.fromRGB(10, 11, 14)
Header.BackgroundTransparency = 0.08
Header.BorderSizePixel = 0
Header.ZIndex = 20
Header.Parent = Main

Corner(Header, 16)

local HeaderBottom = Instance.new("Frame")
HeaderBottom.Size = UDim2.new(1, 0, 0, 16)
HeaderBottom.Position = UDim2.new(0, 0, 1, -16)
HeaderBottom.BackgroundColor3 = Color3.fromRGB(10, 11, 14)
HeaderBottom.BorderSizePixel = 0
HeaderBottom.ZIndex = 20
HeaderBottom.Parent = Header

--==================================================
-- LOGO
--==================================================

local Logo = Instance.new("Frame")
Logo.Size = UDim2.fromOffset(40, 40)
Logo.Position = UDim2.fromOffset(14, 12)
Logo.BackgroundColor3 = Color3.fromRGB(25, 26, 30)
Logo.BorderSizePixel = 0
Logo.ZIndex = 22
Logo.Parent = Header

Corner(Logo, 12)
Stroke(Logo, Color3.fromRGB(75, 76, 82), 1)

local LogoText = CreateText(
	Logo,
	"Q",
	20,
	Colors.White,
	Enum.Font.GothamBold
)

LogoText.Size = UDim2.fromScale(1, 1)
LogoText.TextXAlignment = Enum.TextXAlignment.Center

--==================================================
-- TITLE
--==================================================

local Title = CreateText(
	Header,
	"QUOC ANH MENU",
	17,
	Colors.White,
	Enum.Font.GothamBold
)

Title.Position = UDim2.fromOffset(64, 8)
Title.Size = UDim2.fromOffset(220, 25)
Title.ZIndex = 22

local Subtitle = CreateText(
	Header,
	"BLACK EDITION  •  V5.1",
	10,
	Colors.Gray,
	Enum.Font.GothamMedium
)

Subtitle.Position = UDim2.fromOffset(65, 32)
Subtitle.Size = UDim2.fromOffset(220, 18)
Subtitle.ZIndex = 22

--==================================================
-- SEARCH
--==================================================

local SearchBox = Instance.new("Frame")
SearchBox.Size = UDim2.fromOffset(210, 38)
SearchBox.Position = UDim2.new(1, -260, 0, 13)
SearchBox.BackgroundColor3 = Color3.fromRGB(18, 19, 23)
SearchBox.BackgroundTransparency = 0.05
SearchBox.BorderSizePixel = 0
SearchBox.ZIndex = 25
SearchBox.Parent = Header

Corner(SearchBox, 12)
Stroke(SearchBox, Color3.fromRGB(48, 49, 55), 1)

local SearchIcon = CreateText(
	SearchBox,
	"⌕",
	22,
	Colors.Light,
	Enum.Font.Gotham
)

SearchIcon.Size = UDim2.fromOffset(35, 38)
SearchIcon.Position = UDim2.fromOffset(3, 0)
SearchIcon.TextXAlignment = Enum.TextXAlignment.Center
SearchIcon.ZIndex = 26

local Search = Instance.new("TextBox")
Search.Size = UDim2.new(1, -43, 1, 0)
Search.Position = UDim2.fromOffset(40, 0)
Search.BackgroundTransparency = 1
Search.Text = ""
Search.PlaceholderText = "Search script..."
Search.PlaceholderColor3 = Colors.Gray
Search.TextColor3 = Colors.White
Search.TextSize = 12
Search.Font = Enum.Font.Gotham
Search.ClearTextOnFocus = false
Search.TextXAlignment = Enum.TextXAlignment.Left
Search.ZIndex = 26
Search.Parent = SearchBox

--==================================================
-- CLOSE
--==================================================

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.fromOffset(32, 32)
CloseButton.Position = UDim2.new(1, -40, 0, 16)
CloseButton.BackgroundColor3 = Color3.fromRGB(25, 26, 30)
CloseButton.Text = "×"
CloseButton.TextColor3 = Colors.Gray
CloseButton.TextSize = 21
CloseButton.Font = Enum.Font.GothamMedium
CloseButton.BorderSizePixel = 0
CloseButton.AutoButtonColor = false
CloseButton.ZIndex = 30
CloseButton.Parent = Header

Corner(CloseButton, 10)

CloseButton.MouseEnter:Connect(function()
	Tween(CloseButton, 0.15, {
		BackgroundColor3 = Color3.fromRGB(40, 41, 46),
		TextColor3 = Colors.White
	}):Play()
end)

CloseButton.MouseLeave:Connect(function()
	Tween(CloseButton, 0.15, {
		BackgroundColor3 = Color3.fromRGB(25, 26, 30),
		TextColor3 = Colors.Gray
	}):Play()
end)

--==================================================
-- SIDEBAR
--==================================================

local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.new(0, 165, 1, -64)
Sidebar.Position = UDim2.fromOffset(0, 64)
Sidebar.BackgroundColor3 = Color3.fromRGB(9, 10, 12)
Sidebar.BackgroundTransparency = 0.04
Sidebar.BorderSizePixel = 0
Sidebar.ZIndex = 15
Sidebar.Parent = Main

local SidebarPadding = Instance.new("UIPadding")
SidebarPadding.PaddingTop = UDim.new(0, 14)
SidebarPadding.PaddingLeft = UDim.new(0, 10)
SidebarPadding.PaddingRight = UDim.new(0, 10)
SidebarPadding.Parent = Sidebar

local SideLayout = Instance.new("UIListLayout")
SideLayout.Padding = UDim.new(0, 7)
SideLayout.SortOrder = Enum.SortOrder.LayoutOrder
SideLayout.Parent = Sidebar

--==================================================
-- CONTENT
--==================================================

local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Size = UDim2.new(1, -165, 1, -64)
Content.Position = UDim2.fromOffset(165, 64)
Content.BackgroundTransparency = 1
Content.BorderSizePixel = 0
Content.ZIndex = 15
Content.Parent = Main

--==================================================
-- PAGE TITLE
--==================================================

local PageTitle = CreateText(
	Content,
	"HOME",
	20,
	Colors.White,
	Enum.Font.GothamBold
)

PageTitle.Position = UDim2.fromOffset(20, 16)
PageTitle.Size = UDim2.new(1, -40, 30, 0)
PageTitle.ZIndex = 18

local PageSub = CreateText(
	Content,
	"Welcome to Quoc Anh Menu",
	11,
	Colors.Gray,
	Enum.Font.Gotham
)

PageSub.Position = UDim2.fromOffset(21, 43)
PageSub.Size = UDim2.new(1, -40, 22, 0)
PageSub.ZIndex = 18

--==================================================
-- PAGES
--==================================================

local HomePage = Instance.new("Frame")
HomePage.Name = "HomePage"
HomePage.Size = UDim2.new(1, -30, 1, -78)
HomePage.Position = UDim2.fromOffset(15, 70)
HomePage.BackgroundTransparency = 1
HomePage.ZIndex = 17
HomePage.Parent = Content

local ScriptPage = Instance.new("Frame")
ScriptPage.Name = "ScriptPage"
ScriptPage.Size = UDim2.new(1, -30, 1, -78)
ScriptPage.Position = UDim2.fromOffset(15, 70)
ScriptPage.BackgroundTransparency = 1
ScriptPage.Visible = false
ScriptPage.ZIndex = 17
ScriptPage.Parent = Content

--==================================================
-- HOME MESSAGE
--==================================================

local WelcomeCard = Instance.new("Frame")
WelcomeCard.Size = UDim2.new(1, 0, 0, 125)
WelcomeCard.BackgroundColor3 = Color3.fromRGB(15, 16, 19)
WelcomeCard.BackgroundTransparency = 0.05
WelcomeCard.BorderSizePixel = 0
WelcomeCard.ZIndex = 18
WelcomeCard.Parent = HomePage

Corner(WelcomeCard, 14)
Stroke(WelcomeCard, Color3.fromRGB(45, 46, 52), 1)

local Crown = CreateText(
	WelcomeCard,
	"👑",
	26,
	Colors.White,
	Enum.Font.GothamBold
)

Crown.Position = UDim2.fromOffset(16, 14)
Crown.Size = UDim2.fromOffset(38, 35)
Crown.TextXAlignment = Enum.TextXAlignment.Center
Crown.ZIndex = 20

local WelcomeTitle = CreateText(
	WelcomeCard,
	"Xin chào, tôi là OWNER",
	17,
	Colors.White,
	Enum.Font.GothamBold
)

WelcomeTitle.Position = UDim2.fromOffset(60, 12)
WelcomeTitle.Size = UDim2.new(1, -75, 30, 0)
WelcomeTitle.ZIndex = 20

local WelcomeText = CreateText(
	WelcomeCard,
	"Script hiện chưa hoàn thiện, chúng tôi đang cố update.\nĐây là 1 bản script tổng hợp các script No Key khác.\nNếu script nào có Key thì tôi đã ghi chữ [KEY] nhỏ ở sau.",
	11,
	Colors.Light,
	Enum.Font.Gotham
)

WelcomeText.Position = UDim2.fromOffset(17, 51)
WelcomeText.Size = UDim2.new(1, -34, 65, 0)
WelcomeText.TextWrapped = true
WelcomeText.TextYAlignment = Enum.TextYAlignment.Top
WelcomeText.ZIndex = 20

--==================================================
-- HOME STATS
--==================================================

local Stats = Instance.new("Frame")
Stats.Size = UDim2.new(1, 0, 0, 70)
Stats.Position = UDim2.fromOffset(0, 135)
Stats.BackgroundTransparency = 1
Stats.ZIndex = 18
Stats.Parent = HomePage

local StatsLayout = Instance.new("UIListLayout")
StatsLayout.FillDirection = Enum.FillDirection.Horizontal
StatsLayout.Padding = UDim.new(0, 8)
StatsLayout.SortOrder = Enum.SortOrder.LayoutOrder
StatsLayout.Parent = Stats

local function StatCard(title, value)
	local card = Instance.new("Frame")
	card.Size = UDim2.new(0.333, -6, 1, 0)
	card.BackgroundColor3 = Color3.fromRGB(15, 16, 19)
	card.BorderSizePixel = 0
	card.ZIndex = 19
	card.Parent = Stats

	Corner(card, 12)
	Stroke(card, Color3.fromRGB(40, 41, 46), 1)

	local v = CreateText(
		card,
		tostring(value),
		21,
		Colors.White,
		Enum.Font.GothamBold
	)

	v.Position = UDim2.fromOffset(12, 8)
	v.Size = UDim2.new(1, -24, 28, 0)
	v.ZIndex = 21

	local t = CreateText(
		card,
		title,
		10,
		Colors.Gray,
		Enum.Font.Gotham
	)

	t.Position = UDim2.fromOffset(12, 38)
	t.Size = UDim2.new(1, -24, 20, 0)
	t.ZIndex = 21

	return card
end

StatCard("STEAL A EGG", #Scripts["Steal a Egg"])
StatCard("BLOX FRUIT", #Scripts["Blox Fruit"])
StatCard("BLADE BALL", #Scripts["Blade Ball"])

--==================================================
-- STATUS
--==================================================

local Status = Instance.new("Frame")
Status.Size = UDim2.new(1, 0, 0, 45)
Status.Position = UDim2.fromOffset(0, 214)
Status.BackgroundColor3 = Color3.fromRGB(13, 14, 17)
Status.BorderSizePixel = 0
Status.ZIndex = 18
Status.Parent = HomePage

Corner(Status, 11)
Stroke(Status, Color3.fromRGB(38, 39, 44), 1)

local StatusDot = Instance.new("Frame")
StatusDot.Size = UDim2.fromOffset(8, 8)
StatusDot.Position = UDim2.fromOffset(14, 18)
StatusDot.BackgroundColor3 = Colors.Success
StatusDot.BorderSizePixel = 0
StatusDot.ZIndex = 21
StatusDot.Parent = Status

Corner(StatusDot, 10)

local StatusText = CreateText(
	Status,
	"Quoc Anh Menu V5.1 • Ready",
	11,
	Colors.Light,
	Enum.Font.GothamMedium
)

StatusText.Position = UDim2.fromOffset(30, 7)
StatusText.Size = UDim2.new(1, -40, 30, 0)
StatusText.ZIndex = 21

--==================================================
-- DRAG FUNCTION
--==================================================

local function MakeDraggable(object, handle)
	local dragging = false
	local dragStart
	local startPosition

	handle = handle or object

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

MakeDraggable(Main, Header)
--==================================================
-- QUOC ANH MENU V5.1
-- PART 2/3
--==================================================

local CurrentCategory = "Home"
local ScriptCards = {}

--==================================================
-- SIDEBAR BUTTON
--==================================================

local SidebarButtons = {}

local function CreateSidebarButton(name, icon, order)
	local Button = Instance.new("TextButton")
	Button.Name = name .. "Button"
	Button.Size = UDim2.new(1, 0, 0, 52)
	Button.BackgroundColor3 = Color3.fromRGB(12, 13, 16)
	Button.BackgroundTransparency = 0.15
	Button.BorderSizePixel = 0
	Button.AutoButtonColor = false
	Button.Text = ""
	Button.LayoutOrder = order
	Button.ZIndex = 20
	Button.Parent = Sidebar

	Corner(Button, 12)

	local IconCircle = Instance.new("Frame")
	IconCircle.Size = UDim2.fromOffset(34, 34)
	IconCircle.Position = UDim2.fromOffset(8, 9)
	IconCircle.BackgroundColor3 = Color3.fromRGB(24, 25, 29)
	IconCircle.BorderSizePixel = 0
	IconCircle.ZIndex = 22
	IconCircle.Parent = Button

	Corner(IconCircle, 20)

	local Icon = CreateText(
		IconCircle,
		icon,
		16,
		Colors.Light,
		Enum.Font.GothamBold
	)

	Icon.Size = UDim2.fromScale(1, 1)
	Icon.TextXAlignment = Enum.TextXAlignment.Center
	Icon.ZIndex = 23

	local Label = CreateText(
		Button,
		name,
		11,
		Colors.Gray,
		Enum.Font.GothamMedium
	)

	Label.Position = UDim2.fromOffset(51, 0)
	Label.Size = UDim2.new(1, -57, 52, 0)
	Label.ZIndex = 22

	local SelectedBar = Instance.new("Frame")
	SelectedBar.Size = UDim2.fromOffset(3, 25)
	SelectedBar.Position = UDim2.new(1, -4, 0.5, -12)
	SelectedBar.BackgroundColor3 = Colors.White
	SelectedBar.BorderSizePixel = 0
	SelectedBar.Visible = false
	SelectedBar.ZIndex = 24
	SelectedBar.Parent = Button

	Corner(SelectedBar, 4)

	Button.MouseEnter:Connect(function()
		if CurrentCategory ~= name then
			Tween(Button, 0.15, {
				BackgroundColor3 = Color3.fromRGB(19, 20, 24)
			}):Play()

			Tween(IconCircle, 0.15, {
				BackgroundColor3 = Color3.fromRGB(32, 33, 38)
			}):Play()
		end
	end)

	Button.MouseLeave:Connect(function()
		if CurrentCategory ~= name then
			Tween(Button, 0.15, {
				BackgroundColor3 = Color3.fromRGB(12, 13, 16)
			}):Play()

			Tween(IconCircle, 0.15, {
				BackgroundColor3 = Color3.fromRGB(24, 25, 29)
			}):Play()
		end
	end)

	SidebarButtons[name] = {
		Button = Button,
		IconCircle = IconCircle,
		Icon = Icon,
		Label = Label,
		SelectedBar = SelectedBar
	}

	return Button
end

CreateSidebarButton("Home", "⌂", 1)
CreateSidebarButton("Steal a Egg", "🥚", 2)
CreateSidebarButton("Blox Fruit", "B", 3)
CreateSidebarButton("Blade Ball", "⚔", 4)

--==================================================
-- SCRIPT PAGE
--==================================================

local ScriptScroll = Instance.new("ScrollingFrame")
ScriptScroll.Name = "ScriptScroll"
ScriptScroll.Size = UDim2.new(1, 0, 1, 0)
ScriptScroll.BackgroundTransparency = 1
ScriptScroll.BorderSizePixel = 0
ScriptScroll.ScrollBarThickness = 3
ScriptScroll.ScrollBarImageColor3 = Color3.fromRGB(90, 91, 97)
ScriptScroll.ScrollBarImageTransparency = 0.25
ScriptScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
ScriptScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScriptScroll.ScrollingDirection = Enum.ScrollingDirection.Y
ScriptScroll.ZIndex = 18
ScriptScroll.Parent = ScriptPage

local ScrollPadding = Instance.new("UIPadding")
ScrollPadding.PaddingTop = UDim.new(0, 2)
ScrollPadding.PaddingBottom = UDim.new(0, 10)
ScrollPadding.PaddingLeft = UDim.new(0, 1)
ScrollPadding.PaddingRight = UDim.new(0, 5)
ScrollPadding.Parent = ScriptScroll

local Grid = Instance.new("UIGridLayout")
Grid.CellSize = UDim2.new(0.5, -5, 0, 62)
Grid.CellPadding = UDim2.fromOffset(8, 8)
Grid.SortOrder = Enum.SortOrder.LayoutOrder
Grid.Parent = ScriptScroll

Grid:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	ScriptScroll.CanvasSize = UDim2.fromOffset(
		0,
		Grid.AbsoluteContentSize.Y + 20
	)
end)

--==================================================
-- EXECUTE
--==================================================

local function ExecuteScript(item)
	task.spawn(function()
		local success, err = pcall(function()
			local fn = loadstring(item.Code)

			if not fn then
				error("loadstring không khả dụng")
			end

			fn()
		end)

		if not success then
			warn("[QuocAnhMenu] Script error:", err)
		end
	end)
end

--==================================================
-- SCRIPT CARD
--==================================================

local function CreateScriptCard(item, index, category)
	local Card = Instance.new("Frame")
	Card.Name = "Script_" .. index
	Card.BackgroundColor3 = Colors.Card
	Card.BackgroundTransparency = 0.03
	Card.BorderSizePixel = 0
	Card.LayoutOrder = index
	Card.ZIndex = 20
	Card.Parent = ScriptScroll

	Corner(Card, 12)

	local CardStroke = Stroke(
		Card,
		Color3.fromRGB(42, 43, 48),
		1,
		0.1
	)

	-- Icon
	local IconCircle = Instance.new("Frame")
	IconCircle.Size = UDim2.fromOffset(38, 38)
	IconCircle.Position = UDim2.fromOffset(9, 12)
	IconCircle.BackgroundColor3 = Color3.fromRGB(27, 28, 32)
	IconCircle.BorderSizePixel = 0
	IconCircle.ZIndex = 22
	IconCircle.Parent = Card

	Corner(IconCircle, 20)

	local IconText = CreateText(
		IconCircle,
		string.sub(item.Name, 1, 1):upper(),
		13,
		Colors.White,
		Enum.Font.GothamBold
	)

	IconText.Size = UDim2.fromScale(1, 1)
	IconText.TextXAlignment = Enum.TextXAlignment.Center
	IconText.ZIndex = 23

	-- Name
	local NameLabel = CreateText(
		Card,
		item.Name,
		12,
		Colors.White,
		Enum.Font.GothamBold
	)

	NameLabel.Position = UDim2.fromOffset(56, 8)
	NameLabel.Size = UDim2.new(1, -108, 22, 0)
	NameLabel.TextTruncate = Enum.TextTruncate.AtEnd
	NameLabel.ZIndex = 22

	-- Category
	local SmallLabel = CreateText(
		Card,
		category:upper(),
		8,
		Colors.Gray,
		Enum.Font.GothamMedium
	)

	SmallLabel.Position = UDim2.fromOffset(57, 31)
	SmallLabel.Size = UDim2.new(1, -110, 16, 0)
	SmallLabel.ZIndex = 22

	-- KEY
	if item.Key then
		local KeyLabel = CreateText(
			Card,
			"[KEY]",
			8,
			Colors.Key,
			Enum.Font.GothamBold
		)

		KeyLabel.Position = UDim2.new(1, -73, 9, 0)
		KeyLabel.Size = UDim2.fromOffset(38, 17)
		KeyLabel.TextXAlignment = Enum.TextXAlignment.Right
		KeyLabel.ZIndex = 23
	end

	-- Run
	local Run = Instance.new("TextButton")
	Run.Size = UDim2.fromOffset(34, 34)
	Run.Position = UDim2.new(1, -43, 0.5, -17)
	Run.BackgroundColor3 = Color3.fromRGB(30, 31, 36)
	Run.BorderSizePixel = 0
	Run.Text = "▶"
	Run.TextColor3 = Colors.White
	Run.TextSize = 12
	Run.Font = Enum.Font.GothamBold
	Run.AutoButtonColor = false
	Run.ZIndex = 25
	Run.Parent = Card

	Corner(Run, 17)
	Stroke(Run, Color3.fromRGB(60, 61, 68), 1)

	Run.MouseEnter:Connect(function()
		Tween(Run, 0.12, {
			BackgroundColor3 = Color3.fromRGB(55, 56, 62)
		}):Play()

		Tween(Card, 0.12, {
			BackgroundColor3 = Color3.fromRGB(23, 24, 28)
		}):Play()
	end)

	Run.MouseLeave:Connect(function()
		Tween(Run, 0.12, {
			BackgroundColor3 = Color3.fromRGB(30, 31, 36)
		}):Play()

		Tween(Card, 0.12, {
			BackgroundColor3 = Colors.Card
		}):Play()
	end)

	Run.MouseButton1Click:Connect(function()
		Tween(Run, 0.1, {
			Size = UDim2.fromOffset(30, 30)
		}):Play()

		task.delay(0.1, function()
			Tween(Run, 0.1, {
				Size = UDim2.fromOffset(34, 34)
			}):Play()
		end)

		ExecuteScript(item)
	end)

	ScriptCards[#ScriptCards + 1] = {
		Frame = Card,
		Name = item.Name
	}

	return Card
end

--==================================================
-- CLEAR SCRIPT CARDS
--==================================================

local function ClearScriptCards()
	for _, card in ipairs(ScriptCards) do
		if card.Frame then
			card.Frame:Destroy()
		end
	end

	table.clear(ScriptCards)
end

--==================================================
-- LOAD CATEGORY
--==================================================

local function LoadCategory(category)
	CurrentCategory = category

	ClearScriptCards()

	local data = Scripts[category]

	if not data then
		return
	end

	PageTitle.Text = category:upper()
	PageSub.Text = tostring(#data) .. " scripts available"

	HomePage.Visible = false
	ScriptPage.Visible = true

	for index, item in ipairs(data) do
		CreateScriptCard(item, index, category)
	end

	for name, info in pairs(SidebarButtons) do
		local selected = name == category

		info.SelectedBar.Visible = selected

		if selected then
			Tween(info.Button, 0.18, {
				BackgroundColor3 = Color3.fromRGB(25, 26, 30)
			}):Play()

			Tween(info.IconCircle, 0.18, {
				BackgroundColor3 = Color3.fromRGB(38, 39, 44)
			}):Play()

			Tween(info.Label, 0.18, {
				TextColor3 = Colors.White
			}):Play()

			Tween(info.Icon, 0.18, {
				TextColor3 = Colors.White
			}):Play()
		else
			Tween(info.Button, 0.18, {
				BackgroundColor3 = Color3.fromRGB(12, 13, 16)
			}):Play()

			Tween(info.IconCircle, 0.18, {
				BackgroundColor3 = Color3.fromRGB(24, 25, 29)
			}):Play()

			Tween(info.Label, 0.18, {
				TextColor3 = Colors.Gray
			}):Play()

			Tween(info.Icon, 0.18, {
				TextColor3 = Colors.Light
			}):Play()
		end
	end

	ScriptScroll.CanvasPosition = Vector2.new(0, 0)
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

	for name, info in pairs(SidebarButtons) do
		local selected = name == "Home"

		info.SelectedBar.Visible = selected

		if selected then
			Tween(info.Button, 0.18, {
				BackgroundColor3 = Color3.fromRGB(25, 26, 30)
			}):Play()

			Tween(info.IconCircle, 0.18, {
				BackgroundColor3 = Color3.fromRGB(38, 39, 44)
			}):Play()

			Tween(info.Label, 0.18, {
				TextColor3 = Colors.White
			}):Play()
		else
			Tween(info.Button, 0.18, {
				BackgroundColor3 = Color3.fromRGB(12, 13, 16)
			}):Play()

			Tween(info.IconCircle, 0.18, {
				BackgroundColor3 = Color3.fromRGB(24, 25, 29)
			}):Play()

			Tween(info.Label, 0.18, {
				TextColor3 = Colors.Gray
			}):Play()
		end
	end
end

--==================================================
-- SIDEBAR CONNECTIONS
--==================================================

SidebarButtons["Home"].Button.MouseButton1Click:Connect(function()
	OpenHome()
end)

SidebarButtons["Steal a Egg"].Button.MouseButton1Click:Connect(function()
	LoadCategory("Steal a Egg")
end)

SidebarButtons["Blox Fruit"].Button.MouseButton1Click:Connect(function()
	LoadCategory("Blox Fruit")
end)

SidebarButtons["Blade Ball"].Button.MouseButton1Click:Connect(function()
	LoadCategory("Blade Ball")
end)

--==================================================
-- SEARCH
--==================================================

local function SearchScripts(query)
	query = string.lower(query or "")

	if CurrentCategory == "Home" then
		return
	end

	for _, card in ipairs(ScriptCards) do
		local found = string.find(
			string.lower(card.Name),
			query,
			1,
			true
		)

		card.Frame.Visible = found ~= nil
	end
end

Search:GetPropertyChangedSignal("Text"):Connect(function()
	SearchScripts(Search.Text)
end)

--==================================================
-- INITIAL HOME
--==================================================

OpenHome()
--==================================================
-- QUOC ANH MENU V5.1
-- PART 3/3
--==================================================

--==================================================
-- FLOATING CROWN BUTTON
--==================================================

local CrownButton = Instance.new("TextButton")
CrownButton.Name = "CrownButton"
CrownButton.Size = UDim2.fromOffset(44, 44)
CrownButton.Position = UDim2.new(1, -62, 1, -62)
CrownButton.BackgroundColor3 = Color3.fromRGB(8, 8, 10)
CrownButton.BackgroundTransparency = 0.04
CrownButton.BorderSizePixel = 0
CrownButton.Text = "👑"
CrownButton.TextSize = 20
CrownButton.TextColor3 = Color3.fromRGB(225, 225, 230)
CrownButton.Font = Enum.Font.GothamBold
CrownButton.AutoButtonColor = false
CrownButton.ZIndex = 100
CrownButton.Parent = ScreenGui

Corner(CrownButton, 30)

local CrownStroke = Stroke(
	CrownButton,
	Color3.fromRGB(80, 81, 88),
	1.4,
	0.05
)

--==================================================
-- CROWN HOVER
--==================================================

CrownButton.MouseEnter:Connect(function()
	Tween(CrownButton, 0.15, {
		BackgroundColor3 = Color3.fromRGB(28, 29, 34),
		TextColor3 = Color3.fromRGB(255, 255, 255)
	}):Play()

	Tween(CrownStroke, 0.15, {
		Color = Color3.fromRGB(125, 126, 132)
	}):Play()
end)

CrownButton.MouseLeave:Connect(function()
	Tween(CrownButton, 0.15, {
		BackgroundColor3 = Color3.fromRGB(8, 8, 10),
		TextColor3 = Color3.fromRGB(225, 225, 230)
	}):Play()

	Tween(CrownStroke, 0.15, {
		Color = Color3.fromRGB(80, 81, 88)
	}):Play()
end)

--==================================================
-- OPEN / CLOSE
--==================================================

local MenuOpen = true
local OriginalMainPosition = Main.Position

local function OpenMenu()
	if MenuOpen then
		return
	end

	MenuOpen = true
	Main.Visible = true

	Main.Position = UDim2.new(
		OriginalMainPosition.X.Scale,
		OriginalMainPosition.X.Offset,
		OriginalMainPosition.Y.Scale,
		OriginalMainPosition.Y.Offset + 20
	)

	Main.BackgroundTransparency = 0.7

	Tween(Main, 0.25, {
		Position = OriginalMainPosition,
		BackgroundTransparency = 0.12
	}):Play()
end

local function CloseMenu()
	if not MenuOpen then
		return
	end

	MenuOpen = false

	local target = UDim2.new(
		Main.Position.X.Scale,
		Main.Position.X.Offset,
		Main.Position.Y.Scale,
		Main.Position.Y.Offset + 18
	)

	Tween(Main, 0.2, {
		Position = target,
		BackgroundTransparency = 0.75
	}):Play()

	task.delay(0.2, function()
		if not MenuOpen then
			Main.Visible = false
		end
	end)
end

CrownButton.MouseButton1Click:Connect(function()
	if MenuOpen then
		CloseMenu()
	else
		OpenMenu()
	end
end)

CloseButton.MouseButton1Click:Connect(function()
	CloseMenu()
end)

--==================================================
-- DRAG CROWN
--==================================================

local CrownDragging = false
local CrownDragStart
local CrownStartPosition

CrownButton.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then

		CrownDragging = true
		CrownDragStart = input.Position
		CrownStartPosition = CrownButton.Position

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

		local delta = input.Position - CrownDragStart

		CrownButton.Position = UDim2.new(
			CrownStartPosition.X.Scale,
			CrownStartPosition.X.Offset + delta.X,
			CrownStartPosition.Y.Scale,
			CrownStartPosition.Y.Offset + delta.Y
		)
	end
end)

--==================================================
-- PREVENT SEARCH FROM KEEPING OLD FILTER
--==================================================

for _, buttonInfo in pairs(SidebarButtons) do
	buttonInfo.Button.MouseButton1Click:Connect(function()
		Search.Text = ""
	end)
end

--==================================================
-- SMALL OPEN ANIMATION
--==================================================

Main.Visible = true

Main.BackgroundTransparency = 0.8

Tween(Main, 0.35, {
	BackgroundTransparency = 0.12
}):Play()

--==================================================
-- CROWN IDLE ANIMATION
--==================================================

task.spawn(function()
	while ScreenGui.Parent do
		Tween(CrownButton, 1.2, {
			BackgroundColor3 = Color3.fromRGB(12, 12, 15)
		}):Play()

		task.wait(1.2)

		Tween(CrownButton, 1.2, {
			BackgroundColor3 = Color3.fromRGB(8, 8, 10)
		}):Play()

		task.wait(1.2)
	end
end)

--==================================================
-- DONE
--==================================================

print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
print("      QUOC ANH MENU V5.1")
print("      BLACK EDITION")
print("      LOADED SUCCESSFULLY")
print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
