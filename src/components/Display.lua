local React = require(script.Parent.Parent.packages.React)
local e = React.createElement
local useRef = React.useRef

local HexDisplay = require(script.Parent["sub_components"].HexDisplay)
local RawDisplay = require(script.Parent["sub_components"].RawDisplay)

local Functionalities = require(script.Parent.Parent.functionalities)
local rawToColor = Functionalities.rawToColor

return function(props)
	local color3 = Color3.fromRGB(rawToColor(props.raw))
	local _, _, val = color3:ToHSV()
	local transparency = (val == 0 and 0.95) or (val >= 0.5 and val <= 0.6) and 0.3 or (val >= 0.6 and 0.95 or val)

	return React.createElement("Frame", {
		BackgroundTransparency = transparency,
		--
	    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	    BorderColor3 = Color3.fromRGB(0, 0, 0),
	    BorderSizePixel = 0,
	    Position = UDim2.fromScale(0.352, 0.888),
	    Size = UDim2.fromScale(0.262, 0.101),
	}, {
		Hex = e(HexDisplay, {
			onFocus = props.onFocus,
			hex = props.hex, 
			color3 = color3
		}),

		Raw = e(RawDisplay, {
			onFocus = props.onFocus,
			raw = props.raw, 
			color3 = color3
		}),

		uIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint", {
	        AspectRatio = 5.69,
	    })
	})
end