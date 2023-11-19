local React = require(script.Parent.Parent.packages.React)
local e = React.createElement

local function Version(props)
    return React.createElement("TextLabel", {
        Text = `Version: {props.version}`,
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
        Position = UDim2.fromScale(0.857, 0.951),
        Size = UDim2.fromScale(0.143, 0.0377),
    })
end

return Version