local React = require(script.Parent.Parent.Parent.packages.React)
local e = React.createElement

local Box = require(script.Parent.Box)
local Arrow = require(script.Parent.Arrow)

return function(props)
	return React.createElement("Frame", {
	    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	    BackgroundTransparency = 0.95,
	    BorderColor3 = Color3.fromRGB(0, 0, 0),
	    BorderSizePixel = 0,
	    Position = UDim2.fromScale(-4.87e-07, 0.0879),
	    Size = UDim2.fromScale(0.995, 0.0845),
	}, {
	    textLabel = React.createElement("TextLabel", {
	        FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
	        Text = "R:",
	        TextColor3 = Color3.fromRGB(186, 194, 222),
	        TextScaled = true,
	        TextSize = 14,
	        TextWrapped = true,
	        TextXAlignment = Enum.TextXAlignment.Left,
	        AnchorPoint = Vector2.new(0, 0.5),
	        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	        BackgroundTransparency = 1,
	        BorderColor3 = Color3.fromRGB(0, 0, 0),
	        BorderSizePixel = 0,
	        Position = UDim2.fromScale(0.043, 0.5),
	        Size = UDim2.fromScale(0.963, 0.72),
	    }, {
	        uITextSizeConstraint = React.createElement("UITextSizeConstraint", {
	            MaxTextSize = 14,
	        }),
	    }),

	    frame = React.createElement("Frame", {
	        AnchorPoint = Vector2.new(0.5, 0.5),
	        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	        BorderColor3 = Color3.fromRGB(0, 0, 0),
	        BorderSizePixel = 0,
	        Position = UDim2.fromScale(0.458, 0.5),
	        Size = UDim2.fromScale(0.605, 0.65),
	    }, {
	        uIGradient = React.createElement("UIGradient", {
	            Color = ColorSequence.new({
	                ColorSequenceKeypoint.new(0, Color3.fromRGB(243, 243, 243)),
	                ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
	            }),
	        }),

	        uICorner = React.createElement("UICorner", {
	            CornerRadius = UDim.new(0, 4),
	        }),

	        arrow = e(Arrow, {
		    	xPosition = 1,
		    })
	    }),

	    box = e(Box, {
	    	value = 255,
	    }),

	    uIAspectRatioConstraint1 = React.createElement("UIAspectRatioConstraint", {
	        AspectRatio = 7.48,
	    }),
	})
end