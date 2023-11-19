local React = require(script.Parent.Parent.packages.React)
local ReactRoblox = require(script.Parent.Parent.packages.ReactRoblox)

local e = React.createElement
local Version = require(script.Parent.Parent.components.Version)

return {
    summary = "A simple counter that increments every second",
    react = React,
    reactRoblox = ReactRoblox,
    story = function(props)
        return e(Version, {
            version = "0.1",
        })
    end
}