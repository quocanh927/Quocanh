-- GetKey UI | BANANA HUB PREMIUM | QuocAnhMenu
-- Đen + vàng. Loading 5 giây -> nhập key.
-- Key đúng: báo xanh rõ ràng -> thu thành Dynamic Island.
-- Key sai: báo đỏ + hỏi "Bạn có muốn thử bản Free không?" (có nút chọn).
-- Nút X thu nhỏ thành Dynamic Island, chạm island để mở lại.
-- Dùng cho Roblox (LocalScript / executor)

----------------------------------------------------------------
-- CẤU HÌNH (sửa ở đây)
----------------------------------------------------------------
local CONFIG = {
	-- 4 dòng dưới PHẢI GIỐNG HỆT trong getkey.html
	SECRET = "TamthinhbucuNinh",       -- chuỗi bí mật tạo key (đổi, và đổi giống y bên web)
	STEP_SECONDS = 60,                      -- cứ 60 giây web ra 1 key mới
	VALID_HOURS = 24,                       -- mỗi key dùng được 24 giờ
	KEY_PREFIX = "BANANA",
	GETKEY_LINK = "https://fixed-chocolate-vvwftbgr.edgeone.dev/", -- link lấy key (đổi thành link của bạn)
	LOAD_TIME = 5,                          -- thời gian loading (giây)
	ISLAND_TOP = 3,                         -- cách mép trên (px), 0 = dính sát hẳn
	MAX_TRIES = 3,                          -- nhập sai quá số lần này thì bị khoá
	LOCK_SECONDS = 60,                      -- thời gian khoá (giây)
}

local function onVerified()
	-- Key đúng -> chạy script PREMIUM
	local ok, err = pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Banana/refs/heads/main/Banana/v4.luau"))()
	end)
	if not ok then warn("[BananaHub] Lỗi chạy bản Premium: " .. tostring(err)) end
end

local function onFree()
	-- Chọn dùng thử -> chạy script bản FREE
	local ok, err = pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/redzx999/bananahub/refs/heads/main/main.lua"))()
	end)
	if not ok then warn("[BananaHub] Lỗi chạy bản Free: " .. tostring(err)) end
end

----------------------------------------------------------------
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

----------------------------------------------------------------
-- HÀM TẠO KEY (giống 100% hàm generateKey trong getkey.html)
----------------------------------------------------------------
local CHARSET = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789"
local MOD = 2147483647

