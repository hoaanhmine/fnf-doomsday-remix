-- Stage Stuff
function onCreate()
	makeLuaSprite('sus', 'mcm/stages/sus/sus', -700,-400);
	addLuaSprite('sus', false);
end

-- Camera Stuff
function onUpdate()
	if mustHitSection then
		triggerEvent('Camera Follow Pos', '850', '550')
		doTweenZoom('asf', 'camGame', 1.1, 1, 'cubeOut')
		setProperty('defaultCamZoom', 1.1)
	else
		triggerEvent('Camera Follow Pos', '420', '350')
		doTweenZoom('asf', 'camGame', 0.85, 1, 'cubeOut')
		setProperty('defaultCamZoom', 0.85)
	end
end