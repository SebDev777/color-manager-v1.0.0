local React = require(script.Parent.Parent.Parent.packages.React)
local useRef = React.useRef

return function(props)
    local rawRef = useRef()

    return React.createElement("TextBox", {
        ref = rawRef,
        Text = props.raw or 'nothing',
        TextColor3 = props.color3,
        [React.Event.Focused] = function()
            props.onFocus(hexRef:getValue())
        end,
        --
        ClearTextOnFocus = false,
        FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
        PlaceholderColor3 = Color3.fromRGB(166, 166, 166),
        PlaceholderText = "Raw (rgb)",
        TextEditable = false,
        TextScaled = true,
        TextSize = 14,
        TextWrapped = true,
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.fromScale(0.8, 0.5),
        Size = UDim2.fromScale(0.363, 0.688),
    })
end