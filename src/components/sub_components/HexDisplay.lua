local React = require(script.Parent.Parent.Parent.packages.React)
local useRef = React.useRef

return function(props)
    local hexRef = useRef()

    return React.createElement("TextBox", {
        ref = hexRef,
        Text = props.hex or 'nothing',
        TextColor3 = props.color3,
        [React.Event.Focused] = function()
            props.onFocus(hexRef:getValue())
        end,
        --
        ClearTextOnFocus = false,
        FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
        PlaceholderColor3 = Color3.fromRGB(166, 166, 166),
        PlaceholderText = "Hex (#ffff)",
        TextEditable = false,
        TextScaled = true,
        TextSize = 14,
        TextWrapped = true,
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.fromScale(0.2, 0.5),
        Size = UDim2.fromScale(0.363, 0.688),
    })
end