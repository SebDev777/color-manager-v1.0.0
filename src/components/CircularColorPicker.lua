local React = require(script.Parent.Parent.packages.React)

return function(props)
	return React.createElement("ImageLabel", {
	    Image = "rbxassetid://2849458409",
	    AnchorPoint = Vector2.new(0.5, 0.5),
	    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	    BackgroundTransparency = 1,
	    Position = UDim2.fromScale(0.186, 0.322),
	    Size = UDim2.fromScale(0.334, 0.601),
	}, {
	    select = React.createElement("Frame", {
	        AnchorPoint = Vector2.new(0.5, 0.5),
	        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	        BackgroundTransparency = 1,
	        Position = UDim2.fromScale(0.5, 0.5),
	        Size = UDim2.fromOffset(5, 5),
	    }, {
	        uICorner = React.createElement("UICorner", {
	            CornerRadius = UDim.new(0.5, 0),
	        }),

	        uIStroke = React.createElement("UIStroke", {
	            Thickness = 2,
	        }),

	        uIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint"),
	    }),

	    uIAspectRatioConstraint1 = React.createElement("UIAspectRatioConstraint", {
	        AspectRatio = 1.01,
	    }),
	})
end