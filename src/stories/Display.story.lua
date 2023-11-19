local React = require(script.Parent.Parent.packages.React)
local ReactRoblox = require(script.Parent.Parent.packages.ReactRoblox)

local e = React.createElement
local Display = require(script.Parent.Parent.components.Display)

local controls = {
    raw = '30, 30, 30',
    hex = '#91ff78'
}

return {
    controls = controls,
    summary = "Display for grid values",
    react = React,
    reactRoblox = ReactRoblox,
    story = function(props)
        return e(Display, {
            raw = controls.raw,
            hex = controls.hex
        })
    end
}