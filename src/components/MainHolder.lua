local React = require(script.Parent.Parent.packages.React)
local e = React.createElement

local sub_components = script.Parent["sub_components"]

local grid = require(sub_components.Grid)
local holderTemplate = require(sub_components.HolderTemplate)
local Palettes = script.Parent.Parent.palettes

return function(props)
	return React.createElement("Frame", {
	    AutomaticSize = Enum.AutomaticSize.Y,
	    BackgroundColor3 = Color3.fromRGB(79, 79, 79),
	    BorderColor3 = Color3.fromRGB(0, 0, 0),
	    BorderSizePixel = 0,
	    ClipsDescendants = true,
	    Position = UDim2.fromScale(0.364, 0.102),
	    Size = UDim2.fromScale(0.25, 0.665),
	}, {
	    uICorner = React.createElement("UICorner", {
	        CornerRadius = UDim.new(0, 4),
	    }),
	}, props.Elements)
end