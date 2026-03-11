local TOUWARN = Instance.new("ScreenGui")
TOUWARN.Name = "TOUWARN"
TOUWARN.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TOUWARN.Parent = game:GetService("CoreGui")

local MainSection = Instance.new("ImageLabel")
MainSection.AnchorPoint = Vector2.new(0.5, 0.5)
MainSection.Name = "MainSection"
MainSection.Position = UDim2.new(0.5, 0, 0.5, 0)
MainSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainSection.Size = UDim2.new(0.3210376799106598, 0, 0.35910332202911377, 0)
MainSection.BorderSizePixel = 0
MainSection.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainSection.Parent = TOUWARN

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainSection

local Header = Instance.new("TextLabel")
Header.TextWrapped = true
Header.Name = "Header"
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.Text = "NOTICE"
Header.TextSize = 14
Header.Size = UDim2.new(0.7085281610488892, 0, 0.16028015315532684, 0)
Header.AnchorPoint = Vector2.new(0.5, 0.5)
Header.BorderSizePixel = 0
Header.BackgroundTransparency = 1
Header.Position = UDim2.new(0.5000000596046448, 0, 0.13672111928462982, 0)
Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Header.ZIndex = 3
Header.TextScaled = true
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.Parent = MainSection

local Link = Instance.new("TextButton")
Link.TextWrapped = true
Link.Name = "Link"
Link.TextColor3 = Color3.fromRGB(255, 255, 255)
Link.BorderColor3 = Color3.fromRGB(0, 0, 0)
Link.Text = "https://github.com/IcantAffordSynapse/swaghub/blob/main/TermsOfUse.txt"
Link.TextSize = 14
Link.Size = UDim2.new(0.9363378882408142, 0, 0.1121421828866005, 0)
Link.AnchorPoint = Vector2.new(0.5, 0.5)
Link.BorderSizePixel = 0
Link.BackgroundTransparency = 1
Link.Position = UDim2.new(0.5000000596046448, 0, 0.5278123617172241, 0)
Link.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Link.ZIndex = 3
Link.TextScaled = true
Link.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Link.Parent = MainSection

local NoticeDesc = Instance.new("TextLabel")
NoticeDesc.TextWrapped = true
NoticeDesc.Name = "NoticeDesc"
NoticeDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
NoticeDesc.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoticeDesc.Text = "By clicking 'I Accept' you agree to SWAG's Terms of Use, Linked below."
NoticeDesc.TextSize = 14
NoticeDesc.Size = UDim2.new(0.7749689221382141, 0, 0.164842888712883, 0)
NoticeDesc.AnchorPoint = Vector2.new(0.5, 0.5)
NoticeDesc.BorderSizePixel = 0
NoticeDesc.BackgroundTransparency = 1
NoticeDesc.Position = UDim2.new(0.5000000596046448, 0, 0.35180091857910156, 0)
NoticeDesc.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
NoticeDesc.ZIndex = 3
NoticeDesc.TextScaled = true
NoticeDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NoticeDesc.Parent = MainSection

local ConfirmBtn = Instance.new("ImageButton")
ConfirmBtn.Active = false
ConfirmBtn.BorderColor3 = Color3.fromRGB(27, 42, 53)
ConfirmBtn.AnchorPoint = Vector2.new(0.5, 0.5)
ConfirmBtn.Name = "ConfirmBtn"
ConfirmBtn.BackgroundTransparency = 0.20000000298023224
ConfirmBtn.Position = UDim2.new(0.498045951128006, 0, 0.7916219234466553, 0)
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
Confirmtxg.Text = "I Accept"
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
AspectRatio.AspectRatio = 1.7790673971176147
AspectRatio.Name = "AspectRatio"
AspectRatio.Parent = MainSection

Link.MouseButton1Click:Connect(function()
    setclipboard("https://github.com/IcantAffordSynapse/swaghub/blob/main/TermsOfUse.txt")
    Link.Text = 'Copied to Clipboard.'
    wait(1)
    Link.Text = 'https://github.com/IcantAffordSynapse/swaghub/blob/main/TermsOfUse.txt'
end)

