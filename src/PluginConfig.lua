local toolbar = {
	name = "Color Palettes",
	description = "Hide/Show color palettes.",
	image = "rbxassetid://15364512515",
}

local widget = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Float,
	true, -- initial enabled
	false, -- dont override the previous enabled state
	550, -- def width
	350, -- def height
	550, -- min width (optional)
	350 -- min height (optional)
)

return {
	name = "Color Palettes",
	version = '1.0.0',
	toolbar = toolbar,
	widget = widget
}