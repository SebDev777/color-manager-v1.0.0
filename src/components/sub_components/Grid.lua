local React = require(script.Parent.Parent.Parent.packages.React)

local function rawToColor(raw)
    local sep = string.split(raw, ", ")
    return table.unpack(sep)
end

return function(props)
    local r,g,b = rawToColor(props.color.raw)

    return React.createElement("TextButton", {
        Name = props.name,
        Text = "",
        BackgroundColor3 = Color3.fromRGB(r,g,b),
        --
        [React.Event.Activated] = function()
            props.onClick(props.color)
        end,
        Text = "",
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.fromScale(0.451, 0.233),
        Size = UDim2.fromOffset(35, 35),
    }, {
        uICorner = React.createElement("UICorner", {
            CornerRadius = UDim.new(0, 4),
        }),
    })
end