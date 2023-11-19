local React = require(script.Parent.Parent.packages.React)
local e = React.createElement

local sub_components = script.Parent["sub_components"]
local PaletteButton = require(sub_components.PaletteButton)

return function(props)
    return React.createElement("ScrollingFrame", {
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        CanvasSize = UDim2.new(),
        ScrollBarThickness = 6,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.fromScale(0.0336, 0.665),
        Selectable = false,
        Size = UDim2.fromScale(0.275, 0.295),
        SelectionGroup = false,
    }, {
        uIGridLayout = React.createElement("UIGridLayout", {
            CellPadding = UDim2.new(0, 5, 0.05, 0),
            CellSize = UDim2.fromScale(0.8, 0.2),
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
            SortOrder = Enum.SortOrder.LayoutOrder,
        }),
    }, props.Buttons)
end