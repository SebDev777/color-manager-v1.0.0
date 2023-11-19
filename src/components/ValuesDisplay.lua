local React = require(script.Parent.Parent.packages.React)
local e = React.createElement

local color_picker_components = script.Parent["color_picker_components"]

local RValue = require(color_picker_components.RValue)
local GValue = require(color_picker_components.GValue)
local BValue = require(color_picker_components.BValue)
local HexValue = require(color_picker_components.HexValue)
local HValue = require(color_picker_components.HValue)
local SValue = require(color_picker_components.SValue)
local VValue = require(color_picker_components.VValue)

return function(props)
    return React.createElement("Frame", {
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        Position = UDim2.fromScale(0.64, 0.5),
        Size = UDim2.fromScale(0.36, 1),
    }, {
        uIListLayout = React.createElement("UIListLayout", {
            Padding = UDim.new(0, 6),
            SortOrder = Enum.SortOrder.Name,
            VerticalAlignment = Enum.VerticalAlignment.Center,
        }),

        uIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint", {
            AspectRatio = 0.676,
        }),

        ["00rgbTitle"] = React.createElement("TextLabel", {
            FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
            Text = "RGB",
            TextColor3 = Color3.fromRGB(186, 194, 222),
            TextScaled = true,
            TextSize = 14,
            TextWrapped = true,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.fromScale(0.0426, 0),
            Size = UDim2.fromScale(0.957, 0.0608),
        }, {
            uITextSizeConstraint = React.createElement("UITextSizeConstraint", {
                MaxTextSize = 14,
            }),
        }),

        ["0RValue"] = e(RValue),
        ["1GValue"] = e(GValue),
        ["2BValue"] = e(BValue),
        ["3HexValue"] = e(HexValue),


        ["4hsvTitle"] = React.createElement("TextLabel", {
            FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
            Text = "HSV",
            TextColor3 = Color3.fromRGB(186, 194, 222),
            TextScaled = true,
            TextSize = 14,
            TextWrapped = true,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.fromScale(0.0426, 0),
            Size = UDim2.fromScale(0.957, 0.0608),
        }, {
            uITextSizeConstraint = React.createElement("UITextSizeConstraint", {
                MaxTextSize = 14,
            }),
        }),

        ["5HValue"] = e(HValue),
        ["6SValue"] = e(SValue),
        ["7VValue"] = e(VValue),
    })
end