local function generateKey(secret, bucket)
	local seedStr = secret .. ":" .. string.format("%d", bucket)
	local h = 7
	for i = 1, #seedStr do
		h = (h * 131 + string.byte(seedStr, i)) % MOD
	end
	if h == 0 then h = 1 end
	local out = {}
	for i = 1, 15 do
		h = (h * 48271) % MOD
		local idx = h % #CHARSET
		out[#out + 1] = string.sub(CHARSET, idx + 1, idx + 1)
	end
	local s = table.concat(out)
	return CONFIG.KEY_PREFIX .. "-" .. s:sub(1, 5) .. "-" .. s:sub(6, 10) .. "-" .. s:sub(11, 15)
end

local function nowSec()
	-- ưu tiên giờ server của Roblox (không bị lệch nếu đồng hồ máy sai)
	local ok, t = pcall(function() return workspace:GetServerTimeNow() end)
	return math.floor(ok and t or os.time())
end

-- Key hợp lệ nếu được tạo trong vòng VALID_HOURS giờ gần nhất
-- (web ra key mới mỗi STEP_SECONDS giây, mỗi key dùng được 24 giờ)
local function isValidKey(input)
	local nowBucket = math.floor(nowSec() / CONFIG.STEP_SECONDS)
	local count = math.floor(CONFIG.VALID_HOURS * 3600 / CONFIG.STEP_SECONDS)
	for i = -1, count - 1 do   -- -1: du di 1 phut neu dong ho lech
		if generateKey(CONFIG.SECRET, nowBucket - i) == input then
			return true
		end
	end
	return false
end

local YELLOW = Color3.fromRGB(255, 200, 30)
local BG = Color3.fromRGB(14, 14, 14)
local PANEL = Color3.fromRGB(32, 32, 32)
local WHITE = Color3.fromRGB(245, 245, 245)
local GRAY = Color3.fromRGB(150, 150, 150)
local GREEN = Color3.fromRGB(70, 235, 120)
local RED = Color3.fromRGB(255, 80, 80)

local LOAD_SIZE = UDim2.fromOffset(280, 160)
local KEY_SIZE = UDim2.fromOffset(280, 204)

local parentGui = (gethui and gethui()) or Players.LocalPlayer:WaitForChild("PlayerGui")
local old = parentGui:FindFirstChild("GetKeyUI")
if old then old:Destroy() end

local function tween(obj, t, props, style, dir)
	local tw = TweenService:Create(obj, TweenInfo.new(t, style or Enum.EasingStyle.Quint, dir or Enum.EasingDirection.Out), props)
	tw:Play()
	return tw
end

local function corner(parent, r)
	local c = Instance.new("UICorner")
	c.CornerRadius = r
	c.Parent = parent
	return c
end

local function label(parent, props)
	local l = Instance.new("TextLabel")
	l.BackgroundTransparency = 1
	l.TextColor3 = WHITE
	l.Font = Enum.Font.GothamMedium
	for k, v in pairs(props) do l[k] = v end
	l.Parent = parent
	return l
end

local function banana(parent, props)
	return label(parent, {
		Text = "🍌", Font = Enum.Font.SourceSansBold,
		Size = props.Size, Position = props.Position, AnchorPoint = props.AnchorPoint,
		TextSize = props.TextSize,
	})
end

local function button(parent, text, pos, bg, fg)
	local b = Instance.new("TextButton")
	b.Position = pos
	b.Size = UDim2.new(0.5, -25, 0, 40)
	b.BackgroundColor3 = bg
	b.BorderSizePixel = 0
	b.AutoButtonColor = false
	b.Font = Enum.Font.GothamBold
	b.TextSize = 14
	b.TextColor3 = fg
	b.Text = text
	b.Parent = parent
	corner(b, UDim.new(0, 12))
	b.MouseButton1Down:Connect(function() tween(b, 0.1, {Size = UDim2.new(0.5, -29, 0, 36)}) end)
	local function release() tween(b, 0.15, {Size = UDim2.new(0.5, -25, 0, 40)}) end
	b.MouseButton1Up:Connect(release)
	b.MouseLeave:Connect(release)
	return b
end

local gui = Instance.new("ScreenGui")
gui.Name = "GetKeyUI"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.DisplayOrder = 1000
gui.Parent = parentGui

----------------------------------------------------------------
-- Thẻ chính (nền đen, viền vàng mỏng)
----------------------------------------------------------------
local card = Instance.new("Frame")
card.AnchorPoint = Vector2.new(0.5, 0.5)
card.Position = UDim2.new(0.5, 0, 0.5, 0)
card.Size = UDim2.fromOffset(0, 0)
card.BackgroundColor3 = BG
card.BorderSizePixel = 0
card.ClipsDescendants = true
card.Parent = gui
local cardCorner = corner(card, UDim.new(0, 24))

local stroke = Instance.new("UIStroke")
stroke.Color = YELLOW
stroke.Thickness = 1.5
stroke.Transparency = 0.6
stroke.Parent = card

----------------------------------------------------------------
-- 1) Màn hình loading
----------------------------------------------------------------
local loadGroup = Instance.new("CanvasGroup")
loadGroup.Size = UDim2.new(1, 0, 1, 0)
loadGroup.BackgroundTransparency = 1
loadGroup.Parent = card

