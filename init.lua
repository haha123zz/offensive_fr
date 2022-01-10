local function load(path)
    if (typeof(path) == "string") then
        local success, code = pcall(game.HttpGet, game, "https://raw.githubusercontent.com/haha123zz/offensive_fr/main/"..path..".lua")

        if (success) then
            return loadstring(code)()
        end
    end
end

local success, LinoriaLibrary = pcall(game.HttpGet, game, "https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/UI%20Library%202.0.lua")
if (success) then
    getgenv().LinoriaLibrary = LinoriaLibrary
    local AntiShield = load("Modules/AntiShield")

    local Window = LinoriaLibrary:CreateWindow("Offensive Rewrite")
    local CombatTab = Window:AddTab("Combat")
    local ShieldTabbox = CombatTab:AddLeftTabbox("Shield")
    local ShieldBlatant = ShieldTabbox:AddTab("Legit")

    ShieldBlatant:AddToggle('Anti shield', {Text = "Anti shield", Default = AntiShield.On}):OnChanged(function(val)
        print(val)
    end)
end
