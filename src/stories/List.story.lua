local React = require(script.Parent.Parent.packages.React)
local ReactRoblox = require(script.Parent.Parent.packages.ReactRoblox)

local e = React.createElement
local List = require(script.Parent.Parent.components.List)

return {
    summary = "Color Palette icon & title",
    react = React,
    reactRoblox = ReactRoblox,
    story = function(props)
        return e(List, {})
    end
}