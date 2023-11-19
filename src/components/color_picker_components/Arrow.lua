local React = require(script.Parent.Parent.Parent.packages.React)

return function(props)
	return React.createElement("ImageLabel", {
		Position = UDim2.fromScale(props.XPosition, 1.27),
		--
	    Image = "rbxassetid://15391834167",
	    AnchorPoint = Vector2.new(0.5, 0.5),
	    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	    BackgroundTransparency = 1,
	    BorderColor3 = Color3.fromRGB(0, 0, 0),
	    BorderSizePixel = 0,
	    Size = UDim2.fromScale(0.107, 0.748),
	}, {
	    uIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint"),
	})
end