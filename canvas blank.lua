scriptId = 'com.theburningmonk.canvasblank'

function onForegroundWindowChange(app, title)
	myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
	
	canvasBlank = "Canvas Blank!"
	if (string.sub(title, 1, string.len(canvasBlank)) == canvasBlank) then
		myo.controlMouse(true)
		return true
	else 
		return false
	end
end

function onPoseEdge(pose, edge)
	myo.debug("onPoseEdge: " .. pose .. ", " .. edge)
	
	if (edge == "on") then
		if (pose == "fist") then
			myo.mouse("left", "click") -- shoot
		elseif (pose == "fingersSpread") then
			myo.centerMousePosition()  -- reset pos
		end
	end
end