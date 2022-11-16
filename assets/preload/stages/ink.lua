function onCreate()
	-- background shit
	makeLuaSprite('floor', 'ben/floor', -1200, -600)
	makeLuaSprite('curtains', 'ben/curtains', -1200, -600)
	makeLuaSprite('stage', 'ben/stage', -1200, -600)
	makeLuaSprite('back', 'ben/wallback', -1200, -600);

	addLuaSprite('back', false)
	addLuaSprite('stage', false)
	addLuaSprite('floor', false)
	addLuaSprite('curtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end