ConfirmBtn.MouseButton1Click:Connect(function()
    TOUWARN:Destroy()
    if identifyexecutor() == "Xeno" then
        setclipboard("https://www.reddit.com/r/robloxhackers/comments/1r1e59c/xeno_malware_update/")
        
        local ScreenGui = Instance.new("ScreenGui")
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ScreenGui.Parent = game.CoreGui

        local Frame = Instance.new("Frame")
        Frame.AnchorPoint = Vector2.new(0.5, 0.5)
        Frame.Position = UDim2.new(0.5, 0, 0.49142158031463623, 0)
        Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Frame.Size = UDim2.new(0.4358024597167969, 0, 0.5208333134651184, 0)
        Frame.BorderSizePixel = 0
        Frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
        Frame.Parent = ScreenGui

        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0.019999999552965164, 0)
        UICorner.Parent = Frame

        local TextLabel = Instance.new("TextLabel")
        TextLabel.TextWrapped = true
        TextLabel.TextColor3 = Color3.fromRGB(255, 29, 29)
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.Text = "WARNING!"
        TextLabel.Size = UDim2.new(0.38101983070373535, 0, 0.11764706671237946, 0)
        TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel.BorderSizePixel = 0
        TextLabel.BackgroundTransparency = 1
        TextLabel.Position = UDim2.new(0.5, 0, 0.11299999803304672, 0)
        TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        TextLabel.TextSize = 14
        TextLabel.TextScaled = true
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.Parent = Frame

        local TextLabel = Instance.new("TextLabel")
        TextLabel.TextWrapped = true
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.Text = "SWAG has detected you are using Xeno executor."
        TextLabel.Size = UDim2.new(0.38101983070373535, 0, 0.11764706671237946, 0)
        TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel.BorderSizePixel = 0
        TextLabel.BackgroundTransparency = 1
        TextLabel.Position = UDim2.new(0.5, 0, 0.25417646765708923, 0)
        TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        TextLabel.TextSize = 14
        TextLabel.TextScaled = true
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.Parent = Frame

        local TextLabel = Instance.new("TextLabel")
        TextLabel.TextWrapped = true
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.Text = "Xeno is known for being suspicious for the following reasons:"
        TextLabel.Size = UDim2.new(0.7152974605560303, 0, 0.06117647513747215, 0)
        TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel.BorderSizePixel = 0
        TextLabel.BackgroundTransparency = 1
        TextLabel.Position = UDim2.new(0.5, 0, 0.384764701128006, 0)
        TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        TextLabel.TextSize = 14
        TextLabel.TextScaled = true
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.Parent = Frame

        local TextLabel = Instance.new("TextLabel")
        TextLabel.TextWrapped = true
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.Text = "1. Many fake/impersonators of the authentic Xeno (The ONLY real sites are xeno.onl and xeno.now)"
        TextLabel.Size = UDim2.new(0.7110481858253479, 0, 0.0941176563501358, 0)
        TextLabel.Position = UDim2.new(0.5, 0, 0.5152941346168518, 0)
        TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel.BorderSizePixel = 0
        TextLabel.BackgroundTransparency = 1
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel.TextScaled = true
        TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        TextLabel.TextSize = 14
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.Parent = Frame

        local TextLabel = Instance.new("TextLabel")
        TextLabel.TextWrapped = true
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.Text = "2. Script vulnerbilities confirmed to contain Malware."
        TextLabel.Size = UDim2.new(0.7110481858253479, 0, 0.0470588281750679, 0)
        TextLabel.Position = UDim2.new(0.5, 0, 0.6095293760299683, 0)
        TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel.BorderSizePixel = 0
        TextLabel.BackgroundTransparency = 1
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel.TextScaled = true
        TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        TextLabel.TextSize = 14
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.Parent = Frame

        local TextLabel = Instance.new("TextLabel")
        TextLabel.TextWrapped = true
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.Text = "Both of these reasons give people access to all of your social media accounts."
        TextLabel.Size = UDim2.new(0.7917847037315369, 0, 0.05411764979362488, 0)
        TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel.BorderSizePixel = 0
        TextLabel.BackgroundTransparency = 1
        TextLabel.Position = UDim2.new(0.5, 0, 0.7106470465660095, 0)
        TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        TextLabel.TextSize = 14
        TextLabel.TextScaled = true
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.Parent = Frame

        local TextLabel = Instance.new("TextLabel")
        TextLabel.TextWrapped = true
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.Text = "To see if you're a victim, We highly suggest you read the reddit post copied to your clipboard."
        TextLabel.Size = UDim2.new(0.9121813178062439, 0, 0.05411764979362488, 0)
        TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel.BorderSizePixel = 0
        TextLabel.BackgroundTransparency = 1
        TextLabel.Position = UDim2.new(0.5, 0, 0.7620000243186951, 0)
        TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        TextLabel.TextSize = 14
        TextLabel.TextScaled = true
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.Parent = Frame

        local GoAway = Instance.new("ImageButton")
        GoAway.AnchorPoint = Vector2.new(0.5, 0.5)
        GoAway.Name = "GoAway"
        GoAway.Position = UDim2.new(0.5, 0, 0.8920000195503235, 0)
        GoAway.BorderColor3 = Color3.fromRGB(0, 0, 0)
        GoAway.Size = UDim2.new(0.37110480666160583, 0, 0.13882353901863098, 0)
        GoAway.BorderSizePixel = 0
        GoAway.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
        GoAway.Parent = Frame

        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(1, 0)
        UICorner.Parent = GoAway

        local TextLabel = Instance.new("TextLabel")
        TextLabel.TextWrapped = true
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.Text = "Continue"
        TextLabel.Size = UDim2.new(0.8282442688941956, 0, 0.5254237055778503, 0)
        TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel.BorderSizePixel = 0
        TextLabel.BackgroundTransparency = 1
        TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        TextLabel.TextSize = 14
        TextLabel.TextScaled = true
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.Parent = GoAway

        local AspectRatio = Instance.new("UIAspectRatioConstraint")
        AspectRatio.AspectRatio = 1.6611765623092651
        AspectRatio.Name = "AspectRatio"
        AspectRatio.Parent = Frame

        GoAway.MouseButton1Click:Connect(function()
            ScreenGui:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/IcantAffordSynapse/swaghub/refs/heads/main/swagscript.lua"))()
        end)
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IcantAffordSynapse/swaghub/refs/heads/main/swagscript.lua"))()
    end
end)
