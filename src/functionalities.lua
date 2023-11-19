local setColorProperty do
	local textColor3Targets = {
		"TextLabel",
		"TextButton",
		"TextBox"
	}

	local BackgroundColor3Targets = {
		"Frame",
		"ScrollingFrame",
		"ViewportFrame",
		"ImageLabel"
	}

	local ColorSequenceTargets = {
		"UIGradient"
	}

	setColorProperty = function(object, color3)
		if table.find(textColor3Targets, object.ClassName) then
			object.TextColor3 = color3
		end

		if table.find(BackgroundColor3Targets, object.ClassName) then
			object.BackgroundColor3 = color3
		end

		if table.find(ColorSequenceTargets, object.ClassName) then
			local keypoints = object.Color.Keypoints
			if #keypoints <= 2 and (keypoints[1].Value == keypoints[2].Value) then
				local newColor = ColorSequence.new({
					ColorSequenceKeypoint.new(0, color3),
					ColorSequenceKeypoint.new(1, color3)
				})
				object.Color = newColor
			else
				-- Check for each keypoints 
				--print(keypoints)
				local areTheSame = true
				local colorFound = nil
				local timeStamps = {}

				for ind, keypoint in pairs(keypoints) do
					local value = keypoint.Value
					local time = keypoint.Time

					if value == Color3.new(1, 1, 1) then
						--print('is white?')
					else
						if not colorFound then
							colorFound = value
							table.insert(timeStamps, {
								key = ind,
								time = time
							})
						else
							if colorFound ~= value then
								areTheSame = false
								break
							else
								table.insert(timeStamps, {
									key = ind,
									time = time
								})
							end
						end
					end
				end

				if areTheSame then
					--print('target color: ', colorFound)
					for _, data in pairs(timeStamps) do
						keypoints[data.key] = ColorSequenceKeypoint.new(data.time, color3)
					end

					object.Color = ColorSequence.new(keypoints)
				else
					--print('no same color found')
				end
			end
		end
	end
end

rawToColor = function(raw)
	    local sep = string.split(raw, ", ")
	    return table.unpack(sep)
	end

formatName = function(s)
	local start = string.sub(s, 1, 1):upper()
	local ending = string.sub(s, 2, #s):lower()
	return start .. ending
end

formatDisplay = function(name, package)
	return `Current: {name} ~ @{package}`
end

return {
	rawToColor = rawToColor,
	formatName = formatName,
	formatDisplay = formatDisplay,
	setColorProperty = setColorProperty
}