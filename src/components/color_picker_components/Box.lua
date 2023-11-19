local React = require(script.Parent.Parent.Parent.packages.React)

return function(props)
	return React.createElement("TextBox", {
		Text = tostring(props.value),
		--
        FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json"),
        PlaceholderColor3 = Color3.fromRGB(186, 194, 222),
        TextColor3 = Color3.fromRGB(186, 194, 222),
        TextSize = 14,
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.fromRGB(24, 24, 37),
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.fromScale(0.892, 0.466),
        Size = UDim2.fromScale(0.185, 0.598),
    }, {
        uIStroke = React.createElement("UIStroke", {
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
            Color = Color3.fromRGB(255, 255, 255),
        }),
    })
end