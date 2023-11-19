local React = require(script.Parent.Parent.packages.React)

local darkColor = Color3.fromRGB(67, 67, 67)
local brightColor = Color3.fromRGB(236, 236, 236)

return function(props)
    local sortType = props.sortType

    return React.createElement("Frame", {
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 0.95,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.fromScale(0.388, 0.794),
        Size = UDim2.fromScale(0.198, 0.0867),
    }, {
        toggle = React.createElement("TextButton", {
            Text = `By {props.sortType}`,
            BackgroundColor3 = sortType == 'Darkness' and darkColor or brightColor,
            TextColor3 = sortType == 'Darkness' and brightColor or darkColor, 
            [React.Event.Activated] = props.onClick,
            --
            FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
            TextScaled = true,
            TextSize = 14,
            TextWrapped = true,
            AnchorPoint = Vector2.new(0, 0.5),
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.fromScale(0.4, 0.5),
            Size = UDim2.fromScale(0.55, 0.8),
        }, {
            uICorner = React.createElement("UICorner", {
                CornerRadius = UDim.new(0, 4),
            }),
        }),

        textLabel = React.createElement("TextLabel", {
            FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
            Text = "Sort:",
            TextColor3 = Color3.fromRGB(236, 236, 236),
            TextScaled = true,
            TextSize = 14,
            TextWrapped = true,
            TextXAlignment = Enum.TextXAlignment.Left,
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.fromScale(0.28, 0.5),
            Size = UDim2.fromScale(0.45, 0.5),
        }),
    })
end