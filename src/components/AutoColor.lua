local React = require(script.Parent.Parent.packages.React)

local enabledColor = Color3.fromRGB(64, 255, 102)
local disabledColor = Color3.fromRGB(223, 223, 223)

return function(props)
    local color3 = props.enabled and enabledColor or disabledColor

    return React.createElement("Frame", {
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 0.95,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.fromScale(0.729, 0.014),
        Size = UDim2.fromOffset(181, 24),
    }, {
        toggle = React.createElement("TextButton", {
            BackgroundColor3 = color3,
            [React.Event.Activated] = props.onClick,
            --
            FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json"),
            TextColor3 = Color3.fromRGB(0, 0, 0),
            TextSize = 14,
            TextTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.fromScale(0.754, 0),
            Size = UDim2.fromOffset(24, 24),
        }, {
            uICorner = React.createElement("UICorner", {
                CornerRadius = UDim.new(0, 4),
            }),
        }),

        textLabel = React.createElement("TextLabel", {
            FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
            Text = "Auto SetColor:",
            TextColor3 = Color3.fromRGB(236, 236, 236),
            TextScaled = true,
            TextSize = 14,
            TextWrapped = true,
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.fromScale(0.28, 0.5),
            Size = UDim2.fromScale(0.561, 0.5),
        }),

        uIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint", {
            AspectRatio = 5.69,
        }),
    })
end