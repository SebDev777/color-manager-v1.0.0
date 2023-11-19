local React = require(script.Parent.Parent.packages.React)

return function(props)
	return React.createElement("TextLabel", {
		Text = props.display or 'N/A',
		--
	    FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
	    TextColor3 = Color3.fromRGB(255, 255, 255),
	    TextScaled = true,
	    TextSize = 14,
	    TextWrapped = true,
	    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	    BackgroundTransparency = 1,
	    BorderColor3 = Color3.fromRGB(0, 0, 0),
	    BorderSizePixel = 0,
	    Position = UDim2.fromScale(0.35, 0.0177),
	    Size = UDim2.fromScale(0.276, 0.0578),
	})
end