-- Quả chuối lắc lư
local loadBanana = banana(loadGroup, {
	AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 8),
	Size = UDim2.fromOffset(60, 44), TextSize = 36,
})
loadBanana.Rotation = -14
TweenService:Create(loadBanana, TweenInfo.new(0.55, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
	{Rotation = 14, Position = UDim2.new(0.5, 0, 0, 14)}):Play()

label(loadGroup, {
	Position = UDim2.new(0, 0, 0, 58), Size = UDim2.new(1, 0, 0, 22),
	Text = "BANANA HUB PREMIUM", Font = Enum.Font.GothamBlack, TextSize = 16, TextColor3 = YELLOW,
})
local statusLbl = label(loadGroup, {
	Position = UDim2.new(0, 0, 0, 82), Size = UDim2.new(1, 0, 0, 16),
	Text = "Đang khởi tạo...", TextSize = 12, TextColor3 = GRAY,
})

local track = Instance.new("Frame")
track.Position = UDim2.new(0, 22, 0, 108)
track.Size = UDim2.new(1, -44, 0, 12)
track.BackgroundColor3 = PANEL
track.BorderSizePixel = 0
track.ClipsDescendants = true
track.Parent = loadGroup
corner(track, UDim.new(1, 0))

local fill = Instance.new("Frame")
fill.Size = UDim2.new(0, 0, 1, 0)
fill.BackgroundColor3 = Color3.new(1, 1, 1)
fill.BorderSizePixel = 0
fill.Parent = track
corner(fill, UDim.new(1, 0))
-- Dải sáng chạy trong thanh loading
local fillGrad = Instance.new("UIGradient")
fillGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 160, 0)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 240, 130)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 160, 0)),
})
fillGrad.Offset = Vector2.new(-1, 0)
fillGrad.Parent = fill
TweenService:Create(fillGrad, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, false),
	{Offset = Vector2.new(1, 0)}):Play()

local pctLbl = label(loadGroup, {
	Position = UDim2.new(0, 0, 0, 128), Size = UDim2.new(1, 0, 0, 20),
	Text = "0%", Font = Enum.Font.GothamBlack, TextSize = 15, TextColor3 = YELLOW,
})

----------------------------------------------------------------
-- 2) Màn hình nhập key
----------------------------------------------------------------
local keyGroup = Instance.new("CanvasGroup")
keyGroup.Size = UDim2.new(1, 0, 1, 0)
keyGroup.BackgroundTransparency = 1
keyGroup.GroupTransparency = 1
keyGroup.Visible = false
keyGroup.Parent = card

banana(keyGroup, {
	AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 6),
	Size = UDim2.fromOffset(40, 30), TextSize = 24,
})
label(keyGroup, {
	Position = UDim2.new(0, 0, 0, 38), Size = UDim2.new(1, 0, 0, 22),
	Text = "XÁC THỰC KEY", Font = Enum.Font.GothamBlack, TextSize = 16, TextColor3 = YELLOW,
})
label(keyGroup, {
	Position = UDim2.new(0, 0, 0, 59), Size = UDim2.new(1, 0, 0, 16),
	Text = "Lấy key rồi dán vào ô bên dưới", TextSize = 12, TextColor3 = GRAY,
})

local box = Instance.new("TextBox")
box.Position = UDim2.new(0, 20, 0, 82)
box.Size = UDim2.new(1, -40, 0, 38)
box.BackgroundColor3 = PANEL
box.BorderSizePixel = 0
box.Font = Enum.Font.GothamMedium
box.TextSize = 14
box.TextColor3 = WHITE
box.PlaceholderText = "Dán key vào đây..."
box.PlaceholderColor3 = GRAY
box.Text = ""
box.ClearTextOnFocus = false
box.Parent = keyGroup
corner(box, UDim.new(0, 12))
local boxStroke = Instance.new("UIStroke")
boxStroke.Color = YELLOW
boxStroke.Transparency = 0.75
boxStroke.Thickness = 1.5
boxStroke.Parent = box
box.Focused:Connect(function()
	tween(boxStroke, 0.2, {Color = YELLOW, Transparency = 0.1})
end)
box.FocusLost:Connect(function()
	tween(boxStroke, 0.2, {Color = YELLOW, Transparency = 0.75})
end)

local getBtn = button(keyGroup, "Get Key", UDim2.new(0, 20, 0, 130), PANEL, YELLOW)
local verifyBtn = button(keyGroup, "Verify", UDim2.new(0.5, 5, 0, 130), YELLOW, BG)

local msgLbl = label(keyGroup, {
	Position = UDim2.new(0, 0, 0, 176), Size = UDim2.new(1, 0, 0, 20),
	Text = "", TextSize = 12, Font = Enum.Font.GothamBold,
})

