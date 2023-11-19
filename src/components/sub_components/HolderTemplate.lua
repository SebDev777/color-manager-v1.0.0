local React = require(script.Parent.Parent.Parent.packages.React)
local e = React.createElement

local grid = require(script.Parent.Grid)

local function rawToColor(raw)
    local sep = string.split(raw, ", ")
    return table.unpack(sep)
end

return function(props)
	local grids = {}
	local colors = {}

	local sortType = props.sortType

	for _, color in pairs(props.colors) do
		local _, _, value = Color3.fromRGB(rawToColor(color.raw)):ToHSV()

		table.insert(grids, React.createElement(grid, {
			onClick = props.onClick, 
			color = color,
			name = tostring(sortType == 'Brightness' and tostring(1/value) or value)
		}))
	end

    -- for name, color in pairs(props.colors) do
    -- 	local _, _, value = Color3.fromRGB(rawToColor(color.raw)):ToHSV()
	-- 	table.insert(colors, {
	-- 		key = name,
	-- 		data = color,
	-- 		value = value
	-- 	})
    -- end

    -- table.sort(colors, function(a, b)
    -- 	return a.value > b.value
    -- end)

    -- print(colors)

    -- for _, v in pairs(colors) do
    -- 	table.insert(grids, React.createElement(grid, {
	-- 		onClick = props.onClick, 
	-- 		color = v.data,
	-- 	}))
    -- end

    --print(colors)
    warn(props)
    return React.createElement("ScrollingFrame", {
    	Visible = props.visible,
    	--
	    AutomaticCanvasSize = Enum.AutomaticSize.Y,
	    CanvasSize = UDim2.new(),
	    ScrollBarThickness = 4,
	    AnchorPoint = Vector2.new(0.5, 0.5),
	    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	    BackgroundTransparency = 0.95,
	    BorderColor3 = Color3.fromRGB(0, 0, 0),
	    BorderSizePixel = 0,
	    Position = UDim2.fromScale(0.5, 0.5),
	    Size = UDim2.fromScale(1, 1),
	}, {
	    uIGridLayout = React.createElement("UIGridLayout", {
	        CellPadding = UDim2.fromScale(0.025, 0.025),
	        CellSize = UDim2.fromScale(0.2, 0.1),
	        HorizontalAlignment = Enum.HorizontalAlignment.Center,
	    }),
	}, grids)
end