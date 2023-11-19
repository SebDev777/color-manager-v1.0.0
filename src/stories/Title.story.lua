local React = require(script.Parent.Parent.packages.React)
local ReactRoblox = require(script.Parent.Parent.packages.ReactRoblox)

local e = React.createElement
local Title = require(script.Parent.Parent.components.Title)

return {
    summary = "Color Palette icon & title",
    react = React,
    reactRoblox = ReactRoblox,
    story = function(props)
        return e(Title, {})
    end
}