----------------------------------------------------------------
-- 3) Thông báo KEY ĐÚNG (overlay xanh)
----------------------------------------------------------------
-- Overlay là Frame thường (không dùng CanvasGroup), trượt từ dưới lên
local function overlay()
	local g = Instance.new("Frame")
	g.Size = UDim2.new(1, 0, 1, 0)
	g.Position = UDim2.new(0, 0, 1, 0)   -- nằm ẩn dưới thẻ
	g.BackgroundColor3 = BG
	g.BorderSizePixel = 0
	g.Visible = false
	g.ZIndex = 4
	g.Parent = card
	return g
end

local okGroup = overlay()
local okCircle = Instance.new("Frame")
okCircle.AnchorPoint = Vector2.new(0.5, 0.5)
okCircle.Position = UDim2.new(0.5, 0, 0, 64)
okCircle.Size = UDim2.fromOffset(0, 0)
okCircle.BackgroundColor3 = GREEN
okCircle.BorderSizePixel = 0
okCircle.Parent = okGroup
corner(okCircle, UDim.new(1, 0))
label(okCircle, {
	Size = UDim2.new(1, 0, 1, 0), Text = "✓", Font = Enum.Font.GothamBlack,
	TextSize = 34, TextColor3 = BG,
})
label(okGroup, {
	Position = UDim2.new(0, 0, 0, 108), Size = UDim2.new(1, 0, 0, 26),
	Text = "KEY HỢP LỆ", Font = Enum.Font.GothamBlack, TextSize = 21, TextColor3 = GREEN,
})
label(okGroup, {
	Position = UDim2.new(0, 0, 0, 138), Size = UDim2.new(1, 0, 0, 18),
	Text = "Đang kích hoạt Premium...", TextSize = 12, TextColor3 = GRAY,
})

----------------------------------------------------------------
-- 4) Thông báo KEY SAI + hỏi dùng thử Free (overlay đỏ, có nút chọn)
----------------------------------------------------------------
local freeGroup = overlay()
local failCircle = Instance.new("Frame")
failCircle.AnchorPoint = Vector2.new(0.5, 0)
failCircle.Position = UDim2.new(0.5, 0, 0, 14)
failCircle.Size = UDim2.fromOffset(40, 40)
failCircle.BackgroundColor3 = RED
failCircle.BorderSizePixel = 0
failCircle.Parent = freeGroup
corner(failCircle, UDim.new(1, 0))
label(failCircle, {
	Size = UDim2.new(1, 0, 1, 0), Text = "X", Font = Enum.Font.GothamBlack,
	TextSize = 22, TextColor3 = BG,
})
label(freeGroup, {
	Position = UDim2.new(0, 0, 0, 60), Size = UDim2.new(1, 0, 0, 24),
	Text = "KEY SAI", Font = Enum.Font.GothamBlack, TextSize = 19, TextColor3 = RED,
})
label(freeGroup, {
	Position = UDim2.new(0, 20, 0, 88), Size = UDim2.new(1, -40, 0, 36),
	Text = "Bạn có muốn thử bản Free không?", TextSize = 14, TextWrapped = true,
})
local freeYes = button(freeGroup, "Dùng thử Free", UDim2.new(0, 20, 0, 144), YELLOW, BG)
local freeNo = button(freeGroup, "Không", UDim2.new(0.5, 5, 0, 144), PANEL, WHITE)

----------------------------------------------------------------
-- 5) Nút X (thu nhỏ thành Dynamic Island)
----------------------------------------------------------------
local xBtn = Instance.new("TextButton")
xBtn.AnchorPoint = Vector2.new(1, 0)
xBtn.Position = UDim2.new(1, -10, 0, 10)
xBtn.Size = UDim2.fromOffset(26, 26)
xBtn.BackgroundColor3 = PANEL
xBtn.BorderSizePixel = 0
xBtn.AutoButtonColor = false
xBtn.Font = Enum.Font.GothamBold
xBtn.TextSize = 13
xBtn.TextColor3 = YELLOW
xBtn.Text = "X"
xBtn.ZIndex = 6
xBtn.Parent = card
corner(xBtn, UDim.new(1, 0))

----------------------------------------------------------------
-- 6) Dynamic Island
----------------------------------------------------------------
local islandGroup = Instance.new("CanvasGroup")
islandGroup.Size = UDim2.new(1, 0, 1, 0)
islandGroup.BackgroundTransparency = 1
islandGroup.GroupTransparency = 1
islandGroup.Visible = false
islandGroup.Parent = card

