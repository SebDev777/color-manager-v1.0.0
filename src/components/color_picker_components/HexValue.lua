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
	        Text = "Hex:",
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

	    box = e(Box, {
	    	value = "#ffff",
	    }),

	    uIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint", {
	        AspectRatio = 7.48,
	    }),
	})
end