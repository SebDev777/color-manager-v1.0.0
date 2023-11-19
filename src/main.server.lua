local Packages = script.Parent:WaitForChild("packages")
--
local React = require(Packages:WaitForChild("React"))
local ReactRoblox = require(Packages:WaitForChild("ReactRoblox"))
--
local e = React.createElement

local PluginConfig = require(script.Parent:WaitForChild("PluginConfig"))
local ToolbarConfig = PluginConfig.toolbar
local WidgetConfig = PluginConfig.widget

local PluginName = PluginConfig.name
local PluginNameWithVersion = `{PluginName} v{PluginConfig.version}`
local Toolbar = plugin:CreateToolbar(PluginNameWithVersion)
local Button = Toolbar:CreateButton(ToolbarConfig.name, ToolbarConfig.description, ToolbarConfig.image)

local DockWidgetGui = plugin:CreateDockWidgetPluginGui(PluginNameWithVersion, WidgetConfig)
DockWidgetGui.Name = PluginNameWithVersion
DockWidgetGui.Title = PluginNameWithVersion

Button.Click:Connect(function()
	DockWidgetGui.Enabled = not DockWidgetGui.Enabled
end)

local Container = require(script.Parent.components.Container)

local function App()
    return e("Frame", {
        Size = UDim2.fromScale(1, 1),
        BackgroundColor3 = Color3.fromRGB(43, 43, 43),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.fromScale(0.5, 0.5)
    }, {
        Container = e(Container, {
            pluginName = PluginNameWithVersion,
            version = PluginConfig.version
        })
    })
end

local element = React.createElement(App)

local root = ReactRoblox.createRoot(Instance.new("ScreenGui"))
root:render(ReactRoblox.createPortal(element, DockWidgetGui))