banana(islandGroup, {
	AnchorPoint = Vector2.new(0, 0), Position = UDim2.new(0, 10, 0, 0),
	Size = UDim2.fromOffset(22, 36), TextSize = 17,
})
local islandTitle = label(islandGroup, {
	Position = UDim2.new(0, 36, 0, 0), Size = UDim2.new(1, -46, 0, 36),
	Text = "BANANA HUB PREMIUM", Font = Enum.Font.GothamBold, TextSize = 12,
	TextColor3 = YELLOW, TextXAlignment = Enum.TextXAlignment.Left,
})
local islandSub = label(islandGroup, {
	Position = UDim2.new(0, 36, 0, 32), Size = UDim2.new(1, -46, 0, 20),
	Text = "Chạm để mở lại", TextSize = 11, TextColor3 = GRAY,
	TextXAlignment = Enum.TextXAlignment.Left,
})

local islandBtn = Instance.new("TextButton")
islandBtn.Size = UDim2.new(1, 0, 1, 0)
islandBtn.BackgroundTransparency = 1
islandBtn.Text = ""
islandBtn.ZIndex = 10
islandBtn.Visible = false
islandBtn.Parent = card

----------------------------------------------------------------
-- Trạng thái + chuyển cảnh
----------------------------------------------------------------
local phase = "loading"   -- "loading" | "key"
local collapsed = false
local verified = false    -- key đúng (Premium)
local freeMode = false    -- chọn dùng thử Free
local expandedInfo = false
local lock = false
local checking = false
local failCount, lockedUntil = 0, 0   -- chống đoán key

local function activated()
	return verified or freeMode
end

local function islandPos(h)
	return UDim2.new(0.5, 0, 0, CONFIG.ISLAND_TOP + h / 2)
end

local fpsLabel = nil   -- thanh FPS (chỉ hiện khi nhập đúng key)
local function fpsY(exp)
	return CONFIG.ISLAND_TOP + (exp and 60 or 36) + 4   -- ngay dưới island
end

local freeShownAt = 0   -- chống bấm nhầm ngay khi popup vừa hiện

local function showGroup(g)
	g.Position = UDim2.new(0, 0, 1, 0)
	g.Visible = true
	tween(g, 0.35, {Position = UDim2.new(0, 0, 0, 0)})
end

local function hideGroup(g)
	tween(g, 0.25, {Position = UDim2.new(0, 0, 1, 0)}).Completed:Wait()
	g.Visible = false
end

-- Thu nhỏ thành Dynamic Island
local function collapse()
	if lock or collapsed then return end
	lock = true
	collapsed = true
	xBtn.Visible = false
	if verified then
		islandTitle.Text = "BANANA HUB PREMIUM"
		islandSub.Text = "Key hợp lệ • Premium"
	elseif freeMode then
		islandTitle.Text = "BANANA HUB FREE"
		islandSub.Text = "Bản Free • Giới hạn tính năng"
	else
		islandTitle.Text = "BANANA HUB PREMIUM"
		islandSub.Text = "Chạm để mở lại"
	end
	local groups = {loadGroup, keyGroup}
	for _, g in ipairs(groups) do tween(g, 0.2, {GroupTransparency = 1}) end
	tween(okGroup, 0.2, {Position = UDim2.new(0, 0, 1, 0)})
	tween(freeGroup, 0.2, {Position = UDim2.new(0, 0, 1, 0)})
	task.wait(0.2)
	for _, g in ipairs(groups) do g.Visible = false end
	okGroup.Visible = false
	freeGroup.Visible = false
	tween(card, 0.55, {
		Size = UDim2.fromOffset(190, 36),
		Position = islandPos(36),
		BackgroundColor3 = Color3.new(0, 0, 0),
	}, Enum.EasingStyle.Back)
	tween(cardCorner, 0.55, {CornerRadius = UDim.new(0, 18)}, Enum.EasingStyle.Back)
	task.wait(0.3)
	islandGroup.Visible = true
	tween(islandGroup, 0.3, {GroupTransparency = 0})
	islandBtn.Visible = true
	lock = false
end

