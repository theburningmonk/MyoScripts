scriptId = 'com.theburningmonk.thunder-cow'

function onForegroundWindowChange(app, title)
	myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
	
	thunderCow = "Thunder Cow"
	return string.sub(title, 1, string.len(thunderCow)) == thunderCow
end

function onPoseEdge(pose, edge)
	myo.debug("onPoseEdge: " .. pose .. ", " .. edge)
	
	if (edge == "on") then
		if (pose == "fist") then
			myo.debug("backtick down")
			myo.keyboard("backtick", "down")
		elseif (pose == "fingersSpread") then
			myo.debug("backtick up")
			myo.keyboard("backtick", "up")
		elseif (pose == "waveIn") then
			myo.keyboard("left_arrow", "press")
		elseif (pose == "waveOut") then
			myo.keyboard("right_arrow", "press")
		end
	end
end