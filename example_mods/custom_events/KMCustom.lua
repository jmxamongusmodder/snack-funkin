--[[function onUpdate(elapsed)
	misses = getProperty('songMisses')
	if misses > 1 then
		setProperty('health', 0)
	end
end --]]

function onEvent(name, value1)
	function onUpdate(elapsed)
		if name == "Kill_On_Miss" then
			misses = getProperty('songMisses')
			if misses >= tonumber(value1) then
				setProperty('health', 0)
			end
		end
	end
end