-- Mở lại thẻ đầy đủ (chỉ khi chưa chọn Premium/Free)
local function expandFull()
	if lock or not collapsed then return end
	lock = true
	collapsed = false
	expandedInfo = false
	islandBtn.Visible = false
	tween(islandGroup, 0.15, {GroupTransparency = 1})
	task.wait(0.15)
	islandGroup.Visible = false
	tween(card, 0.5, {
		Size = phase == "loading" and LOAD_SIZE or KEY_SIZE,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		BackgroundColor3 = BG,
	}, Enum.EasingStyle.Back)
	tween(cardCorner, 0.5, {CornerRadius = UDim.new(0, 24)}, Enum.EasingStyle.Back)
	task.wait(0.25)
	local g = phase == "loading" and loadGroup or keyGroup
	g.Visible = true
	tween(g, 0.3, {GroupTransparency = 0})
	xBtn.Visible = true
	lock = false
end

-- Island đã kích hoạt: chạm để giãn / thu thông tin
local function toggleInfo()
	expandedInfo = not expandedInfo
	local w, h = expandedInfo and 250 or 190, expandedInfo and 60 or 36
	tween(card, 0.45, {Size = UDim2.fromOffset(w, h), Position = islandPos(h)}, Enum.EasingStyle.Back)
	tween(cardCorner, 0.45, {CornerRadius = UDim.new(0, expandedInfo and 26 or 18)}, Enum.EasingStyle.Back)
	if fpsLabel then
		tween(fpsLabel, 0.45, {Position = UDim2.new(0.5, 0, 0, fpsY(expandedInfo))}, Enum.EasingStyle.Back)
	end
end

