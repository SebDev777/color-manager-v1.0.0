local React = require(script.Parent.Parent.packages.React)
local e = React.createElement

return function(props)
    return React.createElement("Frame", {
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.fromScale(0.00529, 0),
        Size = UDim2.fromOffset(115, 78),
    }, {
        imageLabel = React.createElement("ImageLabel", {
            Image = "rbxassetid://15364512515",
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.fromOffset(75, 75),
        }, {
            textLabel = React.createElement("TextLabel", {
                Text = 'Color Palettes',
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
                Position = UDim2.fromScale(0.5, 0.712),
                Size = UDim2.fromScale(0.9, 0.477),
            }, {
                uIGradient = React.createElement("UIGradient", {
                    Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 97, 97)),
                        ColorSequenceKeypoint.new(0.301, Color3.fromRGB(255, 210, 131)),
                        ColorSequenceKeypoint.new(0.526, Color3.fromRGB(200, 255, 199)),
                        ColorSequenceKeypoint.new(0.789, Color3.fromRGB(219, 251, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(226, 212, 255)),
                    }),
                    Rotation = -22,
                }),

                uIStroke = React.createElement("UIStroke"),
            }),
        }),
    })
end