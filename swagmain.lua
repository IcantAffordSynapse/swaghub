local SWAGDOWNTIME = Instance.new("ScreenGui")
SWAGDOWNTIME.Name = "SWAGDOWNTIME"
SWAGDOWNTIME.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SWAGDOWNTIME.Parent = game:GetService("CoreGui")

local MainSection = Instance.new("ImageLabel")
MainSection.AnchorPoint = Vector2.new(0.5, 0.5)
MainSection.Name = "MainSection"
MainSection.Position = UDim2.new(0.5, 0, 0.5, 0)
MainSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainSection.Size = UDim2.new(0.3210376799106598, 0, 0.47520822286605835, 0)
MainSection.BorderSizePixel = 0
MainSection.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainSection.Parent = SWAGDOWNTIME

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainSection

local Header = Instance.new("TextLabel")
Header.TextWrapped = true
Header.Name = "Header"
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.Text = "SWAG DOWNTIME!"
Header.TextSize = 14
Header.Size = UDim2.new(0.7085281610488892, 0, 0.09770229458808899, 0)
Header.AnchorPoint = Vector2.new(0.5, 0.5)
Header.BorderSizePixel = 0
Header.BackgroundTransparency = 1
Header.Position = UDim2.new(0.5, 0, 0.10543215274810791, 0)
Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Header.ZIndex = 3
Header.TextScaled = true
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.Parent = MainSection

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.ImageColor3 = Color3.fromRGB(255, 61, 61)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.Size = UDim2.new(0.2247260957956314, 0, 0.3021213114261627, 0)
ImageLabel.Position = UDim2.new(0.5, 0, 0.304694265127182, 0)
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.Image = "rbxassetid://14755021654"
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageRectSize = Vector2.new(108, 108)
ImageLabel.ImageRectOffset = Vector2.new(481, 892)
ImageLabel.BorderSizePixel = 0
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Parent = MainSection

local Header = Instance.new("TextLabel")
Header.TextWrapped = true
Header.Name = "Header"
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.Text = "SWAG Will be back up and running shortly. Apologies for the inconvinience."
Header.TextSize = 14
Header.Size = UDim2.new(0.7085281610488892, 0, 0.09770229458808899, 0)
Header.AnchorPoint = Vector2.new(0.5, 0.5)
Header.BorderSizePixel = 0
Header.BackgroundTransparency = 1
Header.Position = UDim2.new(0.5, 0, 0.5441648960113525, 0)
Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Header.ZIndex = 3
Header.TextScaled = true
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.Parent = MainSection

local Header = Instance.new("TextLabel")
Header.TextWrapped = true
Header.Name = "Header"
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.Text = "For information on this downtime, The Discord server invite has been copied to your clipboard."
Header.TextSize = 14
Header.Size = UDim2.new(0.7085281610488892, 0, 0.09770229458808899, 0)
Header.AnchorPoint = Vector2.new(0.5, 0.5)
Header.BorderSizePixel = 0
Header.BackgroundTransparency = 1
Header.Position = UDim2.new(0.5, 0, 0.6807762980461121, 0)
Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Header.ZIndex = 3
Header.TextScaled = true
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.Parent = MainSection

local ConfirmBtn = Instance.new("ImageButton")
ConfirmBtn.Active = false
ConfirmBtn.BorderColor3 = Color3.fromRGB(27, 42, 53)
ConfirmBtn.AnchorPoint = Vector2.new(0.5, 0.5)
ConfirmBtn.Name = "ConfirmBtn"
ConfirmBtn.BackgroundTransparency = 0.20000000298023224
ConfirmBtn.Position = UDim2.new(0.5000000596046448, 0, 0.8611528873443604, 0)
ConfirmBtn.Size = UDim2.new(0.5724705457687378, 0, 0.16074390709400177, 0)
ConfirmBtn.Selectable = false
ConfirmBtn.AutomaticSize = Enum.AutomaticSize.Y
ConfirmBtn.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
ConfirmBtn.Parent = MainSection

local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.CornerRadius = UDim.new(0, 3)
Corner.Parent = ConfirmBtn

local Border = Instance.new("UIStroke")
Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Border.Transparency = 0.800000011920929
Border.Name = "Border"
Border.Color = Color3.fromRGB(255, 255, 255)
Border.Parent = ConfirmBtn

local Confirmtxg = Instance.new("TextLabel")
Confirmtxg.TextWrapped = true
Confirmtxg.TextColor3 = Color3.fromRGB(255, 255, 255)
Confirmtxg.BorderColor3 = Color3.fromRGB(27, 42, 53)
Confirmtxg.Text = "Okay"
Confirmtxg.Name = "Confirmtxg"
Confirmtxg.TextScaled = true
Confirmtxg.AnchorPoint = Vector2.new(0.5, 0.5)
Confirmtxg.Selectable = true
Confirmtxg.BackgroundTransparency = 1
Confirmtxg.Position = UDim2.new(0.5000000596046448, 0, 0.4999992251396179, 0)
Confirmtxg.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Confirmtxg.Active = true
Confirmtxg.TextSize = 14
Confirmtxg.Size = UDim2.new(0.6544502377510071, 0, 0.5157959461212158, 0)
Confirmtxg.Parent = ConfirmBtn

local AspectRatio = Instance.new("UIAspectRatioConstraint")
AspectRatio.AspectRatio = 1.344398021697998
AspectRatio.Name = "AspectRatio"
AspectRatio.Parent = MainSection

setclipboard("https://discord.gg/jyYZmCn2bt")

ConfirmBtn.MouseButton1Click:Connect(function()
    SWAGDOWNTIME:Destroy()
end)
