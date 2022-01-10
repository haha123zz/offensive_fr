local function load(path)
    if (typeof(path) == "string") then
        local success, code = pcall(game.HttpGet, game, "https://raw.githubusercontent.com/haha123zz/offensive_fr/master/"..path..".lua")

        if (success) then
            return loadstring(code)()
        end
    end
end


