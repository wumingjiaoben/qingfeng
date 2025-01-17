local Gui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local AgreeButton = Instance.new("TextButton")
local AgreeUICorner = Instance.new("UICorner")
local PhotoLabel = Instance.new("ImageLabel")
local CloseButton = Instance.new("TextButton")
local CloseUICorner = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")

Gui.Parent = game.CoreGui

Frame.Parent = Gui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0.15, 0, 0, 0)
Frame.Size = UDim2.new(0.72, 0, 0.85, 0)
Frame.ClipsDescendants = true

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 10)

PhotoLabel.Parent = Frame
PhotoLabel.Image = "rbxassetid://16060333448"
PhotoLabel.ImageTransparency = 0
PhotoLabel.Position = UDim2.new(0.027, 0, 0.05, 0)
PhotoLabel.Size = UDim2.new(0.47, 0, 0.897, 0)

AgreeButton.Parent = Frame
AgreeButton.BackgroundColor3 = Color3.fromRGB(66, 134, 244) 
AgreeButton.Position = UDim2.new(0.548, 0, 0.83, 0) 
AgreeButton.Size = UDim2.new(0.4, 0, 0.1, 0) 
AgreeButton.Text = "同意"
AgreeButton.TextColor3 = Color3.new(0, 0, 0) 
AgreeButton.Font = Enum.Font.SourceSansBold
AgreeButton.TextScaled = true

AgreeUICorner.Parent = AgreeButton
AgreeUICorner.CornerRadius = UDim.new(0, 10) 

CloseButton.Parent = Frame
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) 
CloseButton.Position = UDim2.new(0.94, 0, 0, 0) 
CloseButton.Size = UDim2.new(0.06, 0, 0.12, 0) 
CloseButton.Text = "×"
CloseButton.TextColor3 = Color3.new(1, 1, 1) 
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextScaled = true

CloseUICorner.Parent = CloseButton
CloseUICorner.CornerRadius = UDim.new(0, 10) 

ScrollingFrame.Parent = Frame
ScrollingFrame.Position = UDim2.new(0.52, 0, 0.13, 0)
ScrollingFrame.Size = UDim2.new(0.477, 0, 0.7, 0)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 2, 0)
ScrollingFrame.ScrollBarThickness = 3
ScrollingFrame.ScrollBarImageColor3 = Color3.new(0.5, 0.5, 0.5)

TextLabel.Parent = ScrollingFrame
TextLabel.Size = UDim2.new(1, -10, 2, 0)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.Text = [[
1.-皇帝脚本🤓🤓🤓
2.-加载可能很慢，请谅解
3.-制作人：无名
4.-合作人：，
5.-主群754017071
6.-制作人QQ：2736691058
7.-合作人QQ：1984825722
8.-本次脚本为1.0
9-加载时可能会有卡顿，请理解
10.-后续会添加更多服务器，请耐心等待
]]

TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.Font = Enum.Font.SourceSans
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.6, 0, 0, 0)
TextBox.Size = UDim2.new(0.3, 0, 0.1, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "公告"
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 25
TextBox.ClearTextOnFocus = false

local TextBoxUICorner = Instance.new("UICorner")
TextBoxUICorner.Parent = TextBox
TextBoxUICorner.CornerRadius = UDim.new(0, 5)

local TextBoxUIStroke = Instance.new("UIStroke")
TextBoxUIStroke.Parent = TextBox
TextBoxUIStroke.Thickness = 1
TextBoxUIStroke.Color = Color3.fromRGB(0, 0, 0)
TextBoxUIStroke.Transparency = 0.5

AgreeButton.MouseButton1Click:Connect(function()
    Gui:Destroy()
    runScript()
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wumingjiaoben/qingfeng/refs/heads/main/Protected_2014512060295927.lua"))()
end)

CloseButton.MouseButton1Click:Connect(function()
    Gui:Destroy()
end)

AgreeButton.MouseEnter:Connect(function()
    AgreeButton.BackgroundColor3 = Color3.fromRGB(57, 123, 234)
end)

AgreeButton.MouseLeave:Connect(function()
    AgreeButton.BackgroundColor3 = Color3.fromRGB(66, 134, 244)
end)

CloseButton.MouseEnter:Connect(function()
    CloseButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0) 
end)

CloseButton.MouseLeave:Connect(function()
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end)

function runScript()
    print("小钢筋")
    print("小钢筋: " .. TextBox.Text)
end