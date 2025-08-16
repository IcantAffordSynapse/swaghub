local swaghublib = {}

local UIS = game:GetService("UserInputService")

function swaghublib:Window(name)
    local sliderInUse = false

    function dragify(Frame)
        local dragToggle = nil
        local dragInput = nil
        local dragStart = nil
        local startPos = nil

        local function updateInput(input)
            local Delta = input.Position - dragStart
            local Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + Delta.X,
                startPos.Y.Scale, startPos.Y.Offset + Delta.Y
            )
            game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
        end

        Frame.InputBegan:Connect(function(input)
            -- Block dragging while slider is in use
            if sliderInUse then return end

            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) 
            and UIS:GetFocusedTextBox() == nil then
                dragToggle = true
                dragStart = input.Position
                startPos = Frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragToggle = false
                    end
                end)
            end
        end)

        Frame.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)

        UIS.InputChanged:Connect(function(input)
            if input == dragInput and dragToggle then
                updateInput(input)
            end
        end)
    end

    local SWAGHUB = Instance.new("ScreenGui")
    SWAGHUB.Name = "SWAGHUB"
    SWAGHUB.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
    SWAGHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    SWAGHUB.Parent = game:GetService("CoreGui")

    local MainSection = Instance.new("Frame")
    MainSection.AnchorPoint = Vector2.new(0.5, 0.5)
    MainSection.Name = "MainSection"
    MainSection.Position = UDim2.new(0.2747972905635834, 0, 0.5715174674987793, 0)
    MainSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MainSection.Size = UDim2.new(0.3881644010543823, 0, 0.4527363181114197, 0)
    MainSection.BorderSizePixel = 0
    MainSection.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    MainSection.Parent = SWAGHUB

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = MainSection

    local Frame = Instance.new("Frame")
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.Size = UDim2.new(1, 0, 0.16067653894424438, 0)
    Frame.Position = UDim2.new(0.5, 0, 0.08033826947212219, 0)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.ZIndex = 2
    Frame.BorderSizePixel = 0
    Frame.BackgroundColor3 = Color3.fromRGB(26, 28, 29)
    Frame.Parent = MainSection

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = Frame

    local Frame = Instance.new("Frame")
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.Position = UDim2.new(0.5, 0, 0.11627907305955887, 0)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.Size = UDim2.new(1, 0, 0.08879492431879044, 0)
    Frame.BorderSizePixel = 0
    Frame.BackgroundColor3 = Color3.fromRGB(26, 28, 29)
    Frame.Parent = MainSection

    local Header = Instance.new("TextLabel")
    Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    Header.AnchorPoint = Vector2.new(0.5, 0.5)
    Header.ZIndex = 3
    Header.TextSize = 14
    Header.Size = UDim2.new(0.3333333432674408, 0, 0.08456659317016602, 0)
    Header.TextColor3 = Color3.fromRGB(255, 255, 255)
    Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Header.Text = name
    Header.Name = "Header"
    Header.TextWrapped = true
    Header.BackgroundTransparency = 1
    Header.TextXAlignment = Enum.TextXAlignment.Left
    Header.Position = UDim2.new(0.2017543911933899, 0, 0.08033826947212219, 0)
    Header.BorderSizePixel = 0
    Header.TextScaled = true
    Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Header.Parent = MainSection

    local Divider = Instance.new("Frame")
    Divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Divider.AnchorPoint = Vector2.new(0.5, 0.5)
    Divider.Name = "Divider"
    Divider.BackgroundTransparency = 0.800000011920929
    Divider.Position = UDim2.new(0.5, 0, 0.1599999964237213, 0)
    Divider.Size = UDim2.new(1, 0, 0.00229416462, 0)
    Divider.ZIndex = 4
    Divider.BorderSizePixel = 0
    Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Divider.Parent = MainSection

    local CloseBtn = Instance.new("ImageButton")
    CloseBtn.Active = false
    CloseBtn.BorderColor3 = Color3.fromRGB(27, 42, 53)
    CloseBtn.Name = "CloseBtn"
    CloseBtn.AnchorPoint = Vector2.new(0.5, 0.5)
    CloseBtn.Selectable = false
    CloseBtn.BackgroundTransparency = 0.20000000298023224
    CloseBtn.Position = UDim2.new(0.9482391476631165, 0, 0.08163320273160934, 0)
    CloseBtn.Size = UDim2.new(0.04738110676407814, 0, 0.08197679370641708, 0)
    CloseBtn.ZIndex = 5
    CloseBtn.AutomaticSize = Enum.AutomaticSize.Y
    CloseBtn.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
    CloseBtn.Parent = MainSection

    local Corner = Instance.new("UICorner")
    Corner.Name = "Corner"
    Corner.CornerRadius = UDim.new(0, 3)
    Corner.Parent = CloseBtn

    local Border = Instance.new("UIStroke")
    Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    Border.Transparency = 0.800000011920929
    Border.Name = "Border"
    Border.Color = Color3.fromRGB(255, 255, 255)
    Border.Parent = CloseBtn

    local KeyInput = Instance.new("TextLabel")
    KeyInput.TextWrapped = true
    KeyInput.Name = "KeyInput"
    KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
    KeyInput.TextTransparency = 0.5
    KeyInput.Text = "X"
    KeyInput.TextScaled = true
    KeyInput.Selectable = true
    KeyInput.AnchorPoint = Vector2.new(0.5, 0.5)
    KeyInput.BorderColor3 = Color3.fromRGB(27, 42, 53)
    KeyInput.BackgroundTransparency = 1
    KeyInput.Position = UDim2.new(0.5, 0, 0.5, 0)
    KeyInput.Active = true
    KeyInput.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    KeyInput.TextSize = 14
    KeyInput.Size = UDim2.new(0.763157844543457, 0, 0.7479041218757629, 0)
    KeyInput.Parent = CloseBtn

    local HideBtn = Instance.new("ImageButton")
    HideBtn.Active = false
    HideBtn.BorderColor3 = Color3.fromRGB(27, 42, 53)
    HideBtn.Name = "HideBtn"
    HideBtn.AnchorPoint = Vector2.new(0.5, 0.5)
    HideBtn.Selectable = false
    HideBtn.BackgroundTransparency = 0.20000000298023224
    HideBtn.Position = UDim2.new(0.895203709602356, 0, 0.08163320273160934, 0)
    HideBtn.Size = UDim2.new(0.04738110676407814, 0, 0.08197679370641708, 0)
    HideBtn.ZIndex = 5
    HideBtn.AutomaticSize = Enum.AutomaticSize.Y
    HideBtn.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
    HideBtn.Parent = MainSection

    local Corner = Instance.new("UICorner")
    Corner.Name = "Corner"
    Corner.CornerRadius = UDim.new(0, 3)
    Corner.Parent = HideBtn

    local Border = Instance.new("UIStroke")
    Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    Border.Transparency = 0.800000011920929
    Border.Name = "Border"
    Border.Color = Color3.fromRGB(255, 255, 255)
    Border.Parent = HideBtn

    local KeyInput = Instance.new("TextLabel")
    KeyInput.TextWrapped = true
    KeyInput.Name = "KeyInput"
    KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
    KeyInput.TextTransparency = 0.5
    KeyInput.Text = "_"
    KeyInput.TextScaled = true
    KeyInput.Selectable = true
    KeyInput.AnchorPoint = Vector2.new(0.5, 0.5)
    KeyInput.BorderColor3 = Color3.fromRGB(27, 42, 53)
    KeyInput.BackgroundTransparency = 1
    KeyInput.Position = UDim2.new(0.5, 0, 0.5, 0)
    KeyInput.Active = true
    KeyInput.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    KeyInput.TextSize = 14
    KeyInput.Size = UDim2.new(0.763157844543457, 0, 0.7479041218757629, 0)
    KeyInput.Parent = HideBtn

    local SectionsContainer = Instance.new("Frame")
    SectionsContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SectionsContainer.AnchorPoint = Vector2.new(0.5, 0.5)
    SectionsContainer.BackgroundTransparency = 1
    SectionsContainer.Position = UDim2.new(0.0538388267159462, 0, 0.5109889507293701, 0)
    SectionsContainer.Name = "SectionsContainer"
    SectionsContainer.Size = UDim2.new(0.07874932885169983, 0, 0.6456043720245361, 0)
    SectionsContainer.BorderSizePixel = 0
    SectionsContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SectionsContainer.Parent = MainSection

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Padding = UDim.new(0.019999999552965164, 0)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Parent = SectionsContainer

    local Divider2 = Instance.new("Frame")
    Divider2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Divider2.AnchorPoint = Vector2.new(0.5, 0.5)
    Divider2.Name = "Divider"
    Divider2.BackgroundTransparency = 0.800000011920929
    Divider2.Position = UDim2.new(0.10786034911870956, 0, 0.5805186033248901, 0)
    Divider2.Size = UDim2.new(0.00136558642, 0, 0.838923037, 0)
    Divider2.ZIndex = 4
    Divider2.BorderSizePixel = 0
    Divider2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Divider2.Parent = MainSection

    local SettingsBtn = Instance.new("ImageButton")
    SettingsBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SettingsBtn.Position = UDim2.new(0.054021526128053665, 0, 0.9136832356452942, 0)
    SettingsBtn.Size = UDim2.new(0.07911492884159088, 0, 0.13505898416042328, 0)
    SettingsBtn.AnchorPoint = Vector2.new(0.5, 0.5)
    SettingsBtn.Image = "rbxassetid://16884179038"
    SettingsBtn.Name = "SettingsBtn"
    SettingsBtn.ImageRectSize = Vector2.new(108, 108)
    SettingsBtn.ImageRectOffset = Vector2.new(578, 550)
    SettingsBtn.BorderSizePixel = 0
    SettingsBtn.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
    SettingsBtn.Parent = MainSection

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(1, 0)
    UICorner.Parent = SettingsBtn

    local Border = Instance.new("UIStroke")
    Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    Border.Transparency = 0.800000011920929
    Border.Name = "Border"
    Border.Color = Color3.fromRGB(255, 255, 255)
    Border.Parent = SettingsBtn

    local Divider3 = Instance.new("Frame")
    Divider3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Divider3.AnchorPoint = Vector2.new(0.5, 0.5)
    Divider3.Name = "Divider"
    Divider3.BackgroundTransparency = 0.800000011920929
    Divider3.Position = UDim2.new(0.4084342122077942, 0, 0.5805186033248901, 0)
    Divider3.Size = UDim2.new(0.00036558645660988986, 0, 0.8389230370521545, 0)
    Divider3.ZIndex = 4
    Divider3.BorderSizePixel = 0
    Divider3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Divider3.Parent = MainSection

    local AspectRatio = Instance.new("UIAspectRatioConstraint")
    AspectRatio.AspectRatio = 1.7094162702560425
    AspectRatio.Name = "AspectRatio"
    AspectRatio.Parent = MainSection

    local SettingsTab = Instance.new("Frame")
    SettingsTab.Visible = false
    SettingsTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SettingsTab.AnchorPoint = Vector2.new(0.5, 0.5)
    SettingsTab.Name = "SettingsTab"
    SettingsTab.Position = UDim2.new(0.5929507613182068, 0, 0.5629352927207947, 0)
    SettingsTab.Size = UDim2.new(0.16028958559036255, 0, 0.3907959461212158, 0)
    SettingsTab.ZIndex = 2
    SettingsTab.BorderSizePixel = 0
    SettingsTab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    SettingsTab.Parent = SWAGHUB

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = SettingsTab

    local AspectRatio = Instance.new("UIAspectRatioConstraint")
    AspectRatio.AspectRatio = 0.8177729249000549
    AspectRatio.Name = "AspectRatio"
    AspectRatio.Parent = SettingsTab

    local Header = Instance.new("TextLabel")
    Header.TextWrapped = true
    Header.Name = "Header"
    Header.TextColor3 = Color3.fromRGB(129, 129, 129)
    Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Header.Text = "Coming Soon"
    Header.TextSize = 14
    Header.Size = UDim2.new(0.9044724106788635, 0, 0.08623653650283813, 0)
    Header.AnchorPoint = Vector2.new(0.5, 0.5)
    Header.BorderSizePixel = 0
    Header.BackgroundTransparency = 1
    Header.Position = UDim2.new(0.5, 0, 0.5, 0)
    Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    Header.ZIndex = 3
    Header.TextScaled = true
    Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Header.Parent = SettingsTab

    local OpenLib = Instance.new("ImageButton")
    OpenLib.BorderColor3 = Color3.fromRGB(0, 0, 0)
    OpenLib.AnchorPoint = Vector2.new(0.5, 0.5)
    OpenLib.ImageRectOffset = Vector2.new(391, 902)
    OpenLib.Name = "OpenLib"
    OpenLib.Position = UDim2.new(0.5, 0, 0.8199999928474426, 0)
    OpenLib.Size = UDim2.new(0.03185509145259857, 0, 0.06343283504247665, 0)
    OpenLib.ImageRectSize = Vector2.new(124, 108)
    OpenLib.BorderSizePixel = 0
    OpenLib.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    OpenLib.Parent = SWAGHUB
    OpenLib.Visible = false

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(1, 0)
    UICorner.Parent = OpenLib

    local blahblahblah = Instance.new("ImageLabel")
    blahblahblah.Name = "blahblahblah"
    blahblahblah.Active = true
    blahblahblah.BorderColor3 = Color3.fromRGB(0, 0, 0)
    blahblahblah.Size = UDim2.new(0.7843137383460999, 0, 0.7843137383460999, 0)
    blahblahblah.Selectable = true
    blahblahblah.Position = UDim2.new(0.5, 0, 0.5, 0)
    blahblahblah.AnchorPoint = Vector2.new(0.5, 0.5)
    blahblahblah.Image = "rbxassetid://14755021367"
    blahblahblah.BackgroundTransparency = 1
    blahblahblah.ImageRectSize = Vector2.new(124, 108)
    blahblahblah.ImageRectOffset = Vector2.new(391, 902)
    blahblahblah.BorderSizePixel = 0
    blahblahblah.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    blahblahblah.Parent = OpenLib

    local AspectRatio = Instance.new("UIAspectRatioConstraint")
    AspectRatio.Name = "AspectRatio"
    AspectRatio.Parent = OpenLib

    OpenLib.MouseButton1Click:Connect(function()
        OpenLib.Visible = false
        MainSection.Visible = true
    end)

    HideBtn.MouseButton1Click:Connect(function()
        OpenLib.Visible = true
        MainSection.Visible = false
    end)

    CloseBtn.MouseButton1Click:Connect(function()
        SWAGHUB:Destroy()
    end)

    local mouse = game:GetService("Players").LocalPlayer:GetMouse()

    local function isInsideFrame(guiObject, x, y)
        local absPos = guiObject.AbsolutePosition
        local absSize = guiObject.AbsoluteSize

        return x >= absPos.X and x <= absPos.X + absSize.X and
            y >= absPos.Y and y <= absPos.Y + absSize.Y
    end

    SettingsTab.Draggable = true
    SettingsTab.Active = true
    SettingsTab.Selectable = true
    dragify(MainSection)

    UIS.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end

        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            local mouseX = UIS:GetMouseLocation().X
            local mouseY = UIS:GetMouseLocation().Y

            if not isInsideFrame(SettingsTab, mouseX, mouseY) then
                SettingsTab.Visible = false
            end
        end
    end)

    SettingsBtn.MouseButton1Click:Connect(function()
        SettingsTab.Visible = not SettingsTab.Visible
    end)

    local sections = {}

    function sections:Server(name, img)
        local ImageButton2 = Instance.new("ImageButton")
        ImageButton2.AnchorPoint = Vector2.new(0.5, 0.5)
        ImageButton2.Position = UDim2.new(0.5, 0, 0.10599103569984436, 0)
        ImageButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ImageButton2.Size = UDim2.new(1, 0, 0.21198207139968872, 0)
        ImageButton2.BorderSizePixel = 0
        ImageButton2.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
        ImageButton2.Parent = SectionsContainer
        ImageButton2.Image = img

        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(1, 0)
        UICorner.Parent = ImageButton2
        local TabSectionsContainer = Instance.new("Frame")
        TabSectionsContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TabSectionsContainer.AnchorPoint = Vector2.new(0.5, 0.5)
        TabSectionsContainer.BackgroundTransparency = 1
        TabSectionsContainer.Position = UDim2.new(0.25653159618377686, 0, 0.579670250415802, 0)
        TabSectionsContainer.Name = "TabSectionsContainer"
        TabSectionsContainer.Size = UDim2.new(0.26196205615997314, 0, 0.7829670310020447, 0)
        TabSectionsContainer.BorderSizePixel = 0
        TabSectionsContainer.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
        TabSectionsContainer.Parent = MainSection

        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Padding = UDim.new(0.019999999552965164, 0)
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Parent = TabSectionsContainer

        ImageButton2.MouseButton1Click:Connect(function()
            for i, v in pairs(MainSection:GetChildren()) do
                if v.Name == "TabSectionsContainer" or v.Name == "SectionContainer" then
                    v.Visible = false
                end
            end

            TabSectionsContainer.Visible = true
        end)

        local channels = {}
        
        function channels:Channel(name)
            local ImageButton = Instance.new("ImageButton")
            ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
            ImageButton.Position = UDim2.new(0.5, 0, 0.0640350878238678, 0)
            ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageButton.Size = UDim2.new(1, 0, 0.1280701756477356, 0)
            ImageButton.BorderSizePixel = 0
            ImageButton.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
            ImageButton.Parent = TabSectionsContainer

            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0.20000000298023224, 0)
            UICorner.Parent = ImageButton

            local Border = Instance.new("UIStroke")
            Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            Border.Transparency = 0.800000011920929
            Border.Name = "Border"
            Border.Color = Color3.fromRGB(255, 255, 255)
            Border.Parent = ImageButton

            local Header = Instance.new("TextLabel")
            Header.TextWrapped = true
            Header.Name = "Header"
            Header.TextColor3 = Color3.fromRGB(255, 255, 255)
            Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Header.Text = name
            Header.TextSize = 14
            Header.Size = UDim2.new(0.8732109069824219, 0, 0.5290124416351318, 0)
            Header.AnchorPoint = Vector2.new(0.5, 0.5)
            Header.BorderSizePixel = 0
            Header.BackgroundTransparency = 1
            Header.Position = UDim2.new(0.5, 0, 0.5000001788139343, 0)
            Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
            Header.ZIndex = 3
            Header.TextScaled = true
            Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Header.Parent = ImageButton

            -- Channel Section
            local SectionContainer = Instance.new("ScrollingFrame")
            SectionContainer.Visible = false
            SectionContainer.Name = "SectionContainer"
            SectionContainer.AutomaticCanvasSize = Enum.AutomaticSize.Y
            SectionContainer.ScrollBarThickness = 0
            SectionContainer.Size = UDim2.new(0.5416024923324585, 0, 0.7829670310020447, 0)
            SectionContainer.Selectable = false
            SectionContainer.AnchorPoint = Vector2.new(0.5, 0.5)
            SectionContainer.ScrollBarImageTransparency = 1
            SectionContainer.BackgroundTransparency = 1
            SectionContainer.Position = UDim2.new(0.7006137371063232, 0, 0.579670250415802, 0)
            SectionContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SectionContainer.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
            SectionContainer.BorderSizePixel = 0
            SectionContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
            SectionContainer.Parent = MainSection

            local UIListLayout = Instance.new("UIListLayout")
            UIListLayout.Padding = UDim.new(0.019999999552965164, 0)
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Parent = SectionContainer

            ImageButton.MouseButton1Click:Connect(function()
                for i, v in pairs(MainSection:GetChildren()) do
                    if v.Name == "SectionContainer" then
                        v.Visible = false
                    end
                end
                SectionContainer.Visible = true
            end)

            local instances = {}

            function instances:Label(txt)
                local LabelInstance = Instance.new("Frame")
                LabelInstance.Active = true
                LabelInstance.BorderColor3 = Color3.fromRGB(0, 0, 0)
                LabelInstance.AnchorPoint = Vector2.new(0.5, 0.5)
                LabelInstance.Name = "LabelInstance"
                LabelInstance.Position = UDim2.new(0.49529558420181274, 0, 0.40578946471214294, 0)
                LabelInstance.Size = UDim2.new(0.9905904531478882, 0, 0.1280701756477356, 0)
                LabelInstance.Selectable = true
                LabelInstance.BorderSizePixel = 0
                LabelInstance.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
                LabelInstance.Parent = SectionContainer

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0.20000000298023224, 0)
                UICorner.Parent = LabelInstance

                local Border = Instance.new("UIStroke")
                Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                Border.Transparency = 0.800000011920929
                Border.Name = "Border"
                Border.Color = Color3.fromRGB(255, 255, 255)
                Border.Parent = LabelInstance

                local Header = Instance.new("TextLabel")
                Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
                Header.AnchorPoint = Vector2.new(0.5, 0.5)
                Header.ZIndex = 3
                Header.TextSize = 14
                Header.Size = UDim2.new(0.7901248335838318, 0, 0.5290124416351318, 0)
                Header.TextColor3 = Color3.fromRGB(194, 194, 194)
                Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Header.Text = txt
                Header.Name = "Header"
                Header.TextWrapped = true
                Header.BackgroundTransparency = 1
                Header.TextXAlignment = Enum.TextXAlignment.Left
                Header.Position = UDim2.new(0.5415430068969727, 0, 0.49999988079071045, 0)
                Header.BorderSizePixel = 0
                Header.TextScaled = true
                Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Header.Parent = LabelInstance

                local Ico = Instance.new("ImageLabel")
                Ico.ImageColor3 = Color3.fromRGB(194, 194, 194)
                Ico.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Ico.Name = "Ico"
                Ico.Size = UDim2.new(0.08087974041700363, 0, 0.7397260069847107, 0)
                Ico.Position = UDim2.new(0.07400000095367432, 0, 0.5, 0)
                Ico.AnchorPoint = Vector2.new(0.5, 0.5)
                Ico.Image = "rbxassetid://16884178261"
                Ico.BackgroundTransparency = 1
                Ico.ImageRectSize = Vector2.new(36, 36)
                Ico.ImageRectOffset = Vector2.new(418, 0)
                Ico.BorderSizePixel = 0
                Ico.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Ico.Parent = LabelInstance
            end

            function instances:Button(txt, cb)
                local ButtonInstance = Instance.new("ImageButton")
                ButtonInstance.AnchorPoint = Vector2.new(0.5, 0.5)
                ButtonInstance.Name = "ButtonInstance"
                ButtonInstance.Position = UDim2.new(0.5, 0, 0.0640350878238678, 0)
                ButtonInstance.BorderColor3 = Color3.fromRGB(0, 0, 0)
                ButtonInstance.Size = UDim2.new(0.9909999966621399, 0, 0.12800000607967377, 0)
                ButtonInstance.BorderSizePixel = 0
                ButtonInstance.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
                ButtonInstance.Parent = SectionContainer

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0.20000000298023224, 0)
                UICorner.Parent = ButtonInstance

                local Border = Instance.new("UIStroke")
                Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                Border.Transparency = 0.800000011920929
                Border.Name = "Border"
                Border.Color = Color3.fromRGB(255, 255, 255)
                Border.Parent = ButtonInstance

                local Header = Instance.new("TextLabel")
                Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
                Header.AnchorPoint = Vector2.new(0.5, 0.5)
                Header.ZIndex = 3
                Header.TextSize = 14
                Header.Size = UDim2.new(0.7901248335838318, 0, 0.5290124416351318, 0)
                Header.TextColor3 = Color3.fromRGB(255, 255, 255)
                Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Header.Text = txt
                Header.Name = "Header"
                Header.TextWrapped = true
                Header.BackgroundTransparency = 1
                Header.TextXAlignment = Enum.TextXAlignment.Left
                Header.Position = UDim2.new(0.5415430068969727, 0, 0.49999988079071045, 0)
                Header.BorderSizePixel = 0
                Header.TextScaled = true
                Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Header.Parent = ButtonInstance

                local Ico = Instance.new("ImageLabel")
                Ico.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Ico.Name = "Ico"
                Ico.Size = UDim2.new(0.08084630966186523, 0, 0.7401314973831177, 0)
                Ico.Position = UDim2.new(0.07400000095367432, 0, 0.5, 0)
                Ico.AnchorPoint = Vector2.new(0.5, 0.5)
                Ico.Image = "rbxassetid://16884178577"
                Ico.BackgroundTransparency = 1
                Ico.ImageRectSize = Vector2.new(36, 36)
                Ico.ImageRectOffset = Vector2.new(0, 152)
                Ico.BorderSizePixel = 0
                Ico.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Ico.Parent = ButtonInstance

                ButtonInstance.MouseButton1Click:Connect(cb)
            end

            function instances:Toggle(txt, cb)
                local curTog = false
                local ToggleInstance = Instance.new("ImageButton")
                ToggleInstance.AnchorPoint = Vector2.new(0.5, 0.5)
                ToggleInstance.Name = "ToggleInstance"
                ToggleInstance.Position = UDim2.new(0.5, 0, 0.0640350878238678, 0)
                ToggleInstance.BorderColor3 = Color3.fromRGB(0, 0, 0)
                ToggleInstance.Size = UDim2.new(0.9909999966621399, 0, 0.12800000607967377, 0)
                ToggleInstance.BorderSizePixel = 0
                ToggleInstance.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
                ToggleInstance.Parent = SectionContainer

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0.20000000298023224, 0)
                UICorner.Parent = ToggleInstance

                local Border = Instance.new("UIStroke")
                Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                Border.Transparency = 0.800000011920929
                Border.Name = "Border"
                Border.Color = Color3.fromRGB(255, 255, 255)
                Border.Parent = ToggleInstance

                local Header = Instance.new("TextLabel")
                Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
                Header.AnchorPoint = Vector2.new(0.5, 0.5)
                Header.ZIndex = 3
                Header.TextSize = 14
                Header.Size = UDim2.new(0.6523867845535278, 0, 0.5290125012397766, 0)
                Header.TextColor3 = Color3.fromRGB(255, 255, 255)
                Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Header.Text = txt
                Header.Name = "Header"
                Header.TextWrapped = true
                Header.BackgroundTransparency = 1
                Header.TextXAlignment = Enum.TextXAlignment.Left
                Header.Position = UDim2.new(0.4726738929748535, 0, 0.5000002384185791, 0)
                Header.BorderSizePixel = 0
                Header.TextScaled = true
                Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Header.Parent = ToggleInstance

                local Ico = Instance.new("ImageLabel")
                Ico.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Ico.Name = "Ico"
                Ico.Size = UDim2.new(0.08084630966186523, 0, 0.7401314973831177, 0)
                Ico.Position = UDim2.new(0.07400000095367432, 0, 0.5, 0)
                Ico.AnchorPoint = Vector2.new(0.5, 0.5)
                Ico.Image = "rbxassetid://16884178261"
                Ico.BackgroundTransparency = 1
                Ico.ImageRectSize = Vector2.new(36, 36)
                Ico.ImageRectOffset = Vector2.new(190, 228)
                Ico.BorderSizePixel = 0
                Ico.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Ico.Parent = ToggleInstance

                local ToggleBG = Instance.new("Frame")
                ToggleBG.AnchorPoint = Vector2.new(0.5, 0.5)
                ToggleBG.Name = "ToggleBG"
                ToggleBG.Position = UDim2.new(0.9110000133514404, 0, 0.5, 0)
                ToggleBG.BorderColor3 = Color3.fromRGB(0, 0, 0)
                ToggleBG.Size = UDim2.new(0.11983335018157959, 0, 0.5955804586410522, 0)
                ToggleBG.BorderSizePixel = 0
                ToggleBG.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
                ToggleBG.Parent = ToggleInstance

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(1, 0)
                UICorner.Parent = ToggleBG

                local ToggleIndicator = Instance.new("Frame")
                ToggleIndicator.AnchorPoint = Vector2.new(0, 0.5)
                ToggleIndicator.Name = "ToggleIndicator"
                ToggleIndicator.Position = UDim2.new(0, 0, 0.5, 0)
                ToggleIndicator.BorderColor3 = Color3.fromRGB(0, 0, 0)
                ToggleIndicator.Size = UDim2.new(0.5475069284439087, 0, 0.9999999403953552, 0)
                ToggleIndicator.BorderSizePixel = 0
                ToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleIndicator.Parent = ToggleBG

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(1, 0)
                UICorner.Parent = ToggleIndicator

                ToggleInstance.MouseButton1Click:Connect(function()
                    if curTog then
                        ToggleIndicator:TweenPosition(UDim2.new(0, 0, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.2, true)
                        curTog = false
                        pcall(cb, curTog)
                    else
                        ToggleIndicator:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.2, true)
                        curTog = true
                        pcall(cb, curTog)
                    end
                end)
            end

            function instances:TextBox(txt, cb)
                local TextBoxInstance = Instance.new("Frame")
                TextBoxInstance.Active = true
                TextBoxInstance.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextBoxInstance.AnchorPoint = Vector2.new(0.5, 0.5)
                TextBoxInstance.Name = "TextBoxInstance"
                TextBoxInstance.Position = UDim2.new(0.5, 0, 0.38298243284225464, 0)
                TextBoxInstance.Size = UDim2.new(0.9909999966621399, 0, 0.17399999499320984, 0)
                TextBoxInstance.Selectable = true
                TextBoxInstance.BorderSizePixel = 0
                TextBoxInstance.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
                TextBoxInstance.Parent = SectionContainer

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0.20000000298023224, 0)
                UICorner.Parent = TextBoxInstance

                local Border = Instance.new("UIStroke")
                Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                Border.Transparency = 0.800000011920929
                Border.Name = "Border"
                Border.Color = Color3.fromRGB(255, 255, 255)
                Border.Parent = TextBoxInstance

                local Header = Instance.new("TextLabel")
                Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
                Header.AnchorPoint = Vector2.new(0.5, 0.5)
                Header.ZIndex = 3
                Header.TextSize = 14
                Header.Size = UDim2.new(0.7901248931884766, 0, 0.306790292263031, 0)
                Header.TextColor3 = Color3.fromRGB(255, 255, 255)
                Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Header.Text = txt
                Header.Name = "Header"
                Header.TextWrapped = true
                Header.BackgroundTransparency = 1
                Header.TextXAlignment = Enum.TextXAlignment.Left
                Header.Position = UDim2.new(0.5415430068969727, 0, 0.36868709325790405, 0)
                Header.BorderSizePixel = 0
                Header.TextScaled = true
                Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Header.Parent = TextBoxInstance

                local Ico = Instance.new("ImageLabel")
                Ico.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Ico.Name = "Ico"
                Ico.Size = UDim2.new(0.08084630966186523, 0, 0.5444645881652832, 0)
                Ico.Position = UDim2.new(0.07400000095367432, 0, 0.5, 0)
                Ico.AnchorPoint = Vector2.new(0.5, 0.5)
                Ico.Image = "rbxassetid://16884178261"
                Ico.BackgroundTransparency = 1
                Ico.ImageRectSize = Vector2.new(36, 36)
                Ico.ImageRectOffset = Vector2.new(114, 0)
                Ico.BorderSizePixel = 0
                Ico.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Ico.Parent = TextBoxInstance

                local TextInputFrame = Instance.new("Frame")
                TextInputFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                TextInputFrame.Name = "TextInputFrame"
                TextInputFrame.Position = UDim2.new(0.5400000214576721, 0, 0.699999988079071, 0)
                TextInputFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextInputFrame.Size = UDim2.new(0.7964858412742615, 0, 0.2621496319770813, 0)
                TextInputFrame.BorderSizePixel = 0
                TextInputFrame.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
                TextInputFrame.Parent = TextBoxInstance

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(1, 0)
                UICorner.Parent = TextInputFrame

                local Header = Instance.new("TextBox")
                Header.TextWrapped = true
                Header.Active = false
                Header.Selectable = false
                Header.AnchorPoint = Vector2.new(0.5, 0.5)
                Header.PlaceholderColor3 = Color3.fromRGB(30, 30, 30)
                Header.PlaceholderText = "Input"
                Header.TextSize = 14
                Header.Size = UDim2.new(0.8878692388534546, 0, 0.9999963045120239, 0)
                Header.TextColor3 = Color3.fromRGB(255, 255, 255)
                Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Header.Text = ""
                Header.Name = "Header"
                Header.ZIndex = 3
                Header.Position = UDim2.new(0.5, 0, 0.5000028610229492, 0)
                Header.BorderSizePixel = 0
                Header.BackgroundTransparency = 1
                Header.TextXAlignment = Enum.TextXAlignment.Left
                Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
                Header.ClearTextOnFocus = false
                Header.TextScaled = true
                Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Header.Parent = TextInputFrame

                Header:GetPropertyChangedSignal("Text"):Connect(function()
                    pcall(cb, Header.Text)
                end)
            end

            function instances:Dropdown(txt, optionsTable, cb)
                local DropdownInstance = Instance.new("ImageButton")
                DropdownInstance.AnchorPoint = Vector2.new(0.5, 0.5)
                DropdownInstance.Name = "DropdownInstance"
                DropdownInstance.Position = UDim2.new(0.5, 0, 0.0640350878238678, 0)
                DropdownInstance.BorderColor3 = Color3.fromRGB(0, 0, 0)
                DropdownInstance.Size = UDim2.new(0.9909999966621399, 0, 0.12800000607967377, 0)
                DropdownInstance.BorderSizePixel = 0
                DropdownInstance.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
                DropdownInstance.Parent = SectionContainer

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0.20000000298023224, 0)
                UICorner.Parent = DropdownInstance

                local Border = Instance.new("UIStroke")
                Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                Border.Transparency = 0.800000011920929
                Border.Name = "Border"
                Border.Color = Color3.fromRGB(255, 255, 255)
                Border.Parent = DropdownInstance

                local Header = Instance.new("TextLabel")
                Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
                Header.AnchorPoint = Vector2.new(0.5, 0.5)
                Header.ZIndex = 3
                Header.TextSize = 14
                Header.Size = UDim2.new(0.7901248335838318, 0, 0.5290124416351318, 0)
                Header.TextColor3 = Color3.fromRGB(255, 255, 255)
                Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Header.Text = txt
                Header.Name = "Header"
                Header.TextWrapped = true
                Header.BackgroundTransparency = 1
                Header.TextXAlignment = Enum.TextXAlignment.Left
                Header.Position = UDim2.new(0.5415430068969727, 0, 0.49999988079071045, 0)
                Header.BorderSizePixel = 0
                Header.TextScaled = true
                Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Header.Parent = DropdownInstance

                local Ico = Instance.new("ImageLabel")
                Ico.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Ico.Name = "Ico"
                Ico.Size = UDim2.new(0.08084630966186523, 0, 0.7401314973831177, 0)
                Ico.Position = UDim2.new(0.07400000095367432, 0, 0.5, 0)
                Ico.AnchorPoint = Vector2.new(0.5, 0.5)
                Ico.Image = "rbxassetid://16167590639"
                Ico.BackgroundTransparency = 1
                Ico.ImageRectSize = Vector2.new(36, 36)
                Ico.ImageRectOffset = Vector2.new(114, 442)
                Ico.BorderSizePixel = 0
                Ico.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Ico.Parent = DropdownInstance

                local Dropdown = Instance.new("Frame")
                Dropdown.Visible = false
                Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
                Dropdown.Name = "Dropdown"
                Dropdown.Position = UDim2.new(0.5929507613182068, 0, 0.5629352927207947, 0)
                Dropdown.Size = UDim2.new(0.16028958559036255, 0, 0.3907959461212158, 0)
                Dropdown.ZIndex = 2
                Dropdown.BorderSizePixel = 0
                Dropdown.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Dropdown.Parent = SWAGHUB

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0, 10)
                UICorner.Parent = Dropdown

                local DropdownContainer = Instance.new("ScrollingFrame")
                DropdownContainer.Active = true
                DropdownContainer.AutomaticCanvasSize = Enum.AutomaticSize.Y
                DropdownContainer.ScrollBarThickness = 6
                DropdownContainer.Name = "DropdownContainer"
                DropdownContainer.AnchorPoint = Vector2.new(0.5, 0.5)
                DropdownContainer.Size = UDim2.new(0.9340549111366272, 0, 0.9484406113624573, 0)
                DropdownContainer.BackgroundTransparency = 1
                DropdownContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
                DropdownContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
                DropdownContainer.BorderSizePixel = 0
                DropdownContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
                DropdownContainer.Parent = Dropdown

                local UIListLayout = Instance.new("UIListLayout")
                UIListLayout.Padding = UDim.new(0.009999999776482582, 0)
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.Parent = DropdownContainer

                local UIPadding = Instance.new("UIPadding")
                UIPadding.PaddingLeft = UDim.new(0.009999999776482582, 0)
                UIPadding.Parent = DropdownContainer

                local Header = Instance.new("TextLabel")
                Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
                Header.AnchorPoint = Vector2.new(0.5, 0.5)
                Header.ZIndex = 3
                Header.TextSize = 14
                Header.Size = UDim2.new(0.9044724106788635, 0, 0.04957416653633118, 0)
                Header.TextColor3 = Color3.fromRGB(129, 129, 129)
                Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Header.Text = txt
                Header.Name = "Header"
                Header.TextWrapped = true
                Header.BackgroundTransparency = 1
                Header.TextXAlignment = Enum.TextXAlignment.Left
                Header.Position = UDim2.new(0.4522365629673004, 0, 0.02478708326816559, 0)
                Header.BorderSizePixel = 0
                Header.TextScaled = true
                Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Header.Parent = DropdownContainer

                local AspectRatio = Instance.new("UIAspectRatioConstraint")
                AspectRatio.AspectRatio = 0.8177729249000549
                AspectRatio.Name = "AspectRatio"
                AspectRatio.Parent = Dropdown

                Dropdown.Draggable = true
                Dropdown.Active = true
                Dropdown.Selectable = true

                DropdownInstance.MouseButton1Click:Connect(function()
                    Dropdown.Visible = not Dropdown.Visible
                end)

                for i, v in pairs(optionsTable) do
                    local DropdownToggleInstance = Instance.new("ImageButton")
                    DropdownToggleInstance.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    DropdownToggleInstance.AnchorPoint = Vector2.new(0.5, 0.5)
                    DropdownToggleInstance.Name = "DropdownToggleInstance"
                    DropdownToggleInstance.Position = UDim2.new(0.4600837826728821, 0, 0.11535009741783142, 0)
                    DropdownToggleInstance.Size = UDim2.new(0.9201668500900269, 0, 0.11155178397893906, 0)
                    DropdownToggleInstance.BorderSizePixel = 0
                    DropdownToggleInstance.AutomaticSize = Enum.AutomaticSize.Y
                    DropdownToggleInstance.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
                    DropdownToggleInstance.Parent = DropdownContainer

                    local UICorner = Instance.new("UICorner")
                    UICorner.CornerRadius = UDim.new(0.20000000298023224, 0)
                    UICorner.Parent = DropdownToggleInstance

                    local Border = Instance.new("UIStroke")
                    Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                    Border.Transparency = 0.800000011920929
                    Border.Name = "Border"
                    Border.Color = Color3.fromRGB(255, 255, 255)
                    Border.Parent = DropdownToggleInstance

                    local Header = Instance.new("TextLabel")
                    Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
                    Header.AnchorPoint = Vector2.new(0.5, 0.5)
                    Header.ZIndex = 3
                    Header.TextSize = 14
                    Header.Size = UDim2.new(0.9044724702835083, 0, 0.5290124416351318, 0)
                    Header.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Header.Text = v
                    Header.Name = "Header"
                    Header.TextWrapped = true
                    Header.BackgroundTransparency = 1
                    Header.TextXAlignment = Enum.TextXAlignment.Left
                    Header.Position = UDim2.new(0.4843691289424896, 0, 0.5000000596046448, 0)
                    Header.BorderSizePixel = 0
                    Header.TextScaled = true
                    Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Header.Parent = DropdownToggleInstance

                    DropdownToggleInstance.MouseButton1Click:Connect(function()
                        pcall(cb, v)
                    end)
                end

                local addOns = {}

                function addOns:Add(t)
                    local DropdownToggleInstance = Instance.new("ImageButton")
                    DropdownToggleInstance.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    DropdownToggleInstance.AnchorPoint = Vector2.new(0.5, 0.5)
                    DropdownToggleInstance.Name = "DropdownToggleInstance"
                    DropdownToggleInstance.Position = UDim2.new(0.4600837826728821, 0, 0.11535009741783142, 0)
                    DropdownToggleInstance.Size = UDim2.new(0.9201668500900269, 0, 0.11155178397893906, 0)
                    DropdownToggleInstance.BorderSizePixel = 0
                    DropdownToggleInstance.AutomaticSize = Enum.AutomaticSize.Y
                    DropdownToggleInstance.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
                    DropdownToggleInstance.Parent = DropdownContainer

                    local UICorner = Instance.new("UICorner")
                    UICorner.CornerRadius = UDim.new(0.20000000298023224, 0)
                    UICorner.Parent = DropdownToggleInstance

                    local Border = Instance.new("UIStroke")
                    Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                    Border.Transparency = 0.800000011920929
                    Border.Name = "Border"
                    Border.Color = Color3.fromRGB(255, 255, 255)
                    Border.Parent = DropdownToggleInstance

                    local Header = Instance.new("TextLabel")
                    Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
                    Header.AnchorPoint = Vector2.new(0.5, 0.5)
                    Header.ZIndex = 3
                    Header.TextSize = 14
                    Header.Size = UDim2.new(0.9044724702835083, 0, 0.5290124416351318, 0)
                    Header.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Header.Text = v
                    Header.Name = "Header"
                    Header.TextWrapped = true
                    Header.BackgroundTransparency = 1
                    Header.TextXAlignment = Enum.TextXAlignment.Left
                    Header.Position = UDim2.new(0.4843691289424896, 0, 0.5000000596046448, 0)
                    Header.BorderSizePixel = 0
                    Header.TextScaled = true
                    Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Header.Parent = DropdownToggleInstance

                    DropdownToggleInstance.MouseButton1Click:Connect(function()
                        pcall(cb, v)
                    end)
                end

                return addOns
            end

            function instances:Slider(name, min, max, norm, cb)
                local SliderInstance = Instance.new("Frame")
                SliderInstance.Active = true
                SliderInstance.BorderColor3 = Color3.fromRGB(0, 0, 0)
                SliderInstance.AnchorPoint = Vector2.new(0.5, 0.5)
                SliderInstance.Name = "SliderInstance"
                SliderInstance.Position = UDim2.new(0.5, 0, 0.38298243284225464, 0)
                SliderInstance.Size = UDim2.new(0.9909999966621399, 0, 0.17399999499320984, 0)
                SliderInstance.Selectable = true
                SliderInstance.BorderSizePixel = 0
                SliderInstance.BackgroundColor3 = Color3.fromRGB(25, 27, 29)
                SliderInstance.Parent = SectionContainer

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0.20000000298023224, 0)
                UICorner.Parent = SliderInstance

                local Border = Instance.new("UIStroke")
                Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                Border.Transparency = 0.800000011920929
                Border.Name = "Border"
                Border.Color = Color3.fromRGB(255, 255, 255)
                Border.Parent = SliderInstance

                local Header = Instance.new("TextLabel")
                Header.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
                Header.AnchorPoint = Vector2.new(0.5, 0.5)
                Header.ZIndex = 3
                Header.TextSize = 14
                Header.Size = UDim2.new(0.46965011954307556, 0, 0.306790292263031, 0)
                Header.TextColor3 = Color3.fromRGB(255, 255, 255)
                Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Header.Text = name
                Header.Name = "Header"
                Header.TextWrapped = true
                Header.BackgroundTransparency = 1
                Header.TextXAlignment = Enum.TextXAlignment.Left
                Header.Position = UDim2.new(0.38130563497543335, 0, 0.36868709325790405, 0)
                Header.BorderSizePixel = 0
                Header.TextScaled = true
                Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Header.Parent = SliderInstance

                local Ico = Instance.new("ImageLabel")
                Ico.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Ico.Name = "Ico"
                Ico.Size = UDim2.new(0.08084630966186523, 0, 0.5444645881652832, 0)
                Ico.Position = UDim2.new(0.07400000095367432, 0, 0.5, 0)
                Ico.AnchorPoint = Vector2.new(0.5, 0.5)
                Ico.Image = "rbxassetid://14976968451"
                Ico.BackgroundTransparency = 1
                Ico.ImageRectSize = Vector2.new(48, 48)
                Ico.ImageRectOffset = Vector2.new(302, 388)
                Ico.BorderSizePixel = 0
                Ico.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Ico.Parent = SliderInstance

                local SliderBG = Instance.new("Frame")
                SliderBG.AnchorPoint = Vector2.new(0.5, 0.5)
                SliderBG.Name = "SliderBG"
                SliderBG.Position = UDim2.new(0.5400000214576721, 0, 0.699999988079071, 0)
                SliderBG.BorderColor3 = Color3.fromRGB(0, 0, 0)
                SliderBG.Size = UDim2.new(0.7964858412742615, 0, 0.2621496319770813, 0)
                SliderBG.BorderSizePixel = 0
                SliderBG.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
                SliderBG.Parent = SliderInstance

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(1, 0)
                UICorner.Parent = SliderBG

                local SliderProg = Instance.new("Frame")
                SliderProg.AnchorPoint = Vector2.new(0, 0.5)
                SliderProg.Name = "SliderProg"
                SliderProg.Position = UDim2.new(0, 0, 0.5, 0)
                SliderProg.BorderColor3 = Color3.fromRGB(0, 0, 0)
                SliderProg.Size = UDim2.new(0, 0, 1, 0)
                SliderProg.BorderSizePixel = 0
                SliderProg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderProg.Parent = SliderBG

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(1, 0)
                UICorner.Parent = SliderProg

                local SliderValue = Instance.new("TextLabel")
                SliderValue.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
                SliderValue.AnchorPoint = Vector2.new(0.5, 0.5)
                SliderValue.ZIndex = 3
                SliderValue.TextSize = 14
                SliderValue.Size = UDim2.new(0.17986996471881866, 0, 0.306790292263031, 0)
                SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
                SliderValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
                SliderValue.Text = "0"
                SliderValue.Name = "SliderValue"
                SliderValue.TextWrapped = true
                SliderValue.BackgroundTransparency = 1
                SliderValue.TextXAlignment = Enum.TextXAlignment.Right
                SliderValue.Position = UDim2.new(0.844724178314209, 0, 0.36868709325790405, 0)
                SliderValue.BorderSizePixel = 0
                SliderValue.TextScaled = true
                SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderValue.Parent = SliderInstance

                local dragging = false

                local function setFromAlpha(alpha)
                    alpha = math.clamp(alpha, 0, 1)
                    local value = math.floor(min + (max - min) * alpha + 0.5)
                    SliderProg.Size = UDim2.new(alpha, 0, 1, 0)
                    SliderValue.Text = tostring(value)
                    if cb then
                        cb(value)
                    end
                end

                local function updateFromInput(x)
                    local rel = (x - SliderBG.AbsolutePosition.X) / SliderBG.AbsoluteSize.X
                    setFromAlpha(rel)
                end

                -- Initialize position from norm
                setFromAlpha((norm - min) / (max - min))

                SliderBG.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        sliderInUse = true
                        dragging = true
                        updateFromInput(input.Position.X)
                    end
                end)

                UIS.InputChanged:Connect(function(input)
                    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                        updateFromInput(input.Position.X)
                    end
                end)

                UIS.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        dragging = false
                        sliderInUse = false
                    end
                end)
            end

            return instances
        end

        return channels
    end

    return sections
end

return swaghublib