-- Thanh FPS cầu vồng ngay dưới Dynamic Island (chỉ khi nhập đúng key)
local function showFpsBar()
	if fpsLabel then return end
	local lbl = Instance.new("TextLabel")
	lbl.Name = "FPSBarLabel"
	lbl.AnchorPoint = Vector2.new(0.5, 0)
	lbl.Position = UDim2.new(0.5, 0, 0, CONFIG.ISLAND_TOP + 18)   -- bắt đầu từ island rồi trượt xuống
	lbl.Size = UDim2.new(0, 400, 0, 20)
	lbl.BackgroundTransparency = 1
	lbl.Font = Enum.Font.GothamBold
	lbl.TextSize = 14                          -- nhỏ hơn bản cũ (16) một chút
	lbl.TextColor3 = Color3.new(1, 1, 1)
	lbl.TextStrokeColor3 = Color3.new(0, 0, 0)
	lbl.TextStrokeTransparency = 1
	lbl.TextTransparency = 1
	lbl.Text = "FPS ??? | BANANA HUB PREMIUM | QuocAnhMenu"
	lbl.Parent = gui
	fpsLabel = lbl

	local grad = Instance.new("UIGradient")
	grad.Parent = lbl

	tween(lbl, 0.5, {
		Position = UDim2.new(0.5, 0, 0, fpsY(expandedInfo)),
		TextTransparency = 0,
		TextStrokeTransparency = 0.5,
	}, Enum.EasingStyle.Back)

	local RAINBOW_SPEED, STEPS = 0.35, 12
	local frames, elapsed = 0, 0
	local conn
	conn = RunService.RenderStepped:Connect(function(dt)
		-- Cầu vồng chạy từ trái sang phải
		local shift = tick() * RAINBOW_SPEED
		local keys = {}
		for i = 0, STEPS do
			local t = i / STEPS
			keys[#keys + 1] = ColorSequenceKeypoint.new(t, Color3.fromHSV((t - shift) % 1, 1, 1))
		end
		grad.Color = ColorSequence.new(keys)

		-- Đo FPS, cập nhật số mỗi 0.5 giây
		frames += 1
		elapsed += dt
		if elapsed >= 0.5 then
			local fps = math.floor(frames / elapsed + 0.5)
			lbl.Text = ("FPS %d | BANANA HUB PREMIUM | QuocAnhMenu"):format(fps)
			frames, elapsed = 0, 0
		end
	end)
	lbl.Destroying:Connect(function() conn:Disconnect() end)
end

xBtn.MouseButton1Click:Connect(collapse)
islandBtn.MouseButton1Click:Connect(function()
	if activated() then
		toggleInfo()
	else
		expandFull()
	end
end)

----------------------------------------------------------------
-- Nút Get Key / Verify / Free
----------------------------------------------------------------
local function shake()
	local base = card.Position
	for _, dx in ipairs({-9, 9, -6, 6, 0}) do
		tween(card, 0.04, {Position = base + UDim2.fromOffset(dx, 0)}, Enum.EasingStyle.Linear).Completed:Wait()
	end
end

getBtn.MouseButton1Click:Connect(function()
	msgLbl.TextColor3 = YELLOW
	if setclipboard then
		pcall(setclipboard, CONFIG.GETKEY_LINK)
		msgLbl.Text = "Đã copy link getkey! Dán vào trình duyệt."
	else
		msgLbl.Text = CONFIG.GETKEY_LINK
	end
end)

verifyBtn.MouseButton1Click:Connect(function()
	if checking or lock or activated() then return end
	if tick() < lockedUntil then
		msgLbl.TextColor3 = RED
		msgLbl.Text = ("Nhập sai nhiều lần, thử lại sau %ds"):format(math.ceil(lockedUntil - tick()))
		return
	end
	checking = true
	local input = box.Text:gsub("%s+", ""):upper()
	if isValidKey(input) then
		-- KEY ĐÚNG
		verified = true
		xBtn.Visible = false
		tween(boxStroke, 0.2, {Color = GREEN, Transparency = 0})
		msgLbl.TextColor3 = GREEN
		msgLbl.Text = "Key đúng!"
		task.wait(0.3)
		okCircle.Size = UDim2.fromOffset(0, 0)
		showGroup(okGroup)
		tween(okCircle, 0.5, {Size = UDim2.fromOffset(60, 60)}, Enum.EasingStyle.Back)
		task.wait(1.7)
		collapse()
		showFpsBar()
		task.spawn(onVerified)
	else
		-- KEY SAI
		failCount += 1
		if failCount >= CONFIG.MAX_TRIES then
			lockedUntil = tick() + CONFIG.LOCK_SECONDS
			failCount = 0
		end
		tween(boxStroke, 0.2, {Color = RED, Transparency = 0})
		msgLbl.TextColor3 = RED
		msgLbl.Text = "Key sai!"
		shake()
		task.wait(0.2)
		xBtn.Visible = false
		showGroup(freeGroup)
		freeShownAt = tick()
		-- giữ checking = true tới khi người dùng chọn
	end
end)

freeYes.MouseButton1Click:Connect(function()
	if lock or activated() or tick() - freeShownAt < 0.6 then return end
	freeMode = true
	collapse()
	task.spawn(onFree)
end)

freeNo.MouseButton1Click:Connect(function()
	if lock or activated() or tick() - freeShownAt < 0.6 then return end
	hideGroup(freeGroup)
	msgLbl.Text = ""
	tween(boxStroke, 0.2, {Color = YELLOW, Transparency = 0.75})
	xBtn.Visible = true
	checking = false
end)

----------------------------------------------------------------
-- Chạy: hiện thẻ -> loading -> nhập key
----------------------------------------------------------------
tween(card, 0.5, {Size = LOAD_SIZE}, Enum.EasingStyle.Back)
task.wait(0.6)

local start = tick()
while true do
	local a = math.clamp((tick() - start) / CONFIG.LOAD_TIME, 0, 1)
	fill.Size = UDim2.new(a, 0, 1, 0)
	pctLbl.Text = math.floor(a * 100) .. "%"
	statusLbl.Text = a < 0.3 and "Đang khởi tạo..." or (a < 0.7 and "Đang tải module..." or "Sắp xong...")
	if a >= 1 then break end
	RunService.Heartbeat:Wait()
end

task.wait(0.2)
while lock do task.wait() end   -- đợi nếu đang chuyển cảnh
phase = "key"
if collapsed then
	loadGroup.Visible = false   -- đang là island: lúc mở lại sẽ ra màn nhập key
else
	lock = true
	tween(loadGroup, 0.25, {GroupTransparency = 1}).Completed:Wait()
	loadGroup.Visible = false
	tween(card, 0.45, {Size = KEY_SIZE}, Enum.EasingStyle.Back)
	keyGroup.Visible = true
	tween(keyGroup, 0.35, {GroupTransparency = 0})
	lock = false
end
