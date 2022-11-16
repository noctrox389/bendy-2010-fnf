--Code for the 2nd lua that is in assets/data/your song:
function onCreatePost()
     luaDebugMode = true
    initLuaShader("old")

    makeLuaSprite("shaderImage")
    makeGraphic("shaderImage", screenWidth, screenHeight)

    setSpriteShader("shaderImage", "old")

    addHaxeLibrary("ShaderFilter", "openfl.filters")
    runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);
        game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);
    ]])
end

function onUpdate(elapsed)
    setShaderFloat("shaderImage", "iTime", os.clock())
end