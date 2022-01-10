local AntiShield = {}
AntiShield.On = false 

function AntiShield:Toggle(val)
    AntiShield.On = val or not AntiShield.On
end

local oldIndex 
oldIndex = hookmetamethod(game, "__index", function(i, v)
    if (tostring(i) == "Blocking" and v == "Value" and AntiShield.On) then
        getgenv().LinoriaLibrary:Notify('Spoofing '..i.Parent.Name..' shield.')
        return false 
    end

    return oldIndex(i, v)
end)