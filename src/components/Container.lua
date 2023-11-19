local SelectionService = game:GetService('Selection')

local React = require(script.Parent.Parent.packages.React)

-----------------------------------------------------
--- Constants
local Main = script.Parent.Parent

local Components = Main.components
local SubComponents = Components["sub_components"]

---------------------------------------------------------------------
------------- Color Palettes
local Palettes = Main.palettes
--- Components
local List = require(Components.List)
local MainHolder = require(Components.MainHolder)
local Title = require(Components.Title)
local Version = require(Components.Version)
local Selection = require(Components.Selection)
local Display = require(Components.Display)
local AutoColor = require(Components.AutoColor)
local SortDisplay = require(Components.SortDisplay)
-----------------------------------------------------
--- SubComponents
local holderTemplate = require(SubComponents.HolderTemplate)
local grid = require(SubComponents.Grid)
local paletteButton = require(SubComponents.PaletteButton)
---------------------------------------------------------------------
------------- Color Picker
local CircularColorPicker = require(Components.CircularColorPicker)
local ValuesDisplay = require(Components.ValuesDisplay)

---------------------------------------------------------------------
--- Hooks
local e = React.createElement
local useState = React.useState
-----------------------------------------------------
--- Functionalities
local Functionalities = require(Main.functionalities)
local rawToColor = Functionalities.rawToColor
local formatName = Functionalities.formatName
local formatDisplay = Functionalities.formatDisplay
local setColorProperty = Functionalities.setColorProperty

return function(props)
	local hex, setHex = useState('')
	local raw, setRaw = useState('')
	local autoColorEnabled, setAutoColorEnabled = useState(true)
	local selection, setSelection = useState('Frappe')
	local display, setDisplay = useState(formatDisplay('Frape', 'Catppuccin'))
	local sortType, serSortType = useState('Brightness')

	local handle = {
		onGridClick = function(color)
			setHex(color.hex)
			setRaw(color.raw)
			--
			if not autoColorEnabled then return end
			local color3 = Color3.fromRGB(rawToColor(color.raw))
			local selectedObjects = SelectionService:Get()

			if #selectedObjects == 0 then return end
			for _, object in pairs(selectedObjects) do
				setColorProperty(object, color3)
			end
		end,

		onSortDisplayClick = function()
			serSortType(sortType == 'Brightness' and 'Darkness' or 'Brightness')
		end,

		onAutoColorToggleClick = function()
			print("clicked")
			setAutoColorEnabled(not autoColorEnabled)
		end,

		onPaletteButtonClick = function(name, package)
			if name == selection then return end
			setSelection(name)
			setDisplay(formatDisplay(name, package))
		end,

		onFocus = function(textbox)
			textbox.CursorPosition = 0
			textbox.SelectionStart = #textbox.Text + 1
		end
	}

	local elements = {}
	local listButtons = {}

	for _, package in pairs(Palettes:GetChildren()) do
		local packageName = package.Name 
		packageName = packageName ~= 'Folder' and formatName(packageName) or 'unknown'

		for key, data in pairs(package:GetChildren()) do
			if not data:IsA("ModuleScript") then continue end
			local name = formatName(data.Name)
			data = require(data);

			table.insert(listButtons, e(paletteButton, {
				packageName = packageName,
				paletteName = name,
				onClick = handle.onPaletteButtonClick
			}))

			table.insert(elements, e(holderTemplate, {
				colors = data,
				key = name,
				visible = selection == name,
				onClick = handle.onGridClick,
				sortType = sortType
			}))
		end
	end

	return React.createElement("Frame", {
	    AnchorPoint = Vector2.new(0.5, 0.5),
	    BackgroundColor3 = Color3.fromRGB(43, 43, 43),
	    BorderColor3 = Color3.fromRGB(0, 0, 0),
	    BorderSizePixel = 0,
	    Position = UDim2.fromScale(0.5, 0.5),
	    Size = UDim2.fromScale(0.9, 0.9),
	}, {
	    uICorner = React.createElement("UICorner", {
	        CornerRadius = UDim.new(0, 4),
	    }),

	    uIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint", {
	        AspectRatio = 1.7,
	    }),

	    ----------------------------------------------------
	    -- title = e(Title, {
	    -- 	title = props.pluginName or 'Color Palettes'
	    -- }),

	    version = e(Version, {
	    	version = props.version or "0.1"
	    }),
	    ----------------------------------------------------

	    ----------------------------------------------------
	    ----- Color Palettes

	    sortDisplay = e(SortDisplay, {
	    	sortType = sortType,
	    	onClick = handle.onSortDisplayClick
	    }),

	    -- autoColor = e(AutoColor, {
	    -- 	enabled = autoColorEnabled,
	    -- 	onClick = handle.onAutoColorToggleClick
	    -- }),

	    list = e(List, {
	    	Buttons = listButtons
	    }),

	    display = e(Display, {
	    	onFocus = handle.onFocus,
	    	hex = hex,
	    	raw = raw
	    }),

	    holder = e(MainHolder, {
	    	Selection = selection,
	    	Elements = elements
	    }),

	    selection = e(Selection, {
	    	display = display
	    }),

	    ----------------------------------------------------
	    ----- Color Picker

	    circularColorPicker = e(CircularColorPicker),
	    valuesDisplay = e(ValuesDisplay)
	})
end