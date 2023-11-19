local React = require(script.Parent.Parent.Parent.packages.React)
local e = React.createElement


-- something -> Something
-- SomEthiNg -> Something
return function(props)
    print(props.paletteName)
    return React.createElement("TextButton", {
        Name = props.paletteName,
        Text = "",
        [React.Event.Activated] = function()
            props.onClick(props.paletteName, props.packageName)
        end,
        --
        Text = "",
        BackgroundColor3 = Color3.fromRGB(79, 79, 79),
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Selectable = false,
        Size = UDim2.fromOffset(100, 100),
    }, {
        uICorner = React.createElement("UICorner", {
            CornerRadius = UDim.new(0, 4),
        }),

        display = React.createElement("TextLabel", {
            Text = props.paletteName,
            --
            FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
            TextColor3 = Color3.fromRGB(255, 255, 255),
            TextScaled = true,
            TextSize = 14,
            TextWrapped = true,
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.fromScale(0.95, 0.95),
        }, {
            uIStroke = React.createElement("UIStroke"),
        }),
    }) 
end